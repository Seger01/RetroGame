----------------------------------------------------------------------------------
-- Company:        -
-- Engineer:       M.Kamphof
-- 
-- Create Date:    14:13:20 04/11/2009 
-- Module Name:    VGA - Behavioral 
-- Target Devices: Xilinx Artix 7
-- Description: 
--
-- Revision: 
-- Revision 0.02 - removed use of STD_LOGIC_VECTOR
-- Additional Comments: 
--
----------------------------------------------------------------------------------
LIBRARY IEEE;
USE IEEE.STD_LOGIC_1164.ALL;
USE IEEE.NUMERIC_STD.ALL;

ENTITY VGA IS
	GENERIC
	(
		-- size of visible part screen
		HORIZONTAL_COUNT_VISIBLE_START : INTEGER := 144;
		VERTICAL_COUNT_VISIBLE_START   : INTEGER := 31;
		RGB_BIT_AMOUNT   : INTEGER := 31
	);
	PORT (
		reset, clk_25  : IN  STD_LOGIC;
		RGBin          : IN  unsigned (RGB_BIT_AMOUNT-1 DOWNTO 0);
		RGBout         : OUT unsigned (RGB_BIT_AMOUNT-1 DOWNTO 0);
		Xcount, Ycount : OUT unsigned(9 DOWNTO 0);
		hsync, vsync   : OUT STD_LOGIC
	);
END VGA;

ARCHITECTURE Behavioral OF VGA IS
	SIGNAL hcount : unsigned(9 DOWNTO 0);
	SIGNAL vcount : unsigned(9 DOWNTO 0);
BEGIN

	-- use Xcount and Ycount, HORIZONTAL_COUNT_VISIBLE_START,31 is top left of visable screan
	Xcount <= hcount;
	Ycount <= vcount;

	PROCESS (reset, clk_25)
	BEGIN
		-- if reset
		IF (reset = '1') THEN
			-- default values for outputs, so output state is always defined
			RGBout <= (OTHERS => '0');
			hcount <= (OTHERS => '0');
			vcount <= (OTHERS => '0');
			hsync  <= '0';
			vsync  <= '0';
		ELSIF rising_edge(clk_25) THEN
			-- default values for outputs, so output state is always defined
			RGBout <= (OTHERS => '0');
			hsync  <= '0';
			vsync  <= '0';

			-- when there is clk signal keep hcount and vcount. (is dit nodig of werkt ook zonder?)
			hcount <= hcount;
			vcount <= vcount;

			-- if in visible vieuw section of screen
			IF (hcount >= HORIZONTAL_COUNT_VISIBLE_START) AND (hcount < 784) AND (vcount >= VERTICAL_COUNT_VISIBLE_START) AND (vcount < 511) THEN
				RGBout <= RGBin;
			END IF;

			-- sync puls for horizontal 
			IF hcount < 97 THEN
				hsync <= '0';
			ELSE
				hsync <= '1';
			END IF;

			-- sync puls for vertical 
			IF vcount < 3 THEN
				vsync <= '0';
			ELSE
				vsync <= '1';
			END IF;

			-- move 1 pixel to right
			hcount <= hcount + 1;

			-- end of display on right side 800 - 1 because signales are updated at end of process
			IF hcount >= (800 - 1) THEN
				-- go 1 row down
				vcount <= vcount + 1;
				-- go to left
				hcount <= (OTHERS => '0');
			END IF;

			-- end of display on bottom side 521 - 1 because signales are updated at end of process
			IF vcount >= (521 - 1) THEN
				-- go to top    
				vcount <= (OTHERS => '0');
			END IF;
		END IF;
	END PROCESS;
END Behavioral;