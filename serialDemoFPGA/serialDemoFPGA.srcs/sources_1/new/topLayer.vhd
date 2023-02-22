----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 06.02.2023 12:34:53
-- Design Name: 
-- Module Name: topLayer - Behavioral
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

entity topLayer is
    Port ( serialClkIn : in STD_LOGIC;
           clk100Mhz : in STD_LOGIC;
           serialDataIn : in STD_LOGIC;
           sysReset : in STD_LOGIC;
           ledsOut : out STD_LOGIC_VECTOR (15 downto 0));
end topLayer;

architecture Behavioral of topLayer is

component SerialRead IS
    PORT (
        clkInExternal : IN STD_LOGIC;
        dataInExternal : IN STD_LOGIC;
        clk_100Mhz : IN STD_LOGIC;
        sysReset : IN STD_LOGIC;
        tileData : OUT STD_LOGIC_VECTOR (1800 -1 DOWNTO 0)
        );
END component SerialRead;



signal syncClk : std_logic;
signal syncData : std_logic;
signal tileData : STD_LOGIC_VECTOR(1800 -1 downto 0);
             
begin


    ledsOut(15 downto 0) <= tileData(15 downto 0);
    serialReceiver : SerialRead Port map ( 
         clkInExternal => serialClkIn,
         dataInExternal => serialDataIn,
         clk_100Mhz => clk100Mhz,
         sysReset => sysReset,
         tileData => tileData
         );
end Behavioral;
