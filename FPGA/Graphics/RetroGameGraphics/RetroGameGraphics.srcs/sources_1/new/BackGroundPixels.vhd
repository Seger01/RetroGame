LIBRARY IEEE;
USE IEEE.STD_LOGIC_1164.ALL;
USE IEEE.NUMERIC_STD.ALL;

ENTITY BackGroundPixels IS
	GENERIC (
		-- size of visible part screen
		HORIZONTAL_COUNT_VISIBLE_START : INTEGER := 144;
		VERTICAL_COUNT_VISIBLE_START   : INTEGER := 31;
		SCREAN_WIDTH                   : INTEGER := 640;
		SCREAN_HIGHT                   : INTEGER := 480;
		-- amount of tiles visible on screan
		TILE_AMOUNT                    : INTEGER := (15 * 15);
		-- amount of bit to identify one tile
		TILE_NUMBER_SIZE               : INTEGER := 6;
		TILE_PIXEL_HIGHT_AND_WITH      : INTEGER := 16;
		-- Offsets
		OFFSET_CLK_TO_VGA              : INTEGER := 1; --todo: calc for this one
		OFFSET_CLK_TO_ROM              : INTEGER := 2;
		-- vga
		PIXEL_SCALING                  : INTEGER := 2
	);
	PORT (
        debugIn          : IN  STD_LOGIC_VECTOR(15 DOWNTO 0); -- Debug switches
        debugOut         : OUT STD_LOGIC_VECTOR(14 DOWNTO 0); -- Debug Leds
		-- inputs
		reset, clk    : IN  STD_LOGIC;
		-- VGA module connections
		Xcount, Ycount   : IN  STD_LOGIC_VECTOR(9 DOWNTO 0);
		-- vector with map tile numbers		-- tile number starting top left going left to richt and down
		tileNumberVector       : IN  STD_LOGIC_VECTOR((TILE_AMOUNT * (TILE_NUMBER_SIZE)) - 1 DOWNTO 0);
		Rout, Gout, Bout : OUT STD_LOGIC_VECTOR(3 DOWNTO 0)
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
	
	SIGNAL XVGA : INTEGER range 0 to 1023 := 0;
	SIGNAL YVGA : INTEGER range 0 to 511 := 0;
	-- Tile
	SIGNAL currentTileXYPosition : UNSIGNED(7 downto 0);
	SIGNAL tileRGB : STD_LOGIC_VECTOR(7 DOWNTO 0) := (OTHERS => '0'); -- RGB value for tile
	SIGNAL tileAdress : STD_LOGIC_VECTOR(13 DOWNTO 0) := (OTHERS => '0'); -- address to read from 1 of all tile
	SIGNAL tileMapNumber : STD_LOGIC_VECTOR(TILE_NUMBER_SIZE - 1 DOWNTO 0) := (OTHERS => '0'); -- address to read from 1 of all tile	
	
BEGIN
	-- map ports
	AllBackgroundTiles0 : AllBackgroundTiles
	PORT MAP
	(
		clka  => clk,
		addra => tileAdress,
		douta => tileRGB
	);
    
    -- convert Xcount and Yco`unt to X,Y values on visible part of screen
	-- move XVGA and YVGA PIXEL_SCALING as slow to increase every pixel by PIXEL_SCALING size, so /PIXEL_SCALING
	-- add OFFSET_CLK_TO_VGA to compencate for clock signal timing difrence to VGA
	XVGA <= (to_integer(unsigned(Xcount)) - HORIZONTAL_COUNT_VISIBLE_START + OFFSET_CLK_TO_VGA) /PIXEL_SCALING;
	YVGA <= (to_integer(unsigned(Ycount)) - VERTICAL_COUNT_VISIBLE_START) /PIXEL_SCALING;
	
	--todo: add the code
	tileMapNumber <= (OTHERS => debugIn(9));    
	
	--todo: resize hoe werkt dat wordt er niets van de data halverwege af gekipt
	
	--                                 ((currend x position      MOD 16)   +    ((  y position      MOD  hight tile)               * tile hight))
	--currentTileXYPosition <= resize((unsigned(Xcount)       MOD 16      + ((unsigned(Ycount)    MOD TILE_PIXEL_HIGHT_AND_WITH)   * TILE_PIXEL_HIGHT_AND_WITH)), 8); -- //todo: add offset in x and y count
	currentTileXYPosition <= resize((to_unsigned(XVGA       MOD TILE_PIXEL_HIGHT_AND_WITH, 8)      + ((YVGA    MOD TILE_PIXEL_HIGHT_AND_WITH)   * TILE_PIXEL_HIGHT_AND_WITH)), 8); -- //todo: add offset in x and y count
	--currentTileXYPosition <= to_unsigned(to_integer(unsigned(Xcount) MOD 16) + to_integer(unsigned(Ycount) MOD 16) * TILE_PIXEL_HIGHT_AND_WITH, 16);
	--currentTileXYPosition <= to_unsigned((unsigned(Xcount) MOD 16) + ((unsigned(Ycount) MOD 16) * TILE_PIXEL_HIGHT_AND_WITH, 16));
	
	PROCESS (reset, clk)
	BEGIN
		-- if reset
		IF (reset = '1') THEN
			-- default values
			-- and set color to black
			Rout <= (OTHERS => '0');
			Gout <= (OTHERS => '0');
			Bout <= (OTHERS => '0');
			tileAdress <= (OTHERS => '0');
			
			-- if clk rising_edge
		ELSIF rising_edge(clk) THEN
			-- default values for outputs, so output state is always defined
			-- set back ground collor
			Rout <= (OTHERS => '0');
			Gout <= (OTHERS => '0');
			Bout <= (OTHERS => '0');
			tileAdress <= (OTHERS => '0');
			
			--spritePixleAdress <= spritePositon(0 to spritePixleAdress'length - 1);
			--spritePixleAdress <= spritePositon(spritePixleAdress'length - 1 downto 0);
			--                                                                       tile to read    *   size of one tile                                     +  position of tile to read
			tileAdress <= STD_LOGIC_VECTOR(resize(unsigned(STD_LOGIC_VECTOR((unsigned(tileMapNumber) * (TILE_PIXEL_HIGHT_AND_WITH*TILE_PIXEL_HIGHT_AND_WITH)) + currentTileXYPosition)),14)); --todo: offsett
			
			-- if currend displayed pixel is in visible part of screen.
			IF       (((XVGA >= 0)                              AND (YVGA >= 0) 
			     AND   (XVGA < (SCREAN_WIDTH /PIXEL_SCALING))   AND (YVGA < (SCREAN_HIGHT /PIXEL_SCALING)))
			     OR debugIn(8) = '1') THEN -- //todo:add ofset
				--display object whith this color todo background tiles are never transparrent 
                Rout <=         tileRGB(7 downto 5) & tileRGB(7);
                Gout <=         tileRGB(4 downto 2) & tileRGB(4);
                Bout <= "0" &   tileRGB(1 downto 0) & tileRGB(1);   
			END IF;
		END IF;
	END PROCESS;
END Behavioral;