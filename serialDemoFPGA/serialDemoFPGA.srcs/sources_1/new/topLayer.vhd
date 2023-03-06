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
        serialData : OUT STD_LOGIC_VECTOR (1808 -1 DOWNTO 0)
    );
END component SerialRead;

component SerialDataBuffer is
    Port ( clk100Mhz : in STD_LOGIC;
         sysReset : in STD_LOGIC;
         serialData : in STD_LOGIC_VECTOR (1808 -1 downto 0);
         tileData : out STD_LOGIC_VECTOR (1800 -1 downto 0);
         entityData : out STD_LOGIC_VECTOR (1200 -1 downto 0);
         soundData : out STD_LOGIC_VECTOR (8 -1 downto 0);
         hudData : out STD_LOGIC_VECTOR (24 -1 downto 0));
end component SerialDataBuffer;


signal syncClk : std_logic;
signal syncData : std_logic;
signal serialData : STD_LOGIC_VECTOR(1808 -1 downto 0);

signal tileData : STD_LOGIC_VECTOR(1800 -1 downto 0);
signal entityData : STD_LOGIC_VECTOR (1200 -1 downto 0);
signal soundData : STD_LOGIC_VECTOR(8 -1 downto 0);
signal hudData : STD_LOGIC_VECTOR (24 -1 downto 0);

begin

    ledsOut(15 downto 8) <= tileData (1800 -1 downto 1792);
    ledsOut(7 downto 0) <= hudData(23 downto 16);
serialReceiver : SerialRead Port map (
            clkInExternal => serialClkIn,
            dataInExternal => serialDataIn,
            clk_100Mhz => clk100Mhz,
            sysReset => sysReset,
            serialData => serialData
        );

    serialBuffer : SerialDataBuffer Port map (
            sysReset => sysReset,
            clk100Mhz => clk100Mhz,
            serialData => serialData,
            tileData => tileData,
            entityData => entityData,
            soundData => soundData,
            hudData => hudData
            
        );
end Behavioral;
