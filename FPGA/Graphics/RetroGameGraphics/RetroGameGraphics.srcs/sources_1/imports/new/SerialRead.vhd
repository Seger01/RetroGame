----------------------------------------------------------------------------------
-- Company:
-- Engineer:
--
-- Create Date: 02.02.2023 15:11:46
-- Design Name:
-- Module Name: SerialRead - Behavioral
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
LIBRARY IEEE;
USE IEEE.STD_LOGIC_1164.ALL;

-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx leaf cells in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

ENTITY SerialRead IS
    PORT (
        clkInExternal : IN STD_LOGIC;
        dataInExternal : IN STD_LOGIC;
        clk_100Mhz : IN STD_LOGIC;
        sysReset : IN STD_LOGIC;
        serialData : OUT STD_LOGIC_VECTOR (2408 -1 DOWNTO 0)
    );
END SerialRead;

ARCHITECTURE Behavioral OF SerialRead IS

    component SerialReader is
        Port ( clk_ExternalHardwareIn : in STD_LOGIC;
             clk_Internal : in STD_LOGIC;
             reset : in STD_LOGIC;
             data_ExternalHardwareIn : in STD_LOGIC;
             data_ExternalHardwareOut : out STD_LOGIC;
             clk_ExternalHardwareOut : out STD_LOGIC);
    end component SerialReader;

    signal received_data : STD_LOGIC_VECTOR (2408 -1 downto 0) := (others => '0');
    signal bit_counter : unsigned(10 downto 0);

    signal readDataFlag : STD_LOGIC := '0';

    signal data_ExternalHardwareSynch : STD_LOGIC;
    signal clk_ExternalHardwareSynch : STD_LOGIC;

    type state_type is (idleState, resetState, WaitLow, WaitHigh, High, Low);
    signal current_state, next_state : state_type := idleState;


begin

    USB_Reader : SerialReader    port map(clk_ExternalHardwareIn    =>  clkInExternal,
                 clk_Internal              =>  clk_100Mhz,
                 reset                     =>  sysReset,
                 data_ExternalHardwareIn   =>  dataInExternal,
                 data_ExternalHardwareOut  =>  data_ExternalHardwareSynch,
                 clk_ExternalHardwareOut   =>  clk_ExternalHardwareSynch
                );
    process(sysReset, clk_100Mhz)        --process for async reset and sync states
    begin
        if sysReset = '1' then
            current_state <= resetState;
        elsif clk_100Mhz'event and clk_100Mhz = '1' then
            current_state <= next_state;
        end if;
    end process;


    --state machine transitions and actions
    process(current_state, clk_ExternalHardwareSynch, clk_100Mhz)
    begin
        case current_state is
            when resetState =>      --reset always goes to idle
                next_state <= WaitLow;        --transition
                readDataFlag <= '0';


            when idleState  =>      --idle goes to begin when data is 0 and falling edge of external clock. otherwise stay same state
                readDataFlag <= '0';

                if(clk_ExternalHardwareSynch = '0') then
                    next_state <= WaitLow;
                else
                    next_state <= WaitHigh;
                end if;

            when WaitLow =>     --always go to count state
                readDataFlag <= '0';

                if(clk_ExternalHardwareSynch = '1') then
                    next_state <= High;
                else
                    next_state <= WaitLow;
                end if;
            when WaitHigh =>     --always go to count state
                readDataFlag <= '0';

                if(clk_ExternalHardwareSynch = '0') then
                    next_state <= Low;
                else
                    next_state <= WaitHigh;
                end if;
            when Low =>     --always go to count state
                readDataFlag <= '0';
                next_state <= WaitLow;    --transition
            when High =>     --always go to count state
                readDataFlag <= '1';
                next_state <= WaitHigh;    --transitionwhen WaitLow =>     --always go to count state
        end case;
    end process;

    process(sysReset, readDataFlag, clk_100Mhz)
    begin
        if sysReset = '1' then
            serialData <= (others => '1');
            bit_counter <= (others => '0');
            received_data <= (others => '1');
        elsif rising_edge(clk_100Mhz) then
            --serialData <= (others => '1'); 
            if (readDataFlag = '1') then
                received_data(to_integer(bit_counter)) <= data_ExternalHardwareSynch;
                bit_counter <= bit_counter + 1;
            else
                if bit_counter >= 2408 then
                    serialData <= received_data;
                    bit_counter <= (others => '0');
                else
                    null;
                end if;
            end if;
        end if;
    end process;
END Behavioral;