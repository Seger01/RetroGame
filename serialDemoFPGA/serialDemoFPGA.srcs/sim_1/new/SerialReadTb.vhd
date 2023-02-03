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
             tileData : out STD_LOGIC_VECTOR (1199 downto 0));
    end component SerialRead;

    signal clk_100Mhz : STD_LOGIC;
    signal clk : STD_LOGIC;
    signal data : STD_LOGIC;
    signal tileData : STD_LOGIC_VECTOR(1199 downto 0);

begin

    UUT : SerialRead Port map ( clkIn => clk,
                 dataIn => data,
                 clk_100Mhz => clk_100Mhz,
                 sysReset => '0',
                 tileData => tileData);


    process
    begin
        for I in 0 to 1200 loop
            for J in 0 to 200 loop
                clk_100Mhz  <= '1';
                wait for 5 ps;
                clk_100Mhz <= '0';
                wait for 5 ps;
            end loop;
            data <= '1';
            wait for 5 ps;
            clk <= '1';
            wait for 5 ps;
            for J in 0 to 200 loop
                clk_100Mhz  <= '1';
                wait for 5 ps;
                clk_100Mhz <= '0';
                wait for 5 ps;
            end loop;

            data <= '0';
            clk <= '0';
            for J in 0 to 200 loop
                clk_100Mhz  <= '1';
                wait for 5 ps;
                clk_100Mhz <= '0';
                wait for 5 ps;
            end loop;
        end loop;
        wait;
    end process;

end Behavioral;
