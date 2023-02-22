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

    component SerialRead IS
        PORT (
            clkInExternal : IN STD_LOGIC;
            dataInExternal : IN STD_LOGIC;
            clk_100Mhz : IN STD_LOGIC;
            sysReset : IN STD_LOGIC;
            tileData : OUT STD_LOGIC_VECTOR (1800 -1 DOWNTO 0)
        );
    END component SerialRead;

    signal clk : STD_LOGIC := '0';
    signal data : STD_LOGIC := '0';
    signal tileData : STD_LOGIC_VECTOR(1800 -1 downto 0);
    signal sysReset : STD_LOGIC := '0';
    signal clk_100Mhz : STD_LOGIC := '0';

    signal testByte : STD_LOGIC_VECTOR(15 downto 0) := "1111000011110000";


begin

    UUT : SerialRead Port map (
            clkInExternal => clk,
            dataInExternal => data,
            clk_100Mhz => clk_100Mhz,
            sysReset => sysReset,
            tileData => tileData
        );

    process
    begin
        --        data <= '1';
        --        clk <= '0';
        --        sysReset <= '1';

        --        for j in 1 to 25 loop
        --            clk_100Mhz <= '1';
        --            wait for 1 ns;
        --            clk_100Mhz <= '0';
        --            wait for 1 ns;
        --        end loop;

        --        sysReset <= '0';
        --        for j in 1 to 25 loop
        --            clk_100Mhz <= '1';
        --            wait for 1 ns;
        --            clk_100Mhz <= '0';
        --            wait for 1 ns;
        --        end loop;
        sysReset <= '1';
        wait for 1ns;
        sysReset <= '0';
        wait for 1 ns;

        --        data    <=  '1';        --start bit
        --        clk     <=  '1';
        --        for N in 0 to 30 loop                    --for loop to clock in the hardwareclock and data
        --            clk_100Mhz <= '1';
        --            wait for 1 ns;
        --            clk_100Mhz <= '0';
        --            wait for 1 ns;
        --        end loop;
        --        clk     <=  '0';
        --        for N in 0 to 30 loop                    --for loop to clock in the hardwareclock and data
        --            clk_100Mhz <= '1';
        --            wait for 1 ns;
        --            clk_100Mhz <= '0';
        --            wait for 1 ns;
        --        end loop;

        for I in 1 TO 10 loop                        --for loop for 7 data bits
            data    <=  '0';
            clk     <=  '1';
            for N in 0 to 30 loop                    --for loop to clock in the hardwareclock and data
                clk_100Mhz <= '1';
                wait for 1 ns;
                clk_100Mhz <= '0';
                wait for 1 ns;
            end loop;
            clk     <=  '0';
            for N in 0 to 30 loop                    --for loop to clock in the hardwareclock and data
                clk_100Mhz <= '1';
                wait for 1 ns;
                clk_100Mhz <= '0';
                wait for 1 ns;
            end loop;
        end loop;

        for I in 1 TO 1230 loop                        --for loop for 7 data bits
            data    <=  '1';
            clk     <=  '1';
            for N in 0 to 30 loop                    --for loop to clock in the hardwareclock and data
                clk_100Mhz <= '1';
                wait for 1 ns;
                clk_100Mhz <= '0';
                wait for 1 ns;
            end loop;
            clk     <=  '0';
            for N in 0 to 30 loop                    --for loop to clock in the hardwareclock and data
                clk_100Mhz <= '1';
                wait for 1 ns;
                clk_100Mhz <= '0';
                wait for 1 ns;
            end loop;
        end loop;

        for N in 0 to 300 loop                    --for loop to clock in the hardwareclock and data
            clk_100Mhz <= '1';
            wait for 1 ns;
            clk_100Mhz <= '0';
            wait for 1 ns;
        end loop;

        for I in 1 TO 1240 loop                        --for loop for 7 data bits
            data    <=  '0';
            clk     <=  '1';
            for N in 0 to 30 loop                    --for loop to clock in the hardwareclock and data
                clk_100Mhz <= '1';
                wait for 1 ns;
                clk_100Mhz <= '0';
                wait for 1 ns;
            end loop;
            clk     <=  '0';
            for N in 0 to 30 loop                    --for loop to clock in the hardwareclock and data
                clk_100Mhz <= '1';
                wait for 1 ns;
                clk_100Mhz <= '0';
                wait for 1 ns;
            end loop;
        end loop;


        --        data    <=  '1';

        --        clk     <=  '1';
        --        for N in 0 to 30 loop                    --for loop to clock in the hardwareclock and data
        --            clk_100Mhz <= '1';
        --            wait for 1 ns;
        --            clk_100Mhz <= '0';
        --            wait for 1 ns;
        --        end loop;
        --        clk     <=  '0';
        --        for N in 0 to 30 loop                    --for loop to clock in the hardwareclock and data
        --            clk_100Mhz <= '1';
        --            wait for 1 ns;
        --            clk_100Mhz <= '0';
        --            wait for 1 ns;
        --        end loop;

        --        data    <=  '1';        --stop bit
        --        clk     <=  '1';
        --        for N in 0 to 30 loop                    --for loop to clock in the hardwareclock and data
        --            clk_100Mhz <= '1';
        --            wait for 1 ns;
        --            clk_100Mhz <= '0';
        --            wait for 1 ns;
        --        end loop;
        --        clk     <=  '0';
        --        for N in 0 to 30 loop                    --for loop to clock in the hardwareclock and data
        --            clk_100Mhz <= '1';
        --            wait for 1 ns;
        --            clk_100Mhz <= '0';
        --            wait for 1 ns;
        --        end loop;
        wait;
    end process;

end Behavioral;
