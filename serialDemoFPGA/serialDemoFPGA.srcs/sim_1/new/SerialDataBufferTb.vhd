----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 27.02.2023 20:50:25
-- Design Name: 
-- Module Name: SerialDataBufferTb - Behavioral
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

entity SerialDataBufferTb is
    --  Port ( );
end SerialDataBufferTb;

architecture Behavioral of SerialDataBufferTb is

    component SerialDataBuffer is
        Port ( clk100Mhz : in STD_LOGIC;
             sysReset : in STD_LOGIC;
             serialData : in STD_LOGIC_VECTOR (1808 -1 downto 0);
             tileData : out STD_LOGIC_VECTOR (1800 -1 downto 0);
             entityData : out STD_LOGIC_VECTOR (1200 -1 downto 0);
             soundData : out STD_LOGIC_VECTOR (8 -1 downto 0);
             hudData : out STD_LOGIC_VECTOR (24 -1 downto 0));
    end component SerialDataBuffer;

    signal clk : STD_LOGIC := '0';
    signal sysReset : STD_LOGIC := '0';

    signal serialData : STD_LOGIC_VECTOR(1808 -1 downto 0) := (others => '1');

    signal tileData : STD_LOGIC_VECTOR(1800 -1 downto 0) := (others => '0');
    signal entityData : STD_LOGIC_VECTOR (1200 -1 downto 0):= (others => '0');
    signal soundData : STD_LOGIC_VECTOR(8 -1 downto 0):= (others => '0');
    signal hudData : STD_LOGIC_VECTOR (24 -1 downto 0):= (others => '0');

begin



    UUT : SerialDataBuffer Port map(
            clk100Mhz => clk,
            sysReset => sysReset,
            serialData => serialData,
            tileData => tileData,
            entityData => entityData,
            soundData => soundData,
            hudData => hudData
        );
        
    process 
    begin
        
        sysReset <= '1';
        wait for 5 ns;
        sysReset <= '0';
        wait for 5 ns;
        
        serialData(7 downto 0) <= (others => '0');
        serialData(1230 -1 downto 8) <= (others => '1');
        serialData(1240 -1 downto 1230) <= (others => '0');
        
        wait for 5 ns;
        clk <= '1';
        wait for 5 ns;
        clk <= '0';
        wait for 5 ns;
        
        
        
        
        
        wait;
    end process;


end Behavioral;
