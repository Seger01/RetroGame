library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity squareWave is
    Port (CLK : in std_logic;
         noteIndicator : in std_logic_vector (5 downto 0);
         toggle : in std_logic;
         PWM : out std_logic
        );
end squareWave;

architecture Behavioral of squareWave is


    -- signals used in counters
    signal counter : integer := 0;
    signal counterLimit : integer := 2000; -- octave
    signal noteIndicatorTest : std_logic_vector(5 downto 0) := "100000";
    signal effectCounter : integer := 0; -- attack

    signal pwmSignal : std_logic := '0';

    signal lastToggle : std_logic := '0';

    signal tempCount : integer := 0;

    signal soundTimer : integer := 0; -- indicates how long a sound lasts


    signal soundEnable : std_logic := '0';

    signal subToggle : std_logic := '0';

    signal octaveIncrease : integer := 0;

    signal octaveLimit : integer := 0;

    signal invert : std_logic := '0';

    signal normalizeCounter : integer := 0; -- used to normalize frequentie to 5000
    signal normalizeCounterLimit : integer := 0;

    signal setAttackRoof : integer := 0;

    signal attack : integer := 0;
    signal attackRoof : integer := 0;
    signal attackFloor : integer := 0;
    signal attackGain : integer := 0; -- the more you add 

    signal timeNormalizer : integer := 0;
    signal timeCounter : integer := 0;
    signal timerLimit : integer := 0;
    signal setTimerLimit : integer := 0;

begin
    --
    BGM : process(clk)
    begin
        if rising_edge(clk) then
            case noteIndicator is
                when "100000" => effectCounter <= 5000000; -- player death
                    normalizeCounterLimit <= 15000;
                    soundTimer <= 750000000;
                    octaveIncrease <= 100;
                    octaveLimit <= 3000;
                    invert <= '0';

                    setAttackRoof <= 10000;
                    attackGain <= 1000;
                    attackFloor <= 1000;
                    setTimerLimit <= 10000;
                when "010000" => effectCounter <= 250000; -- shoot
                    normalizeCounterLimit <= 3000;
                    soundTimer <= 5000000;
                    octaveIncrease <= 100;
                    octaveLimit <= 3000;
                    invert <= '0';
                when "001000" => effectCounter <= 10000; -- walk
                    normalizeCounterLimit <= 1500;
                    soundTimer <= 50000;
                    octaveLimit <= 5000;
                    octaveIncrease <= 500;
                    invert <= '0';
                when "000100" => effectCounter <= 500000; -- powerup
                    normalizeCounterLimit <= 4500;
                    invert <= '1';
                    soundTimer <= 10000000;
                    octaveIncrease <= 100;
                    octaveLimit <= 3000;
                when "000010" => effectCounter <= 500;
                when others => effectCounter <= 0;
            end case;

            timerLimit <= setTimerLimit;

            -- when new signal reset
            if toggle = '1' and lastToggle = '0' then
                --set all counters to 0
                attack <= 0;
                attackRoof <= setAttackRoof;
                timeCounter <= 0;
            end if;

            -- normalizes pwm to 5000
            if timeNormalizer >= normalizeCounterLimit then
                timeNormalizer <= 0;
                timeCounter <= timeCounter + 1;
            else
                timeNormalizer <= timeNormalizer + 1;
            end if;

            -- sets timer depending on component, timer is used to set how long a SFX lasts
            if timeCounter >= timerLimit  then
                soundEnable <= '0';
            else
                soundEnable <= '1';
            end if;

            if soundEnable = '1' then
                -- converts hertz for each component to 5000
                if normalizeCounter >= normalizeCounterLimit then
                    normalizeCounter <= 0;
                    attack <= attack + 1;
                else
                    normalizeCounter <= normalizeCounter + 1;
                end if;

                -- rising square
                if invert = '1' then
                    if attack >= attackRoof then
                        if attackRoof  <= attackFloor then
                            attackRoof <= setAttackRoof;
                        end if;
                        attack <= 0;
                        attackRoof <= attackRoof + attackGain;
                    else
                        attack <= attack + 1;
                    end if;
                else
                    -- falling square
                    if attack >= attackRoof then
                        if attackRoof  <= attackFloor then
                            attackRoof <= setAttackRoof;
                        end if;
                        attack <= 0;
                        attackRoof <= attackRoof + attackGain;
                    else
                        attack <= attack + 1;
                    end if;
                end if;

                -- toggles pwm signal
                if pwmSignal = '1' then
                    PWM <= '1';
                else
                    PWM <= '0';
                end if;

                -- sub loop counter toggles pwm (duty cycle)
                if attack >= attackRoof  then
                    if pwmSignal = '1' then
                        pwmSignal <= '0';
                    else
                        pwmSignal <= '1';
                    end if;
                end if;
            end if;
            lastToggle <= toggle;
        end if;


    end process;
end Behavioral;
