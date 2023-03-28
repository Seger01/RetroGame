----------------------------------------------------------------------------------
-- Company: -
-- Engineer: Martijn Kamphof
-- 
-- Create Date: 06.02.2023
-- Design Name: 
-- Module Name: EntityPixels - Behavioral
-- Project Name: Retro Game
-- Target Devices: Digilent Basys 3
-- Tool Versions: Vivado 2022.1
-- Description: 
-- 
-- Dependencies: 
-- 
-- Revision:
-- Revision 0.02 - More Modulare design
-- Additional Comments:
-- All entities and tiles RGB outputs will be controlled by the CollorOutputSelector
----------------------------------------------------------------------------------

library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;


ENTITY BackGroundPixels IS
	GENERIC (
		-- VGA, start visible part of screen
		HORIZONTAL_COUNT_VISIBLE_START : INTEGER := 144;
		VERTICAL_COUNT_VISIBLE_START   : INTEGER := 31;
		-- total visible screen
		SCREAN_WIDTH                   : INTEGER := 640;
		SCREAN_HIGHT                   : INTEGER := 480;
		-- amount of tiles visible on screan
		TILE_AMOUNT                    : INTEGER := (15 * 15);
		TILE_AMOUNT_HIGHT              : INTEGER := 15;
		TILE_AMOUNT_WITH               : INTEGER := 15;
		PLAYFIELD_PIXELS_START_OFFSET  : INTEGER := 16 +16 +8;
		-- amount of bit to identify one tile
		TILE_NUMBER_SIZE               : INTEGER := 6;
		TILE_PIXEL_HIGHT_AND_WITH      : INTEGER := 16;
		-- Offsets
		OFFSET_CLK_TO_VGA              : INTEGER := 3; --todo: calc for this one (horizontal move background)
		OFFSET_CLK_TO_ROM              : INTEGER := 2;
		-- vga
		PIXEL_SCALING                  : INTEGER := 2;
		BACKGROUND_ROM_ADRESS_BIT_SIZE : INTEGER := 7;
		INDEX_BIT_SIZE                 : INTEGER := 3;
		PALLET_BIT_SIZE                : INTEGER := 11;
		RGB_BIT_AMOUNT                 : INTEGER := 12
	);
	PORT (
        debugIn          : IN  UNSIGNED(15 DOWNTO 0); -- Debug switches
        debugOut         : OUT UNSIGNED(15 DOWNTO 0); -- Debug Leds
		-- inputs
		reset, clk    : IN  STD_LOGIC;
		-- VGA module connections
		Xcount, Ycount   : IN  UNSIGNED(9 DOWNTO 0);-- VGA current pixel number todo: add ofset
		-- vector with map tile numbers		-- tile number starting top left going left to richt and down
		tileNumberVector  : IN  UNSIGNED((TILE_AMOUNT * (TILE_NUMBER_SIZE)) - 1 DOWNTO 0);		
		RGBOut         : OUT unsigned (RGB_BIT_AMOUNT - 1 DOWNTO 0)
	);
END BackGroundPixels;
	
ARCHITECTURE Behavioral OF BackGroundPixels IS
    -- Tile RGB data
    -- Bit 7 6 5 4 3 2 1 0
    -- Data R R R G G G B B
	COMPONENT AllBackgroundTiles IS
		PORT (
			clka  : IN  STD_LOGIC;
			addra : IN  STD_LOGIC_VECTOR(13 DOWNTO 0);
			douta : OUT STD_LOGIC_VECTOR(7 DOWNTO 0)
		);
	END COMPONENT;
	COMPONENT BackgroundCOEAdressSelector IS
		GENERIC
		(
			BACKGROUND_ROM_ADRESS_BIT_SIZE : INTEGER := 11;
			INDEX_BIT_SIZE             : INTEGER := 11;
			PALLET_BIT_SIZE            : INTEGER := 11;
			RGB_BIT_AMOUNT             : INTEGER := 12
		);
		PORT (
			-- inputs
			reset, clk : IN  STD_LOGIC;
			-- VGA module connections
			AdressIn   : IN  unsigned (BACKGROUND_ROM_ADRESS_BIT_SIZE-1 DOWNTO 0);
			RGBOut     : OUT unsigned (RGB_BIT_AMOUNT - 1 DOWNTO 0)
		);
	END COMPONENT;
	
	SIGNAL XVGA : INTEGER range 0 to 1023 := 0;
	SIGNAL YVGA : INTEGER range 0 to 511 := 0;
	-- Tile
	SIGNAL currentTileXYPosition : UNSIGNED(7 downto 0);
	SIGNAL tileRGB : UNSIGNED(7 DOWNTO 0) := (OTHERS => '0'); -- RGB value for tile
	SIGNAL tileAdress : UNSIGNED(BACKGROUND_ROM_ADRESS_BIT_SIZE-1 DOWNTO 0) := (OTHERS => '0'); -- address to read from 1 of all tile
	SIGNAL tileMapNumber : UNSIGNED(TILE_NUMBER_SIZE - 1 DOWNTO 0) := (OTHERS => '0'); -- tile to read from COE 1 number for every tile	
	SIGNAL temp1 : INTEGER range -5000 to 500000 := 0; --todo: calc max	

