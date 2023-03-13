----------------------------------------------------------------------------------
-- Company: -
-- Engineer: Martijn Kamphof
-- 
-- Create Date: 07.03.2023 19:39:42
-- Design Name: 
-- Module Name: BossCOEAdressSelector - Behavioral
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

entity BossCOEAdressSelector is
    GENERIC
	(
		BOSS_ROM_ADRESS_BIT_SIZE   : INTEGER := 11
	);
	PORT
	(
		-- inputs
		reset, clk       : IN  STD_LOGIC;
		-- VGA module connections
		AdressIn         : IN unsigned(BOSS_ROM_ADRESS_BIT_SIZE DOWNTO 0);
		AdressOut        : OUT unsigned(BOSS_ROM_ADRESS_BIT_SIZE-1 DOWNTO 0)
	);
end BossCOEAdressSelector;

architecture Behavioral of BossCOEAdressSelector is

begin
    process(reset, clk)
    begin
        if (reset = '1') then
            AdressOut <= (others => '0');
        elsif (rising_edge (clk)) then
            AdressOut <= AdressIn(BOSS_ROM_ADRESS_BIT_SIZE-1 DOWNTO 0);
        end if;
    end process;
end Behavioral;

