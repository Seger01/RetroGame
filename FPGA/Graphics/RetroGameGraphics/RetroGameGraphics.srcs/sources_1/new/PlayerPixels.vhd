----------------------------------------------------------------------------------
-- Company:         -
-- Engineer:        Martijn Kamphof
-- 
-- Create Date:     07.03.2023 10:19:45
-- Design Name: 
-- Module Name:     PlayerPixels - Behavioral
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

ENTITY PlayerPixels IS
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
		PLAYER_ROM_ADRESS_BIT_SIZE     : INTEGER := 12;
		INDEX_BIT_SIZE                 : INTEGER := 3;
		PALLET_BIT_SIZE                : INTEGER := 11;
		RGB_BIT_AMOUNT                 : INTEGER := 12
	);
	PORT (
		debugIn        : IN  unsigned(15 DOWNTO 0); -- Debug switches
		debugOut       : OUT unsigned(15 DOWNTO 0); -- Debug Leds
		-- inputs
		reset, clk     : IN  STD_LOGIC;
		-- x, y position, entity nuber
		dataVector     : IN  unsigned((ENTITY_X_BIT_SIZE + ENTITY_Y_BIT_SIZE + ENTITY_NUMMER_BIT_SIZE) - 1 DOWNTO 0);
		-- VGA module connections
		Xcount, Ycount : IN  unsigned(9 DOWNTO 0); -- VGA current pixel number todo: add ofset
		RGBOut         : OUT unsigned (RGB_BIT_AMOUNT - 1 DOWNTO 0)
	);
END PlayerPixels;

ARCHITECTURE Behavioral OF PlayerPixels IS
	COMPONENT PlayerCOEAdressSelector IS
		GENERIC
		(
			PLAYER_ROM_ADRESS_BIT_SIZE : INTEGER := 11;
			INDEX_BIT_SIZE             : INTEGER := 11;
			PALLET_BIT_SIZE            : INTEGER := 11;
			RGB_BIT_AMOUNT             : INTEGER := 12
		);
		PORT (
			reset, clk : IN  STD_LOGIC;
			AdressIn   : IN  unsigned(PLAYER_ROM_ADRESS_BIT_SIZE DOWNTO 0);
			RGBOut     : OUT unsigned (RGB_BIT_AMOUNT - 1 DOWNTO 0)
		);
	END COMPONENT;
	SIGNAL XVGA         : unsigned(9 DOWNTO 0);                          -- VGA current pixel number todo: add ofset
	SIGNAL YVGA         : unsigned(9 DOWNTO 0);                          -- VGA current pixel number todo: add ofset
	-- ROM block entity
	SIGNAL entityAdress : unsigned(PLAYER_ROM_ADRESS_BIT_SIZE DOWNTO 0); -- RGB value for tile -- (OTHERS => '1') is transparrent pixel

