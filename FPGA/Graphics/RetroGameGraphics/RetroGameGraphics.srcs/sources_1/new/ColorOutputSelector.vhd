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
		COE_RGB_BIT_AMOUNT             : INTEGER := 3;
		RGB_INPUT_AMOUNT               : INTEGER := 5;
		RGB_BIT_AMOUNT           	   : INTEGER := 12;
		RGB_TRANSPARENT_VALUE          : INTEGER := 16#FFF#
    );
    PORT
    (
        -- inputs
        clk    : IN  STD_LOGIC;
        -- Lowest position in RGBin vector is given the highest priorety.
        RGBin  : IN  unsigned(COE_RGB_BIT_AMOUNT * RGB_INPUT_AMOUNT - 1 + 4 DOWNTO 0); -- todo: fix 4 for 8bit background
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
				IF (RGBin(count * COE_RGB_BIT_AMOUNT + (COE_RGB_BIT_AMOUNT - 1) DOWNTO count * COE_RGB_BIT_AMOUNT) /= RGB_TRANSPARENT_VALUE) THEN
					-- write not RGB_TRANSPARENT_VALUE to output.
					--RGBout <= resize(RGBin(count * COE_RGB_BIT_AMOUNT + (COE_RGB_BIT_AMOUNT - 1) DOWNTO count * COE_RGB_BIT_AMOUNT), RGBout'length); --todo: crrect color maping
                    
                    case resize(RGBin(count * COE_RGB_BIT_AMOUNT + (COE_RGB_BIT_AMOUNT - 1) DOWNTO count * COE_RGB_BIT_AMOUNT), COE_RGB_BIT_AMOUNT) is
                        when "000" =>
                            RGBout <= "010000100010"; -- 16#45# 
                        when "001" =>
                            RGBout <= "111110110010"; -- 16#F5# 
                        when "0010" =>
                            RGBout <= "101100100010"; -- 16#A5# 
                        when "011" =>
                            RGBout <= "011000100010"; -- 16#65# 
                        when "100" =>
                            RGBout <= "110111010111"; -- 16#DB# 
                        when "0101" =>
                            RGBout <= "011001100010"; -- 16#6D# 
                        when "110" =>
                            RGBout <= TO_UNSIGNED (RGB_TRANSPARENT_VALUE, RGBout'length); 
                        when "111" =>
                            RGBout <= "111111111111"; -- 16#45# 
                        when others =>
                            RGBout <= TO_UNSIGNED (RGB_TRANSPARENT_VALUE, RGBout'length); 
                    end case;
					-- exit ColorSelectLoop when a not RGB_TRANSPARENT_VALUE is fount, and displayed on the RGBout.
					EXIT ColorSelectLoop;
				END IF;
			END LOOP;
		END IF;
	END PROCESS;
END Behavioral;