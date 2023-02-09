------------------------------------------------------------------------------------
---- Company: 
---- Engineer: 
---- 
---- Create Date: 08.02.2023 22:14:29
---- Design Name: 
---- Module Name: clockSynchronizer - Behavioral
---- Project Name: 
---- Target Devices: 
---- Tool Versions: 
---- Description: 
---- 
---- Dependencies: 
---- 
---- Revision:
---- Revision 0.01 - File Created
---- Additional Comments:
---- 
------------------------------------------------------------------------------------


--library IEEE;
--use IEEE.STD_LOGIC_1164.ALL;

---- Uncomment the following library declaration if using
---- arithmetic functions with Signed or Unsigned values
----use IEEE.NUMERIC_STD.ALL;

---- Uncomment the following library declaration if instantiating
---- any Xilinx leaf cells in this code.
----library UNISIM;
----use UNISIM.VComponents.all;

--entity clockSynchronizer is
----  Port ( );
--end clockSynchronizer;

--architecture Behavioral of clockSynchronizer is

--begin


--end Behavioral;
library ieee;
use ieee.std_logic_1164.all;

entity dataSynchronizer is
  port (
    clk_in : in std_logic;
    data_in : in std_logic;
    fpgaClk : in std_logic;
    sysReset : in std_logic;    
    clkOutSync : out std_logic;
    dataOutSync : out std_logic
  );
end entity;

architecture behavioral of dataSynchronizer is

signal serData_x1 : std_logic;
signal serData_x2 : std_logic;

signal serClk_x1 : std_logic;
signal serClk_x2 : std_logic;
begin
    synchronizer : process (fpgaClk) is 
    begin
    if rising_edge(fpgaClk) then
        if sysReset = '1' then
            serClk_x1 <= '0';
            serClk_x2 <= '0';
            clkOutSync <= '0';
            serData_x1 <= '0';
            serData_x2 <= '0';
            dataOutSync <= '0';
        else
            serClk_x1 <= clk_in;
            serClk_x2 <= serClk_x1;
            clkOutSync <= serClk_x2;
            serData_x1 <= data_in;
            serData_x2 <= serData_x1;
            dataOutSync <= serData_x2;
        end if;
    end if;
end process;
end behavioral;