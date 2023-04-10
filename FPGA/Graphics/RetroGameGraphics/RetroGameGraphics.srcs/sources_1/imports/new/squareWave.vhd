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

    signal pwmsignal : std_logic := '0';

    signal lastToggle : std_logic := '0';

    signal soundEnable : std_logic := '0';

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

    signal soundLength : integer := 0;

    constant clockFrequency : integer := 25e6;
    constant clockperiod : time := 100ms / clockFrequency;

    signal tempCounter : integer := 0;

begin
    --
    BGM : process(clk)
    begin
        if rising_edge(clk ) then
            if toggle = '1' and lastToggle = '0' then
                if soundEnable = '0' then
                    timeCounter <= 0;
                    attack <= 0;
                    attackRoof <= setAttackRoof;
                end if;


            end if;
            case noteIndicator is
                    when "100000" => normalizeCounterLimit <= 150000/4; -- player death
                    invert <= '0';
                    setAttackRoof <= 50000/4;
                    attackGain <= 5000/4;
                    attackFloor <= 1000/4;
                    setTimerLimit <= 1500/4;
                when "010000" =>  normalizeCounterLimit <= 2666/4; -- shoot
                    invert <= '0';
                    setAttackRoof <= 100000/4;
                    attackGain <= 1000/4;
                    attackFloor <= 50000/4;
                    setTimerLimit <= 1000/4;
                    invert <= '0';
                when "001000" => normalizeCounterLimit <= 2000/4; -- walk
                    invert <= '0';
                    setAttackRoof <= 20000/4;
                    attackGain <= 2000/4;
                    attackFloor <= 5000/4;
                    setTimerLimit <= 500/4;

                when "000100" => normalizeCounterLimit <= 4500/4; -- powerup
                    invert <= '1';
                    setAttackRoof <= 50000/4;
                    attackGain <= 100/4;
                    attackFloor <= 1000/4;
                    setTimerLimit <= 1000/4;
                when "000010" => normalizeCounterLimit <= 1000/4; -- player death
                    invert <= '0';
                    setAttackRoof <= 50000/4;
                    attackGain <= 5000/4;
                    attackFloor <= 1000/4;
                    setTimerLimit <= 50000/4;
                when "000001" => normalizeCounterLimit <= 4500/4; -- hit
                    invert <= '1';
                    setAttackRoof <= 50000/4;
                    attackGain <= 100/4;
                    attackFloor <= 5000/4;
                    setTimerLimit <= 1000/4;
                when others => attack <= 0;
            end case;

            timerLimit <= setTimerLimit;

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
                -- rising square
                if invert = '1' then

                    if attack >= attackRoof then
                        if attackRoof  <= attackFloor then
                            attackRoof <= setAttackRoof;
                        end if;
                        attack <= 0;
                        attackRoof <= attackRoof - attackGain;
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