----------------------------------------------------------------------------------
-- Company: -
-- Engineer: Martijn Kamphof
-- 
-- Create Date: 07.03.2023 19:39:42
-- Design Name: 
-- Module Name: PlayerCOEAdressSelector - Behavioral
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

library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;

entity PlayerCOEAdressSelector is
    GENERIC
	(
		PLAYER_ROM_ADRESS_BIT_SIZE   : INTEGER := 11
	);
	PORT
	(
		-- inputs
		reset, clk       : IN  STD_LOGIC;
		-- VGA module connections
		AdressIn         : IN unsigned(PLAYER_ROM_ADRESS_BIT_SIZE DOWNTO 0);
		AdressOut        : OUT unsigned(PLAYER_ROM_ADRESS_BIT_SIZE DOWNTO 0)
	);
end PlayerCOEAdressSelector;

architecture Behavioral of PlayerCOEAdressSelector is

begin
    process(clk)
    begin
        if (reset = '1') then
            AdressOut <= (others => '0');
        elsif (rising_edge (clk)) then
            AdressOut <= AdressIn;
        end if;
    end process;
end Behavioral;

