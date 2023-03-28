----------------------------------------------------------------------------------
-- Company:         -
-- Engineer:        Martijn Kamphof
-- 
-- Create Date:     13.03.2023 14:46:02
-- Design Name: 
-- Module Name:     ColorPalletSelector - Behavioral
-- Project Name:    Retro Game
-- Target Devices:  Digilent Basys 3
-- Tool Versions:   Vivado 2022.1
-- Description: 
-- 
-- Dependencies: 
-- 
-- Revision:
-- Revision 0.01 - File Created
-- Additional Comments:
----------------------------------------------------------------------------------
LIBRARY IEEE;
USE IEEE.STD_LOGIC_1164.ALL;
USE IEEE.NUMERIC_STD.ALL;

ENTITY ColorPalletSelector IS
	GENERIC
	(
		INDEX_BIT_SIZE  : INTEGER := 11;
		PALLET_BIT_SIZE : INTEGER := 11;
		RGB_BIT_AMOUNT  : INTEGER := 12
	);
	PORT (
		reset, clk : IN  STD_LOGIC;
		IndexIn    : IN  unsigned(INDEX_BIT_SIZE - 1 DOWNTO 0);
		PalletIn   : IN  unsigned(PALLET_BIT_SIZE - 1 DOWNTO 0);
		RGBOut     : OUT unsigned (RGB_BIT_AMOUNT - 1 DOWNTO 0)
	);
END ColorPalletSelector;

ARCHITECTURE Behavioral OF ColorPalletSelector IS

BEGIN
    process (reset, clk)
    begin
        if (reset = '1') then
            RGBOut <= (others => '0');
        elsif (rising_edge (clk)) then
            RGBOut <= IndexIn(7 downto 5) & IndexIn(7) & IndexIn(4 downto 2) & IndexIn(4) & "0" & IndexIn(1 downto 0) & IndexIn(1);
        end if;
    end process;
END Behavioral;