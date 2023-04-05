library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity SynthBGM is
    Port (CLK : in std_logic;
         noteIndicator : in std_logic_vector (3 downto 0);
         toggle : in std_logic;
         PWM : out std_logic
        );
end SynthBGM;

architecture Behavioral of SynthBGM is
    -- signals used in counters
    signal counter : integer  range 0 to 255 := 0;
    signal counter2 : integer := 0;
    signal counterLimit : integer := 0;

    signal pwmSignal : std_logic := '0';

    signal tempToggle : std_logic := '0';

begin
    BGM : process(clk)
    begin
        if rising_edge(clk) then
            if toggle = '1' then
                if ( tempToggle = '0' ) then
                    counter2 <= counter2 + 1;
                end if;
                -- chooses tone depending on signal
                case noteIndicator is
                    when "0000" => counterLimit <= 0;
                    when "0001" => counterLimit <= 2255; -- f
                    when "0010" => counterLimit <= 2009; -- g
                    when "0011" => counterLimit <= 1790; -- a
                    when "0100" => counterLimit <= 1595;  -- b
                    when "0101" => counterLimit <= 1505;  -- c
                    when "0110" => counterLimit <= 1341;  -- d
                    when "0111" => counterLimit <= 1194;  -- e
                    when "1000" => counterLimit <= 1127;  -- f
                    when "1111" => counterLimit <= 800;
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
            tempToggle <= toggle;
        end if;
    end process;
end Behavioral;
