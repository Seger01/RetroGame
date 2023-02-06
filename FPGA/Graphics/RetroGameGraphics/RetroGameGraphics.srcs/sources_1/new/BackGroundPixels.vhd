----------------------------------------------------------------------------------
-- Company:
-- Engineer:
--
-- Create Date: 12.12.2022 13:56:08
-- Design Name:
-- Module Name: VGA_Controller - Behavioral
-- Project Name:
-- Target Devices:
-- Tool Versions:
-- Description:
--
-- Dependencies:
--
-- Revision:
-- Revision 0.01 - File Created
-- Additional Comments:
--
----------------------------------------------------------------------------------
LIBRARY IEEE;
USE IEEE.STD_LOGIC_1164.ALL;
USE IEEE.NUMERIC_STD.ALL;
--use IEEE.Std_Logic_Arith.ALL;
USE IEEE.STD_LOGIC_UNSIGNED.ALL;
-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--use IEEE.NUMERIC_STD.ALL;
-- Uncomment the following library declaration if instantiating
-- any Xilinx leaf cells in this code.
--library UNISIM;
--use UNISIM.VComponents.all;
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
		Xcount, Ycount   : IN  STD_LOGIC_VECTOR(9 DOWNTO 0); -- VGA current pixel number
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
	
	SIGNAL XVGA : INTEGER := 0;
	SIGNAL YVGA : INTEGER := 0;
--	SIGNAL XStored : STD_LOGIC_VECTOR(9 DOWNTO 0) := (OTHERS => '0');
--	SIGNAL YStored : STD_LOGIC_VECTOR(9 DOWNTO 0) := (OTHERS => '0');
--	SIGNAL DStored : STD_LOGIC_VECTOR(9 DOWNTO 0) := (OTHERS => '0');
	-- Tile
	--signal spriteXpositon: STD_LOGIC_VECTOR(9 downto 0);
	--signal spriteYpositon: STD_LOGIC_VECTOR(9 downto 0);
	--signal spritePositon: integer;
	SIGNAL currentTileXYPosition : UNSIGNED(255 downto 0) := (OTHERS => '0');
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
	-- calculate x and y postion of sprite (based on object location)
	--spriteXpositon <= (Xcount - HORIZONTAL_COUNT_VISIBLE_START + 1) - XStored;
	--spriteYpositon <= (Ycount - VERTICAL_COUNT_VISIBLE_START) - YStored;
	-- calculate pixle adderss in sprite to read + 2 because of delay in
	-- reading from other entity
	--spritePositon <= TO_INTEGER (unsigned(spriteXpositon + (spriteYpositon * Din) - 2));
	--spritePixleAdress <= std_logic_vector(to_unsigned(spritePositon, spritePixleAdress'length));
	--currentTileXYPosition <= (unsigned(Xcount) MOD 16 + (unsigned(Ycount) MOD 16 * TILE_PIXEL_HIGHT_AND_WITH)); -- //todo: add offset in x and y count
	currentTileXYPosition <= unsigned(Xcount);
	--currentTileXYPosition <= to_unsigned(to_integer(unsigned(Xcount) MOD 16) + to_integer(unsigned(Ycount) MOD 16) * TILE_PIXEL_HIGHT_AND_WITH, 16);
	--currentTileXYPosition <= to_unsigned((unsigned(Xcount) MOD 16) + ((unsigned(Ycount) MOD 16) * TILE_PIXEL_HIGHT_AND_WITH, 16));
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
			--XStored <= XStored; --todo:
			--YStored <= YStored;
			--DStored <= DStored;
			-- if clk rising_edge
		ELSIF rising_edge(clk100) THEN
			-- default values for outputs, so output state is always defined
			-- set back ground collor
			Rout <= (OTHERS => '0');
			Gout <= (OTHERS => '0');
			Bout <= (OTHERS => '0');
			tileAdress <= (OTHERS => '0');
			--XStored <= XStored; --todo:
			--YStored <= YStored;
			--DStored <= DStored;
			--spritePixleAdress <= spritePositon(0 to spritePixleAdress'length - 1);
			--spritePixleAdress <= spritePositon(spritePixleAdress'length - 1 downto 0);
			tileAdress <= STD_LOGIC_VECTOR((unsigned(tileMapNumber) * 256) + currentTileXYPosition);
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
				-- anti Tearing
				-- if currend displayed pixel is not in visible part of screen.
			ELSE
				-- update stored mapp //todo: add
				--XStored <= Xin;
				--YStored <= Yin;
				--DStored <= Din;
			END IF;
		END IF;
	END PROCESS;
END Behavioral;