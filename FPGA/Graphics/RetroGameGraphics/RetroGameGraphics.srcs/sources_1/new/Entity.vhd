
----------------------------------------------------------------------------------
-- Company:         -
-- Engineer:        Martijn Kamphof
-- 
-- Create Date:     13.03.2023 17:00:34
-- Design Name: 
-- Module Name:     Entitys - Behavioral
-- Project Name:    Retro Game
-- Target Devices:  Digilent Basys 3
-- Tool Versions:   Vivado 2022.1
-- Description: 
-- 
-- Dependencies: 
-- 
-- Revision:
-- Revision 0.01:    File Created
-- Additional Comments:
-- All entities and tiles RGB outputs will be controlled by the CollorOutputSelector
----------------------------------------------------------------------------------

LIBRARY IEEE;
USE IEEE.STD_LOGIC_1164.ALL;
USE IEEE.NUMERIC_STD.ALL;

ENTITY Entitys IS
	GENERIC
	(
		-- VGA, start visible part of screen
		HORIZONTAL_COUNT_VISIBLE_START : INTEGER := 144;
		VERTICAL_COUNT_VISIBLE_START   : INTEGER := 31;
		-- total visible screen
		SCREAN_WIDTH                   : INTEGER := 640;
		SCREAN_HIGHT                   : INTEGER := 480;
		-- ENTITY SIZE
		ENTITY_X_BIT_SIZE              : INTEGER := 8;
		ENTITY_Y_BIT_SIZE              : INTEGER := 8;
		ENTITY_NUMMER_BIT_SIZE         : INTEGER := 8;
		-- PIXEL COUNT
		ENTITY_PIXELS_HIGHT_AND_WITH   : INTEGER := 16;
		PLAYFIELD_PIXELS_START_OFFSET  : INTEGER := 16 + 16 + 8;
		-- Offsets
		OFFSET_CLK_TO_VGA              : INTEGER := 3;
		-- ROM
		OFFSET_CLK_TO_ROM              : INTEGER := 2;
		-- vga
		PIXEL_SCALING                  : INTEGER := 2;
		-- EntityPixels
		ENTITY_ROM_ADRESS_BIT_SIZE     : INTEGER := 7;
		INDEX_BIT_SIZE                 : INTEGER := 3;
		PALLET_BIT_SIZE                : INTEGER := 11;
		RGB_BIT_AMOUNT                 : INTEGER := 12;
		ENTITY_AMOUNT                  : INTEGER := 48
	);
	PORT (
		debugIn        : IN  unsigned(15 DOWNTO 0); -- Debug switches
		debugOut       : OUT unsigned(15 DOWNTO 0); -- Debug Leds
		-- inputs
		reset, clk     : IN  STD_LOGIC;
		-- x, y position, entity nuber
		dataVector     : IN  unsigned(ENTITY_AMOUNT * (ENTITY_X_BIT_SIZE + ENTITY_Y_BIT_SIZE + ENTITY_NUMMER_BIT_SIZE) - 1 DOWNTO 0);
		-- VGA module connections
		Xcount, Ycount : IN  unsigned(9 DOWNTO 0); -- VGA current pixel number todo: add ofset
		RGBOut         : OUT unsigned (RGB_BIT_AMOUNT - 1 DOWNTO 0)
	);
END Entitys;

