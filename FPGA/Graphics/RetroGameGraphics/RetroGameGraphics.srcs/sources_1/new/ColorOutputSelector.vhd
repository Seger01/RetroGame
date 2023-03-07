----------------------------------------------------------------------------------
-- Company: -
-- Engineer: Martijn Kamphof
-- 
-- Create Date: 07.03.2023 10:19:45
-- Design Name: 
-- Module Name: ColorOutputSelector - Behavioral
-- Project Name: Retro Game
-- Target Devices: Digilent Basys 3
-- Tool Versions: Vivado 2022.1
-- Description: 
-- 
-- Dependencies: 
-- 
-- Revision:
-- Revision 0.01 - File Created
-- Additional Comments:
-- All entities and tiles RGB outputs will be controlled by the CollorOutputSelector
----------------------------------------------------------------------------------
LIBRARY IEEE;
USE IEEE.STD_LOGIC_1164.ALL;
USE IEEE.NUMERIC_STD.ALL;

ENTITY ColorOutputSelector IS
    GENERIC
    (
        -- ColorOutputSelector
		RGB_INPUT_AMOUNT               : INTEGER := 5;
		RGB_BIT_AMOUNT           	   : INTEGER := 12;
		RGB_TRANSPARENT_VALUE          : INTEGER := 16#FFF#
    );
    PORT
    (
        -- inputs
        clk    : IN  STD_LOGIC;
        -- Lowest position in RGBin vector is given the highest priorety.
        RGBin  : IN  unsigned(RGB_BIT_AMOUNT * RGB_INPUT_AMOUNT - 1 DOWNTO 0);
        RGBout : OUT unsigned(RGB_BIT_AMOUNT - 1 DOWNTO 0)
    );
END ColorOutputSelector;

ARCHITECTURE Behavioral OF ColorOutputSelector IS

BEGIN
	PROCESS (clk)
	BEGIN
		IF (rising_edge (clk)) THEN
			-- set RGB_TRANSPARENT_VALUE as default output value
			RGBout <= TO_UNSIGNED (RGB_TRANSPARENT_VALUE, RGBout'length);

			-- loop to all RGB input untill a not RGB_TRANSPARENT_VALUE is fount, and displayed on the RGBout.
			ColorSelectLoop : FOR count IN 0 TO RGB_INPUT_AMOUNT - 1 LOOP

				-- check if input is not RGB_TRANSPARENT_VALUE
				IF (RGBin(count * RGB_BIT_AMOUNT + (RGB_BIT_AMOUNT - 1) DOWNTO count * RGB_BIT_AMOUNT) /= RGB_TRANSPARENT_VALUE) THEN
					-- write not RGB_TRANSPARENT_VALUE to output.
					RGBout <= RGBin(count * RGB_BIT_AMOUNT + (RGB_BIT_AMOUNT - 1) DOWNTO count * RGB_BIT_AMOUNT);

					-- exit ColorSelectLoop when a not RGB_TRANSPARENT_VALUE is fount, and displayed on the RGBout.
					EXIT ColorSelectLoop;
				END IF;
			END LOOP;
		END IF;
	END PROCESS;
END Behavioral;