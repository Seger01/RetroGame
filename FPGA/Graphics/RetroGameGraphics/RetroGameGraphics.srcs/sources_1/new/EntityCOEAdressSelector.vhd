----------------------------------------------------------------------------------
-- Company: -
-- Engineer: Martijn Kamphof
-- 
-- Create Date: 07.03.2023 19:39:42
-- Design Name: 
-- Module Name: EntityCOEAdressSelector - Behavioral
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

entity EntityCOEAdressSelector is
    GENERIC
	(
		-- PIXEL COUNT
		--OBJECT_PIXELS_HIGHT_AND_WITH   : INTEGER := 16
		ENTITY_AMOUNT                : INTEGER := 50;
		ENTITY_ROM_ADRESS_BIT_SIZE   : INTEGER := 7
	);
	PORT
	(
		-- inputs
		reset, clk       : IN  STD_LOGIC;
		-- VGA module connections
		AdressIn         : IN unsigned(ENTITY_AMOUNT * (ENTITY_ROM_ADRESS_BIT_SIZE+1) - 1 DOWNTO 0);
		AdressOut        : OUT unsigned(ENTITY_ROM_ADRESS_BIT_SIZE - 1 DOWNTO 0)
	);
end EntityCOEAdressSelector;

architecture Behavioral of EntityCOEAdressSelector is
	SIGNAL TransparenAddress  : unsigned (ENTITY_ROM_ADRESS_BIT_SIZE DOWNTO 0) := (others => '1');    --todo: optimalize???

begin
    TransparenAddress <= (others => '1');
    
    process(reset, clk)
    begin
        if (reset = '1') then
            AdressOut <= (others => '0');
        elsif (rising_edge (clk)) then
            FOR count IN 0 TO ENTITY_AMOUNT - 1 LOOP
                -- check if AdressIn size ENTITY_ROM_ADRESS_BIT_SIZE+1  not is TransparenAddress.
                if (AdressIn(count*(ENTITY_ROM_ADRESS_BIT_SIZE+1) + ENTITY_ROM_ADRESS_BIT_SIZE downto count*(ENTITY_ROM_ADRESS_BIT_SIZE+1)) /= TransparenAddress) then
                    -- set AdressIn size ENTITY_ROM_ADRESS_BIT_SIZE adress
                    AdressOut <= AdressIn(count*(ENTITY_ROM_ADRESS_BIT_SIZE+1) + ENTITY_ROM_ADRESS_BIT_SIZE-1 downto count*(ENTITY_ROM_ADRESS_BIT_SIZE+1));
                end if;
            END LOOP;
        end if;
    end process;
end Behavioral;
