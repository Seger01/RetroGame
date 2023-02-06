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
    Port ( clkIn : in STD_LOGIC;
           dataIn : in STD_LOGIC;
           sysReset : in STD_LOGIC;
           ledsOut : out STD_LOGIC_VECTOR (15 downto 0));
end topLayer;

architecture Behavioral of topLayer is

component SerialRead is
    Port (
        clkIn : IN STD_LOGIC;
        dataIn : IN STD_LOGIC;
        sysReset : IN STD_LOGIC;
        tileData : OUT STD_LOGIC_VECTOR (1199 DOWNTO 0)
        );
end component SerialRead;

signal tileData : STD_LOGIC_VECTOR(1199 downto 0);
             
begin

    serialReceiver : SerialRead Port map ( 
         clkIn => clkIn,
         dataIn => dataIn,
         sysReset => sysReset,
         tileData => tileData
         );
         
    ledsOut <= tileData(15 downto 0);

end Behavioral;
