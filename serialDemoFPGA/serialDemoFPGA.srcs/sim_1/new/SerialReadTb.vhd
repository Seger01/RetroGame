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
        Port ( clkIn : IN STD_LOGIC;
            dataIn : IN STD_LOGIC;
            sysReset : IN STD_LOGIC;
            tileData : OUT STD_LOGIC_VECTOR (1199 DOWNTO 0)
            );
    end component SerialRead;

    signal clk : STD_LOGIC;
    signal data : STD_LOGIC;
    signal tileData : STD_LOGIC_VECTOR(1199 downto 0);
    signal sysReset : STD_LOGIC;
    
    
begin

    UUT : SerialRead Port map ( 
                 clkIn => clk,
                 dataIn => data,
                 sysReset => sysReset,
                 tileData => tileData
                 );

    process
    begin
        data <= '1';
        clk <= '0';
        sysReset <= '1';
        wait for 50 ns;
        sysReset <= '0';
        wait for 50 ns;
        data <= '0';
        wait for 50 ns;
        clk <= '1';
        wait for 50 ns;
                          
        clk <= '0';
        wait for 50 ns;
        data <= '1';
        for I in 1 to 1199 loop
            

            wait for 50 ns;
            clk <= '1';
            wait for 50 ns;
            


            clk <= '0';
            wait for 50 ns;
           
        end loop;
        data <= '0';
        wait for 50 ns;
        clk <= '1';
        wait for 50 ns;
                    
        clk <= '0';
        wait for 50 ns;
--        wait for 500 ns;
--        for I in 0 to 15 loop
                    
--            data <= '0';
--            wait for 50 ns;
--            clk <= '1';
--            wait for 50 ns;
            
--            clk <= '0';
--            wait for 50 ns;
                    
--        end loop;
--        clk <= '1';
--        wait for 50 ns;
                   
--        clk <= '0';
--        wait for 50 ns;
--        data <= '1';
--        wait for 50 ns;
--        for I in 0 to 15 loop
                            
--            data <= NOT data;
--            wait for 50 ns;
--            clk <= '1';
--            wait for 50 ns;               
                        
--            clk <= '0';
--            wait for 50 ns;                                               
--        end loop;
--        data <= '0';
--        wait for 50 ns;
--        clk <= '1';
--        wait for 50 ns;
                               
--        clk <= '0';
--        wait for 50 ns;
        wait;
    end process;

end Behavioral;
