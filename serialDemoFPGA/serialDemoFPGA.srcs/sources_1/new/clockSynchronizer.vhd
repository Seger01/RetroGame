----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 10.02.2023 09:29:30
-- Design Name: 
-- Module Name: SerialReader - Behavioral
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


library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx leaf cells in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity SerialReader is
    Port ( clk_ExternalHardwareIn : in STD_LOGIC;
           clk_Internal : in STD_LOGIC;
           reset : in STD_LOGIC;
           data_ExternalHardwareIn : in STD_LOGIC;
           data_ExternalHardwareOut : out STD_LOGIC;
           clk_ExternalHardwareOut : out STD_LOGIC);
end SerialReader;

architecture Behavioral of SerialReader is



signal serData_x1 : std_logic   := '0';
signal serData_x2 : std_logic   := '0';

signal serClk_x1 : std_logic    := '0';
signal serClk_x2 : std_logic    := '0';
begin
    synchronizer : process (clk_Internal, reset) is 
    begin
    if reset = '1' then
        serClk_x1 <= '0';
        serClk_x2 <= '0';
        clk_ExternalHardwareOut <= '0';
        serData_x1 <= '0';
        serData_x2 <= '0';
        data_ExternalHardwareOut <= '0';
    elsif rising_edge(clk_internal) then
        
        serClk_x1 <= clk_ExternalHardwareIn;
        serClk_x2 <= serClk_x1;
        clk_ExternalHardwareOut <= serClk_x2;
        serData_x1 <= data_externalHardwareIn;
        serData_x2 <= serData_x1;
        data_ExternalHardwareOut <= serData_x2;
    end if;
end process;

end Behavioral;