BEGIN
	-- convert Xcount and Ycount to X,Y values on visible part of screen
	-- move XVGA and YVGA PIXEL_SCALING as slow to increase every pixel by PIXEL_SCALING size, so /PIXEL_SCALING
	-- add OFFSET_CLK_TO_VGA to compencate for clock signal timing difrence to VGA
	XVGA <= (((unsigned(Xcount)) - HORIZONTAL_COUNT_VISIBLE_START + OFFSET_CLK_TO_VGA) /PIXEL_SCALING) - PLAYFIELD_PIXELS_START_OFFSET;
	YVGA <= ((unsigned(Ycount)) - VERTICAL_COUNT_VISIBLE_START) /PIXEL_SCALING;
	
	PlayerCOEAdressSelector0 : PlayerCOEAdressSelector GENERIC
	MAP(
        PLAYER_ROM_ADRESS_BIT_SIZE => PLAYER_ROM_ADRESS_BIT_SIZE,
        INDEX_BIT_SIZE             => INDEX_BIT_SIZE,
        PALLET_BIT_SIZE            => PALLET_BIT_SIZE,
        RGB_BIT_AMOUNT             => RGB_BIT_AMOUNT
	)
	PORT MAP(
		reset    => reset,
		clk      => clk,
		AdressIn => entityAdress,
		RGBOut   => RGBOut
	);

	PROCESS (reset, clk)
		VARIABLE vEntityXPosition : NATURAL RANGE 0 TO 255 := 0;
		VARIABLE vEntityYPosition : NATURAL RANGE 0 TO 255 := 0;
		VARIABLE vTemp            : INTEGER                := 0; --todo: calc
	BEGIN
		-- if reset
		IF (reset = '1') THEN
			entityAdress <= (OTHERS => '0');
			debugOut     <= (OTHERS => '0');

			-- if clk rising_edge
		ELSIF rising_edge(clk) THEN
			-- default values for outputs, so output state is always defined
			-- set address to all 1 so that it can be filterd by next component as an tranparent pixel
			entityAdress <= (OTHERS => '1');
			debugOut     <= (OTHERS => '0');
			
			
			-- if all data not == 0 then do normal opertion otherwise let entityAdress stand on transparrent
			if (dataVector((ENTITY_X_BIT_SIZE + ENTITY_Y_BIT_SIZE + ENTITY_NUMMER_BIT_SIZE) - 1 DOWNTO 0) /= 0) then    
                -- read x position
                vEntityXPosition := to_integer ((dataVector(ENTITY_X_BIT_SIZE - 1 DOWNTO 0)));
                -- read y position                           x entity size + y size   - 1           downto   Y entity size only
                vEntityYPosition := to_integer ((dataVector(ENTITY_X_BIT_SIZE + ENTITY_Y_BIT_SIZE - 1 DOWNTO ENTITY_X_BIT_SIZE)));
    
                ---=! if entity pixel is going to be on screen. compared to be next vga location + offset !=---
                -- top left pixel of entity, X
                --      current vga x pixel with total offset to vga entity   +   offset to read rom   >=     current x position entity 
                IF (((XVGA + OFFSET_CLK_TO_ROM) >= vEntityXPosition)
                    -- top left pixel of entity, Y
                    -- current vga y (does not increment fast enough to add offset)                >=      current y position entity
                    AND (YVGA >= vEntityYPosition)
                    -- botom left pixel of entity, X
                    -- to be next vga location      < x position + entity with and hight to check if total exends beond
                    AND ((XVGA + OFFSET_CLK_TO_ROM) < (vEntityXPosition + ENTITY_PIXELS_HIGHT_AND_WITH))
                    -- botom right pixel of entity, Y
                    -- to be next vga location < y position + size entity
                    AND (YVGA < (vEntityYPosition + ENTITY_PIXELS_HIGHT_AND_WITH)))
                    THEN
                    -- get entitie number to read out of ROM
                    vTemp := to_integer(dataVector(ENTITY_X_BIT_SIZE + ENTITY_Y_BIT_SIZE + ENTITY_NUMMER_BIT_SIZE - 1 DOWNTO ENTITY_X_BIT_SIZE + ENTITY_Y_BIT_SIZE));
                    -- calculate offset of entities by multiply by size of an entity
                    vTemp := vTemp * (ENTITY_PIXELS_HIGHT_AND_WITH * ENTITY_PIXELS_HIGHT_AND_WITH);
                    -- add y position of entity. Y position relative to start position of entity on screen;
                    vTemp := vTemp + ((TO_INTEGER (YVGA) - vEntityYPosition) * ENTITY_PIXELS_HIGHT_AND_WITH);
--                    -- add offset to read from rom
--                    vTemp := vTemp + OFFSET_CLK_TO_ROM;
                    -- add X value. X position relative to start position of entity on screen;
                    vTemp := vTemp + TO_INTEGER (XVGA + OFFSET_CLK_TO_ROM) - vEntityXPosition;
                    -- get RGB values form address
                    entityAdress <= (to_unsigned (vTemp, entityAdress'length));
                END IF;         
			end if;
		END IF;
	END PROCESS;
END Behavioral;