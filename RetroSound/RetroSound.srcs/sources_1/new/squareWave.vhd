library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity squareWave is
    Port (CLK : in std_logic;
         noteIndicator : in std_logic_vector (5 downto 0);
         toggle : in std_logic;
         enable : out std_logic;
         PWM : out std_logic
        );
end squareWave;

architecture Behavioral of squareWave is

    signal pwmsignal : std_logic := '0';

    signal lastToggle : std_logic := '0';

    signal soundEnable : std_logic := '0';

    signal invert : std_logic := '0';
    signal normalizeCounterLimit : integer range 0 to 150000 := 0;

    signal setAttackRoof : integer := 0;

    signal attack : integer := 0;
    signal attackRoof : integer := 0;
    signal attackFloor : integer range 0 to 50000 := 0;
    signal attackGain : integer range 0 to 10000 := 0; -- the more you add 

    signal timeNormalizer : integer range 0 to 150000:= 0;
    signal timeCounter : integer range 0 to 50000 := 0;
    signal timerLimit : integer range 0 to 50000 := 0;
    signal setTimerLimit : integer range 0 to 50000 := 0;
begin
    --
    BGM : process(clk)
    begin
        if rising_edge(clk ) then
            enable <= soundEnable;
            if toggle = '1' and lastToggle = '0' then
                if soundEnable = '0' then
                    timeCounter <= 0;
                    attack <= 0;
                    attackRoof <= setAttackRoof;
                end if;


            end if;
            case noteIndicator is
                when "100000" => normalizeCounterLimit <= 150000; -- player death
                    invert <= '0';
                    setAttackRoof <= 50000;
                    attackGain <= 5000;
                    attackFloor <= 1000;
                    setTimerLimit <= 1500;
                when "010000" =>  normalizeCounterLimit <= 2666; -- shoot
                    invert <= '0';
                    setAttackRoof <= 10000;
                    attackGain <= 5000;
                    attackFloor <= 1000;
                    setTimerLimit <= 1000;
                    invert <= '0';
                when "001000" => normalizeCounterLimit <= 4000; -- walk
                    invert <= '0';
                    setAttackRoof <= 20000;
                    attackGain <= 2000;
                    attackFloor <= 5000;
                    setTimerLimit <= 500;

                when "000100" => normalizeCounterLimit <= 4500; -- powerup
                    invert <= '1';
                    setAttackRoof <= 50000;
                    attackGain <= 100;
                    attackFloor <= 5000;
                    setTimerLimit <= 5000;
                when "000010" => normalizeCounterLimit <= 1000; -- player death
                    invert <= '0';
                    setAttackRoof <= 50000;
                    attackGain <= 5000;
                    attackFloor <= 1000;
                    setTimerLimit <= 50000;
                when "000001" => normalizeCounterLimit <= 4500; -- hit
                    invert <= '1';
                    setAttackRoof <= 50000;
                    attackGain <= 100;
                    attackFloor <= 1000;
                    setTimerLimit <= 1000;
                when "110000" => normalizeCounterLimit <= 4500; -- powerup
                    invert <= '0';
                    setAttackRoof <= 50000;
                    attackGain <= 100;
                    attackFloor <= 5000;
                    setTimerLimit <= 5000;
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