ARCHITECTURE Behavioral OF Entitys IS
	SIGNAL XVGA          : unsigned(9 DOWNTO 0);                                                                                             -- VGA current pixel number todo: add ofset
	SIGNAL YVGA          : unsigned(9 DOWNTO 0);                                                                                             -- VGA current pixel number todo: add ofset

	-- ROM block entity
	--	SIGNAL sEntityAdress   : unsigned(ENTITY_AMOUNT * (ENTITY_ROM_ADRESS_BIT_SIZE) - 1 DOWNTO 0);  -- RGB value for tile -- (OTHERS => '1') is transparrent pixel
	SIGNAL sEntityAdress : unsigned(((ENTITY_AMOUNT * (ENTITY_ROM_ADRESS_BIT_SIZE + 1)) - 1) DOWNTO ((1 - 1) * ENTITY_ROM_ADRESS_BIT_SIZE)); -- RGB value for tile -- (OTHERS => '1') is transparrent pixel
	--SIGNAL sDebugOut       : unsigned(15 DOWNTO 0); -- Debug Leds

	-- todo generate
	--todo generate al 48
	COMPONENT EntityPixels IS
		GENERIC
		(
			-- VGA, start visible part of screen
			HORIZONTAL_COUNT_VISIBLE_START : INTEGER := 144;
			VERTICAL_COUNT_VISIBLE_START   : INTEGER := 31;
			-- ENTITY SIZE
			ENTITY_X_BIT_SIZE              : INTEGER := 8;
			ENTITY_Y_BIT_SIZE              : INTEGER := 8;
			ENTITY_NUMMER_BIT_SIZE         : INTEGER := 8;
			-- PIXEL COUNT
			ENTITY_PIXELS_HIGHT_AND_WITH   : INTEGER := 16;
			PLAYFIELD_PIXELS_START_OFFSET  : INTEGER := 16 + 16 + 8;
			-- Offsets
			OFFSET_CLK_TO_VGA              : INTEGER := 3;
			-- ROM
			OFFSET_CLK_TO_ROM              : INTEGER := 2;
			-- vga
			PIXEL_SCALING                  : INTEGER := 2;
			-- EntityPixels
			ENTITY_ROM_ADRESS_BIT_SIZE     : INTEGER := 7
		);
		PORT (
			debugIn        : IN  unsigned(15 DOWNTO 0); -- Debug switches
			-- inputs
			reset, clk     : IN  STD_LOGIC;
			-- x, y position, entity nuber
			dataVector     : IN  unsigned((ENTITY_X_BIT_SIZE + ENTITY_Y_BIT_SIZE + ENTITY_NUMMER_BIT_SIZE) - 1 DOWNTO 0);
			-- VGA module connections
			Xcount, Ycount : IN  unsigned(9 DOWNTO 0);                         -- VGA current pixel number todo: add ofset
			entityAdress   : OUT unsigned(ENTITY_ROM_ADRESS_BIT_SIZE DOWNTO 0) -- RGB value for tile -- (OTHERS => '1') is transparrent pixel
		);
	END COMPONENT;
	COMPONENT EntityCOEAdressSelector IS
		GENERIC
		(
			ENTITY_AMOUNT              : INTEGER := ENTITY_AMOUNT;
			Entity_ROM_ADRESS_BIT_SIZE : INTEGER := Entity_ROM_ADRESS_BIT_SIZE;
			INDEX_BIT_SIZE             : INTEGER := INDEX_BIT_SIZE;
			PALLET_BIT_SIZE            : INTEGER := PALLET_BIT_SIZE;
			RGB_BIT_AMOUNT             : INTEGER := RGB_BIT_AMOUNT
		);
		PORT (
			-- inputs
			reset, clk : IN  STD_LOGIC;
			-- VGA module connections 
			--AdressIn         : IN unsigned(ENTITY_AMOUNT * (ENTITY_ROM_ADRESS_BIT_SIZE) - 1 DOWNTO 0); 
			AdressIn   : IN  unsigned(((ENTITY_AMOUNT * (ENTITY_ROM_ADRESS_BIT_SIZE + 1)) - 1) DOWNTO ((1 - 1) * ENTITY_ROM_ADRESS_BIT_SIZE));
			RGBOut     : OUT unsigned (RGB_BIT_AMOUNT - 1 DOWNTO 0)
		);
	END COMPONENT;
