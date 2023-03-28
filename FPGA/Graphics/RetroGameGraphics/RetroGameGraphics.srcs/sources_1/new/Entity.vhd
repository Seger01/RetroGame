
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
	-- ROM block entity
	--	SIGNAL sEntityAdress   : unsigned(ENTITY_AMOUNT * (ENTITY_ROM_ADRESS_BIT_SIZE) - 1 DOWNTO 0);  -- RGB value for tile -- (OTHERS => '1') is transparrent pixel
	SIGNAL sEntityAdress : unsigned(((ENTITY_AMOUNT * (ENTITY_ROM_ADRESS_BIT_SIZE + 1)) - 1) DOWNTO ((1 - 1) * ENTITY_ROM_ADRESS_BIT_SIZE)); -- RGB value for tile -- (OTHERS => '1') is transparrent pixel

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
	-- generate entities for ENTITY_AMOUNT amount
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
END Behavioral;