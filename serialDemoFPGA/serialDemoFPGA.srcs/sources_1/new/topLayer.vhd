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

component SerialRead is
    Port (
        clkIn : IN STD_LOGIC;
        dataIn : IN STD_LOGIC;
        sysReset : IN STD_LOGIC;
        tileData : OUT STD_LOGIC_VECTOR (15 DOWNTO 0)
        );
end component SerialRead;

component dataSynchronizer is
  port (
    clk_in : in std_logic;
    data_in : in std_logic;
    fpgaClk : in std_logic;
    sysReset : in std_logic;    
    clkOutSync : out std_logic;
    dataOutSync : out std_logic
  );
end component;

signal syncClk : std_logic;
signal syncData : std_logic;
signal tileData : STD_LOGIC_VECTOR(15 downto 0);
             
begin

--    ledsOut(15) <= serialClkIn;
--    ledsOut(14) <= serialDataIn;
--    ledsOut(13) <= sysReset;
    ledsOut(15 downto 0) <= tileData(15 downto 0);
    serialReceiver : SerialRead Port map ( 
         clkIn => syncClk,
         dataIn => syncData,
         sysReset => sysReset,
         tileData => tileData
         );
         
     synchronizeData : dataSynchronizer Port map ( 
         clk_In => serialClkIn,
         data_in => serialDataIn,
         fpgaClk => clk100Mhz,
         sysReset => sysReset,
         clkOutSync => syncClk,
         dataOutSync => syncData
         );
end Behavioral;
