----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 02.02.2023 15:13:37
-- Design Name: 
-- Module Name: SerialReadTb - Behavioral
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

entity SerialReadTb is
    --  Port ( );
end SerialReadTb;

architecture Behavioral of SerialReadTb is

    component SerialRead is
        Port ( clkIn : in STD_LOGIC;
             dataIn : in STD_LOGIC;
             clk_100Mhz : in STD_LOGIC;
             sysReset : in STD_LOGIC;
             tileData : out STD_LOGIC_VECTOR (15 downto 0));
    end component SerialRead;

    signal clk_100Mhz : STD_LOGIC;
    signal clk : STD_LOGIC;
    signal data : STD_LOGIC;
    signal tileData : STD_LOGIC_VECTOR(15 downto 0);
    signal sysReset : STD_LOGIC;

begin

    UUT : SerialRead Port map ( clkIn => clk,
                 dataIn => data,
                 clk_100Mhz => clk_100Mhz,
                 sysReset => sysReset,
                 tileData => tileData);


    process
    begin
    data <= '1';
    sysReset <= '1';
    wait for 5 ns;
    sysReset <= '0';
    wait for 5 ns;
        for I in 0 to 16 loop
            for J in 0 to 20 loop
                clk_100Mhz  <= '1';
                wait for 1 ns;
                clk_100Mhz <= '0';
                wait for 1 ns;
            end loop;
            
            wait for 5 ns;
            clk <= '1';
            wait for 5 ns;
            for J in 0 to 20 loop
                clk_100Mhz  <= '1';
                wait for 1 ns;
                clk_100Mhz <= '0';
                wait for 1 ns;
            end loop;

            
            clk <= '0';
            wait for 5 ns;
            for J in 0 to 20 loop
                clk_100Mhz  <= '1';
                wait for 1 ns;
                clk_100Mhz <= '0';
                wait for 1 ns;
            end loop;
        end loop;
        wait;
    end process;

end Behavioral;
