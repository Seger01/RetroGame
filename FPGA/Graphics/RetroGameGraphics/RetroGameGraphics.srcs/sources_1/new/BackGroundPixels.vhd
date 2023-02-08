LIBRARY IEEE;
USE IEEE.STD_LOGIC_1164.ALL;
USE IEEE.NUMERIC_STD.ALL;

ENTITY BackGroundPixels IS
	GENERIC (
		-- size of visible part screen
		HORIZONTAL_COUNT_VISIBLE_START : INTEGER := 144;
		VERTICAL_COUNT_VISIBLE_START   : INTEGER := 31;
		SCREAN_WIDTH                   : INTEGER := 640;
		SCREAN_HIGHT                   : INTEGER := 48;
		-- amount of tiles visible on screan
		TILE_AMOUNT                    : INTEGER := (15 * 15);
		TILE_PIXEL_HIGHT_AND_WITH      : INTEGER := 16
		-- diameter of object
	);
	PORT (
		-- inputs
		reset, clk100    : IN  STD_LOGIC;
		-- sprite RGB data
		-- Bit 7 6 5 4 3 2 1 0
		-- Data R R R G G G B B
		tileMapNumber    : IN  STD_LOGIC_VECTOR(5 DOWNTO 0); -- tile number starting top left going left to richt and down
		-- VGA module connections
		Xcount, Ycount   : IN  STD_LOGIC_VECTOR(9 DOWNTO 0); -- VGA current pixel number todo: add ofset
		Rout, Gout, Bout : OUT STD_LOGIC_VECTOR(3 DOWNTO 0);
		-- sprite adress to be availebel on spritePixleRGB 2 clocks after put on spritePixleAdress
		tileMapadress    : OUT STD_LOGIC_VECTOR(7 DOWNTO 0) -- set addres of tile to read
	);
END BackGroundPixels;
ARCHITECTURE Behavioral OF BackGroundPixels IS
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
BEGIN
	-- map ports
	AllBackgroundTiles0 : AllBackgroundTiles
	PORT MAP
	(
		clka  => clk100,
		addra => tileAdress,
		douta => tileRGB
	);
	-- convert Xcount and Ycount to X,Y values on visible part of screen
	-- add 1 to compencate for clock signal timing difrence to VGA
	XVGA <= to_integer(unsigned(Xcount)) - HORIZONTAL_COUNT_VISIBLE_START + 1;
    YVGA <= to_integer(unsigned(Ycount)) - VERTICAL_COUNT_VISIBLE_START;
	
	--todo: resize hoe werkt dat wordt er niets van de data halverwege af gekipt
	currentTileXYPosition <= resize((unsigned(Xcount) MOD 16 + (unsigned(Ycount) MOD 16 * TILE_PIXEL_HIGHT_AND_WITH)), 8); -- //todo: add offset in x and y count
	--currentTileXYPosition <= to_unsigned(to_integer(unsigned(Xcount) MOD 16) + to_integer(unsigned(Ycount) MOD 16) * TILE_PIXEL_HIGHT_AND_WITH, 16);
	--currentTileXYPosition <= to_unsigned((unsigned(Xcount) MOD 16) + ((unsigned(Ycount) MOD 16) * TILE_PIXEL_HIGHT_AND_WITH, 16));
	
	tileMapadress <= STD_LOGIC_VECTOR(to_unsigned(5, tileMapadress'length));
	
	PROCESS (reset, clk100)
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
		ELSIF rising_edge(clk100) THEN
			-- default values for outputs, so output state is always defined
			-- set back ground collor
			Rout <= (OTHERS => '0');
			Gout <= (OTHERS => '0');
			Bout <= (OTHERS => '0');
			tileAdress <= (OTHERS => '0');
			
			--spritePixleAdress <= spritePositon(0 to spritePixleAdress'length - 1);
			--spritePixleAdress <= spritePositon(spritePixleAdress'length - 1 downto 0);
			--todo: tileAdress tegroot 00 toevoegen?
			tileAdress <= STD_LOGIC_VECTOR(resize(unsigned(STD_LOGIC_VECTOR((unsigned(tileMapNumber) * 256) + currentTileXYPosition)),14));
			-- if currend displayed pixel is in visible part of screen.
			IF ((XVGA > 0) AND (YVGA > 0) AND (XVGA <= SCREAN_WIDTH) AND (YVGA <= SCREAN_HIGHT)) THEN -- //todo:add ofset
				--display object whith this color
				IF (tileRGB /= X"00") THEN
					-- sprite RGB data
					-- Bit 7 6 5 4 3 2 1 0
					-- Data R R R G G G B B
					Rout <= tileRGB(7 DOWNTO 5) & tileRGB(7);
					Gout <= tileRGB(4 DOWNTO 2) & tileRGB(4);
					Bout <= tileRGB(1 DOWNTO 0) & tileRGB(1 DOWNTO 0);
				END IF;
			END IF;
		END IF;
	END PROCESS;
END Behavioral;