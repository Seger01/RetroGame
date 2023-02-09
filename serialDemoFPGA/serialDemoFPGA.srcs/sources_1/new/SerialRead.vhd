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
--use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx leaf cells in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

ENTITY SerialRead IS
    PORT (
        clkIn : IN STD_LOGIC;
        dataIn : IN STD_LOGIC;
        sysReset : IN STD_LOGIC;
        tileData : OUT STD_LOGIC_VECTOR (15 DOWNTO 0)
        );
END SerialRead;

ARCHITECTURE Behavioral OF SerialRead IS

    --    TYPE FSM_state IS (RESET, IDLE, CHECKING_CLOCK, READING, CHECKING_BUFFER, OUTPUT_BUFFER);
    --    SIGNAL State, Nextstate : FSM_state;

    --    SIGNAL tileDataBuffer : STD_LOGIC_VECTOR(15 DOWNTO 0) := (OTHERS => '0');
    --    SIGNAL dataIndex : INTEGER RANGE 0 TO 15 := 0;

    --BEGIN
    --    FSM_register : PROCESS (clk_100Mhz, sysReset)
    --    BEGIN
    --        IF (sysReset = '1') THEN
    --            state <= Reset; --Asynch reset
    --        ELSIF (rising_edge(clk_100Mhz)) THEN
    --            state <= Nextstate; --State is nextstate
    --        END IF;
    --    END PROCESS FSM_register;

    --    Logic : PROCESS (state, clkIn)
    --    BEGIN

    --        nextstate <= state; --nextstate is state
    --        tileData <= tileDataBuffer;
    --        tileDataBuffer <=tileDataBuffer;
    --        dataIndex <= dataIndex;

    --        CASE state IS
    --            WHEN RESET =>

    --                --reset values upon reset
    --                tileDataBuffer <= (OTHERS => '0');
    --                tileData <= (OTHERS => '0');
    --                dataIndex <= 0;
    --                Nextstate <= IDLE;

    --            WHEN IDLE =>
    --                tileDataBuffer <= (OTHERS => '0');
    --                IF (clkIn = '1') THEN
    --                    Nextstate <= IDLE;
    --                ELSIF (clkIn = '0') THEN
    --                    Nextstate <= CHECKING_CLOCK;
    --                END IF;

    --            WHEN CHECKING_CLOCK =>
    --                IF (clkIn = '1') THEN
    --                    Nextstate <= READING;
    --                ELSIF (clkIn = '0') THEN
    --                    Nextstate <= CHECKING_CLOCK;
    --                END IF;

    --            WHEN READING =>
    --                tileDataBuffer(dataIndex) <= dataIn;
    --                dataIndex <= dataIndex + 1;
    --                Nextstate <= CHECKING_BUFFER;

    --            WHEN CHECKING_BUFFER =>
    --                IF dataIndex >= 16 THEN
    --                    Nextstate <= OUTPUT_BUFFER;
    --                ELSIF (clkIn = '0') THEN
    --                    NextState <= CHECKING_CLOCK;
    --                ELSE
    --                    Nextstate <= CHECKING_BUFFER;
    --                END IF;

    --            WHEN OUTPUT_BUFFER =>
    --                tileData <= tileDataBuffer;

    --                dataIndex <= 0;
    --                Nextstate <= IDLE;
    --            when others =>
    --                nextstate <= state; --nextstate is state
    --                tileData <= tileDataBuffer;
    --                tileDataBuffer <=tileDataBuffer;
    --                dataIndex <= dataIndex;

    --        END CASE;
    --    END PROCESS Logic;

    signal received_data : STD_LOGIC_VECTOR (15 downto 0);
    signal bit_counter : integer range 0 to 16 := 0;
    
begin
    process(clkIn, sysReset)
    begin
        if sysReset = '1' then
            tileData <= (others => '0');
            bit_counter <= 1;
            received_data <= (others => '0');
        elsif (clkIn = '1' and clkIn'event) then
            if bit_counter < 16 then
                received_data(bit_counter) <= dataIn;
                bit_counter <= bit_counter + 1;
            else
                tileData <= received_data;
                bit_counter <= 0;
                received_data <= (others => '0');
            end if;
        end if;
    end process;

END Behavioral;