BEGIN    
	BackgroundCOEAdressSelector0 : BackgroundCOEAdressSelector GENERIC
	MAP(
        BACKGROUND_ROM_ADRESS_BIT_SIZE => BACKGROUND_ROM_ADRESS_BIT_SIZE,
        INDEX_BIT_SIZE             => INDEX_BIT_SIZE,
        PALLET_BIT_SIZE            => PALLET_BIT_SIZE,
        RGB_BIT_AMOUNT             => RGB_BIT_AMOUNT
	)
	PORT MAP(
		reset    => reset,
		clk      => clk,
		AdressIn => tileAdress,
		RGBOut   => RGBOut
	);
	
    -- convert Xcount and Yco`unt to X,Y values on visible part of screen
	-- move XVGA and YVGA PIXEL_SCALING as slow to increase every pixel by PIXEL_SCALING size, so /PIXEL_SCALING
	-- add OFFSET_CLK_TO_VGA to compencate for clock signal timing difrence to VGA
	XVGA <= ((to_integer(unsigned(Xcount)) - HORIZONTAL_COUNT_VISIBLE_START + OFFSET_CLK_TO_VGA) /PIXEL_SCALING) - PLAYFIELD_PIXELS_START_OFFSET;
	YVGA <= (to_integer(unsigned(Ycount)) - VERTICAL_COUNT_VISIBLE_START) /PIXEL_SCALING;
	
	-- get current tile number to display on screan + offset
	--                                           (x position  / size of tile)                      +   (y position  / size of tile) * tile amount in with
	--tileMapNumber <= std_logic_vector((to_unsigned(XVGA       /  TILE_PIXEL_HIGHT_AND_WITH, 6)      + ((YVGA    /  TILE_PIXEL_HIGHT_AND_WITH)   * TILE_AMOUNT_WITH_AND_HIGHT))); -- //todo: add offset in x and y count;
	
--	-- get current tile number to display on screan + offset
--	-- read tile nr out of vector          get tile nr of x-as 
--	tileMapNumber <= tileNumberVector(   ((XVGA    /  TILE_PIXEL_HIGHT_AND_WITH)
--	--                                     add tile nr of y-as   *   amount of tiles on one row        + TILE_NUMBER_SIZE to read current tile 
--                                       + ((YVGA    /  TILE_PIXEL_HIGHT_AND_WITH)   * TILE_AMOUNT_WITH_AND_HIGHT) + TILE_NUMBER_SIZE)
--                                       downto 
--                                       -- same as above, without + TILE_NUMBER_SIZE
--                                         ((XVGA    /  TILE_PIXEL_HIGHT_AND_WITH)
--                                       + ((YVGA    /  TILE_PIXEL_HIGHT_AND_WITH)   * TILE_AMOUNT_WITH_AND_HIGHT)));

    --          x position offset of 0,0            + y position offset of 0,0 * total tiles in with
    -- mapp index nr to display
    temp1 <= (((XVGA) / TILE_PIXEL_HIGHT_AND_WITH) + ((YVGA / TILE_PIXEL_HIGHT_AND_WITH) * TILE_AMOUNT_WITH)); --todo: offset??
    
    --               get tile number
    tileMapNumber <= tileNumberVector(( temp1*TILE_NUMBER_SIZE + TILE_NUMBER_SIZE - 1) downto (temp1*TILE_NUMBER_SIZE));
    --tileMapNumber <= std_logic_vector(to_unsigned (6, tileMapNumber'length));
	
	-- get postion of pixel on tile to display
	--                                 ((currend x position      MOD 16)   +    ((  y position      MOD  hight tile)               * tile hight))
	currentTileXYPosition <= resize((to_unsigned(XVGA       MOD TILE_PIXEL_HIGHT_AND_WITH, currentTileXYPosition'length)      + ((YVGA    MOD TILE_PIXEL_HIGHT_AND_WITH)   * TILE_PIXEL_HIGHT_AND_WITH)), currentTileXYPosition'length); -- //todo: add offset in x and y count
	
	PROCESS (reset, clk)
	   variable temp: unsigned (13 DOWNTO 0) := (OTHERS => '0'); -- address to read from 1 of all tile
	BEGIN
		-- if reset
		IF (reset = '1') THEN
			-- default values
			-- set back ground ROM address
			tileAdress <= (OTHERS => '0');
			temp := (OTHERS => '0');
			debugOut <= (OTHERS => '0');-- used for debug
			
			-- if clk rising_edge
		ELSIF rising_edge(clk) THEN
			-- default values for outputs, so output state is always defined
			-- set back ground ROM address
			tileAdress <= (OTHERS => '0');
			debugOut <= (OTHERS => '0'); -- used for debug
			
			--                                                                       tile to read    *   size of one tile                                     +  position of tile to read
			--tileAdress <= STD_LOGIC_VECTOR(resize(unsigned(STD_LOGIC_VECTOR((unsigned(tileMapNumber) * (TILE_PIXEL_HIGHT_AND_WITH*TILE_PIXEL_HIGHT_AND_WITH)) + currentTileXYPosition)),14)); --todo: offsett
			--temp := resize((unsigned(tileMapNumber) * TILE_PIXEL_HIGHT_AND_WITH*TILE_PIXEL_HIGHT_AND_WITH) + currentTileXYPosition, temp'length);
			--todo: uncommend
			
			if (debugIn(12) = '1') then
			     temp := resize((20 * TILE_PIXEL_HIGHT_AND_WITH*TILE_PIXEL_HIGHT_AND_WITH) + currentTileXYPosition, temp'length);			     
			elsif (debugIn(7) = '1') then
			     temp := resize(((unsigned(tileMapNumber)* 2 + 1) * TILE_PIXEL_HIGHT_AND_WITH*TILE_PIXEL_HIGHT_AND_WITH) + currentTileXYPosition, temp'length);	
			elsif (debugIn(8) = '1') then
			     temp := resize(((unsigned(tileMapNumber)* 3 - 4) * TILE_PIXEL_HIGHT_AND_WITH*TILE_PIXEL_HIGHT_AND_WITH) + currentTileXYPosition, temp'length);	 
			elsif (debugIn(9) = '1') then
			     temp := resize((unsigned(tileMapNumber)*0 + 14 * TILE_PIXEL_HIGHT_AND_WITH*TILE_PIXEL_HIGHT_AND_WITH) + currentTileXYPosition, temp'length);		
			elsif (debugIn(10) = '1') then
			     temp := resize((unsigned(tileMapNumber)*0 + 4 * TILE_PIXEL_HIGHT_AND_WITH*TILE_PIXEL_HIGHT_AND_WITH) + currentTileXYPosition, temp'length);	
			elsif (debugIn(11) = '1') then
			     temp := resize(currentTileXYPosition, temp'length);
			else		
			-- debug dit is echte output		
			     temp := resize((unsigned(tileMapNumber) * TILE_PIXEL_HIGHT_AND_WITH*TILE_PIXEL_HIGHT_AND_WITH) + currentTileXYPosition, temp'length);	
			end if;
			
			tileAdress <= temp; --todo: offsett
		END IF;
	END PROCESS;
END Behavioral;