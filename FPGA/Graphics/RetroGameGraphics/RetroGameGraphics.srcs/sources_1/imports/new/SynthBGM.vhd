library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity SynthBGM is
    Port (CLK : in std_logic;
         noteIndicator : in std_logic_vector (3 downto 0);
         PWM : out std_logic
        );
end SynthBGM;

architecture Behavioral of SynthBGM is
    -- signals used in counters
    signal counter2 : integer := 0;
    signal counterLimit : integer := 0;

    signal pwmSignal : std_logic := '0';

    signal normalizer : integer := 0;

begin
    BGM : process(clk)
    begin
        if rising_edge(clk) then               
            --if ( tempToggle = '0' ) then
            counter2 <= counter2 + 1;
            --end if;
            
            -- chooses tone depending on signal
            case noteIndicator is
                when "0000" => counterLimit <= 0;
                when "0001" => counterLimit <= 4545/4; -- a 1
                when "0010" => counterLimit <= 4050/4; -- b 2
                when "0011" => counterLimit <= 3822/4; -- c 3
                when "0100" => counterLimit <= 3405/4;  -- d 4
                when "0101" => counterLimit <= 3034/4;  -- e 5
                when "0110" => counterLimit <= 2863/4;  -- f 6
                when "0111" => counterLimit <= 2551/4;  -- g 7
                when "1000" => counterLimit <= 2273/4;  -- a 8
                when "1111" => counterLimit <= 800/4;
                when others => counterLimit <= 0;
            end case;

            -- toggles pwm signal
            if pwmSignal = '1' then
                PWM <= '1';
            else
                PWM <= '0';
            end if;

            -- sub loop counter
            if counter2 >= counterLimit then
                counter2 <= 0;
                if pwmSignal = '1' then
                    pwmSignal <= '0';
                else
                    pwmSignal <= '1';
                end if;
            end if;
        end if;
    end process;
end Behavioral;
