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

    signal normalizer : integer := 0;

begin
    BGM : process(clk)
    begin
        if rising_edge(clk) then

            if toggle = '1' then
                if normalizer >= 25 then
                    counter <= counter + 1;
                    normalizer <= 0;
                else
                    normalizer <= normalizer + 1;
                end if;

                if ( tempToggle = '0' ) then
                    counter2 <= counter2 + 1;
                end if;


                -- chooses tone depending on signal
                case noteIndicator is
                    when "0000" => counterLimit <= 0;
                    when "0001" => counterLimit <= 4545; -- a 1
                    when "0010" => counterLimit <= 4050; -- b 2
                    when "0011" => counterLimit <= 3822; -- c 3
                    when "0100" => counterLimit <= 3405;  -- d 4
                    when "0101" => counterLimit <= 3034;  -- e 5
                    when "0110" => counterLimit <= 2863;  -- f 6
                    when "0111" => counterLimit <= 2551;  -- g 7
                    when "1000" => counterLimit <= 2273;  -- a 8
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
                if counter >= counterLimit then
                    counter <= 0;
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