BEGIN
	-- convert Xcount and Ycount to X,Y values on visible part of screen
	-- move XVGA and YVGA PIXEL_SCALING as slow to increase every pixel by PIXEL_SCALING size, so /PIXEL_SCALING
	-- add OFFSET_CLK_TO_VGA to compencate for clock signal timing difrence to VGA
	XVGA <= (((unsigned(Xcount)) - HORIZONTAL_COUNT_VISIBLE_START + OFFSET_CLK_TO_VGA) /PIXEL_SCALING) - PLAYFIELD_PIXELS_START_OFFSET;
	YVGA <= ((unsigned(Ycount)) - VERTICAL_COUNT_VISIBLE_START) /PIXEL_SCALING;

	--todo generate al 48
	GenerateEntity : FOR entityNr IN 1 TO ENTITY_AMOUNT GENERATE
		EntityPixels0 : EntityPixels GENERIC
		MAP(
            HORIZONTAL_COUNT_VISIBLE_START => HORIZONTAL_COUNT_VISIBLE_START,
            VERTICAL_COUNT_VISIBLE_START   => VERTICAL_COUNT_VISIBLE_START,
            ENTITY_X_BIT_SIZE              => ENTITY_X_BIT_SIZE,
            ENTITY_Y_BIT_SIZE              => ENTITY_Y_BIT_SIZE,
            ENTITY_NUMMER_BIT_SIZE         => ENTITY_NUMMER_BIT_SIZE,
            ENTITY_PIXELS_HIGHT_AND_WITH   => ENTITY_PIXELS_HIGHT_AND_WITH,
            PLAYFIELD_PIXELS_START_OFFSET  => PLAYFIELD_PIXELS_START_OFFSET,
            OFFSET_CLK_TO_VGA              => OFFSET_CLK_TO_VGA,
            OFFSET_CLK_TO_ROM              => OFFSET_CLK_TO_ROM,
            PIXEL_SCALING                  => PIXEL_SCALING,
            ENTITY_ROM_ADRESS_BIT_SIZE     => ENTITY_ROM_ADRESS_BIT_SIZE
		)PORT MAP(
            debugIn      => debugIn,
            reset        => reset,
            clk          => clk, --todo datavector generate
            dataVector   => dataVector(((entityNr * (ENTITY_X_BIT_SIZE + ENTITY_Y_BIT_SIZE + ENTITY_NUMMER_BIT_SIZE)) - 1) DOWNTO ((entityNr - 1) * (ENTITY_X_BIT_SIZE + ENTITY_Y_BIT_SIZE + ENTITY_NUMMER_BIT_SIZE))),
            Xcount       => Xcount,
            Ycount       => Ycount,
            entityAdress => sEntityAdress(((entityNr * (ENTITY_ROM_ADRESS_BIT_SIZE + 1)) - 1) DOWNTO ((entityNr - 1) * (ENTITY_ROM_ADRESS_BIT_SIZE + 1)))
		);
	END GENERATE GenerateEntity;

	EntityCOEAdressSelector0 : EntityCOEAdressSelector GENERIC
    MAP(
        ENTITY_AMOUNT              => ENTITY_AMOUNT,
        ENTITY_ROM_ADRESS_BIT_SIZE => ENTITY_ROM_ADRESS_BIT_SIZE,
        INDEX_BIT_SIZE             => INDEX_BIT_SIZE,
        PALLET_BIT_SIZE            => PALLET_BIT_SIZE,
        RGB_BIT_AMOUNT             => RGB_BIT_AMOUNT
    )PORT MAP(
        reset    => reset,
        clk      => clk,
        AdressIn => sEntityAdress,
        RGBOut   => RGBOut
    );

	debugOut <= (OTHERS => '0');

	--	PROCESS (reset, clk)
	--		VARIABLE vEntityXPosition : NATURAL RANGE 0 TO 255 := 0;
	--		VARIABLE vEntityYPosition : NATURAL RANGE 0 TO 255 := 0;
	--		VARIABLE vTemp            : INTEGER                := 0; --todo: calc
	--	BEGIN
	--		-- if reset
	--		IF (reset = '1') THEN
	--			entityAdress <= (OTHERS => '0');
	--			debugOut     <= (OTHERS => '0');

	--			-- if clk rising_edge
	--		ELSIF rising_edge(clk) THEN
	--			-- default values for outputs, so output state is always defined
	--			-- set address to all 1 so that it can be filterd by next component as an tranparent pixel
	--			entityAdress <= (OTHERS => '1');
	--			debugOut     <= (OTHERS => '0');

	--			-- read x position
	--			vEntityXPosition := to_integer ((dataVector(ENTITY_X_BIT_SIZE - 1 DOWNTO 0)));
	--			-- read y position                           x entity size + y size   - 1           downto   Y entity size only
	--			vEntityYPosition := to_integer ((dataVector(ENTITY_X_BIT_SIZE + ENTITY_Y_BIT_SIZE - 1 DOWNTO ENTITY_X_BIT_SIZE)));

	--			---=! if entity pixel is going to be on screen. compared to be next vga location + offset !=---
	--			-- top left pixel of entity, X
	--			--      current vga x pixel with total offset to vga entity   +   offset to read rom   >=     current x position entity 
	--			IF (((XVGA + OFFSET_CLK_TO_ROM) >= vEntityXPosition)
	--				-- top left pixel of entity, Y
	--				-- current vga y (does not increment fast enough to add offset)                >=      current y position entity
	--				AND (YVGA >= vEntityYPosition)
	--				-- botom left pixel of entity, X
	--				-- to be next vga location      < x position + entity with and hight to check if total exends beond
	--				AND ((XVGA + OFFSET_CLK_TO_ROM) < (vEntityXPosition + ENTITY_PIXELS_HIGHT_AND_WITH))
	--				-- botom right pixel of entity, Y
	--				-- to be next vga location < y position + size entity
	--				AND (YVGA < (vEntityYPosition + ENTITY_PIXELS_HIGHT_AND_WITH)))
	--				THEN
	--				-- get entitie number to read out of ROM
	--				vTemp := to_integer(dataVector(ENTITY_X_BIT_SIZE + ENTITY_Y_BIT_SIZE + ENTITY_NUMMER_BIT_SIZE - 1 DOWNTO ENTITY_X_BIT_SIZE + ENTITY_Y_BIT_SIZE));
	--				-- calculate offset of entities by multiply by size of an entity
	--				vTemp := vTemp * (ENTITY_PIXELS_HIGHT_AND_WITH * ENTITY_PIXELS_HIGHT_AND_WITH);
	--				-- add y position of entity. Y position relative to start position of entity on screen;
	--				vTemp := vTemp + ((TO_INTEGER (YVGA) - vEntityYPosition) * ENTITY_PIXELS_HIGHT_AND_WITH);
	--				-- add X value. X position relative to start position of entity on screen;
	--				vTemp := vTemp + TO_INTEGER (XVGA) - vEntityXPosition;
	--				-- add offset to read from rom
	--				vTemp := vTemp + OFFSET_CLK_TO_ROM;
	--				-- get RGB values form address
	--				entityAdress <= (to_unsigned (vTemp, entityAdress'length));
	--			END IF;
	--		END IF;
	--	END PROCESS;
END Behavioral;