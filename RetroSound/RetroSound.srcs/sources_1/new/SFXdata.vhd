LIBRARY ieee;
USE ieee.std_logic_1164.ALL;
USE ieee.numeric_std.ALL;
use IEEE.std_logic_unsigned.all;
LIBRARY UNISIM;
USE UNISIM.Vcomponents.ALL;


entity SFXdata is
    Port(
        clk : in std_logic;
        toggle : in std_logic;
        sound : in std_logic_vector(5 downto 0);
        SFXpwm : out std_Logic
    );
end SFXdata;

architecture Behavioral of SFXdata is

    -- PLAYER SHOOT SFX
    component SFXshoot is
        Port(
            clk : in std_logic;
            toggleShoot : in std_logic;
            pwm : out std_logic
        );
    end component;

    -- PLAYER WALK SFX
    component SFXwalk is
        Port(
            clk : in std_logic;
            toggleWalk : in std_logic;
            PWM : out std_logic
        );
    end component;

    -- HIT SOUND SFX
    component SFXhit is
        Port(
            clk : in std_logic;
            toggleHit : in std_logic;
            PWM : out std_logic
        );
    end component;

    -- MONSTER DEATH SFX
    component SFXmDeath is
        Port(
            clk : in std_logic;
            toggleMdeath : in std_logic;
            PWM : out std_logic
        );
    end component;

    -- PLAYER DEATH SFX
    component SFXpDeath is
        Port(
            clk : in std_logic;
            togglePdeath : in std_logic;
            PWM : out std_logic
        );
    end component;

    -- POWERUP SFX
    component SFXpowerup is
        Port(
            clk : in std_logic;
            togglePowerup : in std_logic;
            PWM : out std_logic
        );
    end component;

    component triangleWave is
        Port ( clk : in STD_LOGIC;
             toggle : in STD_LOGIC;
             pwm : out STD_LOGIC);
    end component;

    component squareWave is
        Port (CLK : in std_logic;
             noteIndicator : in std_logic_vector (5 downto 0);
             toggle : in std_logic;
             PWM : out std_logic
            );
    end component;

    -- TOGGLES FOR SFX COMPONENTS
    signal toggleShoot : std_logic;
    signal toggleWalk : std_logic;
    signal toggleHit : std_logic;
    signal togglePdeath : std_logic;
    signal togglePowerup : std_logic;
    signal toggleMdeath : std_logic;

    -- TEMPORARY TOGGLES
    signal triangleToggle : std_Logic := '1';
    signal squareToggle : std_logic := '0';

    -- PWM SIGNALS FOR COMPONENTS
    signal pwmShoot : std_logic;
    signal pwmWalk : std_logic;
    signal pwmHit : std_logic;
    signal pwmPdeath : std_logic;
    signal pwmPowerup : std_logic;
    signal pwmMdeath : std_logic;

    -- TEMPORARY PWM
    signal temppwm : std_logic;
    signal trianglePWM : std_logic;

    -- CLK USED FOR TESTING
    constant clockFrequency : integer := 100e6;
    constant clockperiod : time := 100ms / clockFrequency;
    signal tempCLK : std_Logic := '0';

    signal toneRiseInt : integer := 0;
    signal countTemp : integer := 0;

    signal SFXcounter : integer := 0;

begin

    toggleSFX : process(clk)
    begin
        if rising_edge(clk) then
            -- TOGGLES TO SWITCH BETWEEN SOUNDS
            togglePdeath <= sound(0);
            toggleShoot <= sound(1);
            toggleWalk <= sound(2);
            togglePowerup <= sound(3);
            toggleMdeath <= sound(4);
            SFXcounter <= SFXcounter + 1;
            if SFXcounter <= 5000 then
                if togglePdeath = '1' then
                    SFXpwm <= pwmPdeath;
                end if;

                if SFXcounter <= 500 and toggleWalk = '1' then -- walk
                    SFXpwm <= pwmWalk;
                end if;

                if SFXcounter <= 1500 and SFXcounter >= 500 then -- shoot
                    if toggleShoot = '1' then
                        SFXpwm <= pwmShoot;
                    end if;
                end if;

                if SFXcounter <= 2500 and SFXcounter >= 1500 then -- hit
                    if toggleHit = '1' then
                        SFXpwm <= pwmHit;
                    end if;
                end if;

                if SFXcounter <= 4000 and SFXcounter >= 2500 then -- powerup
                    if togglePowerup = '1' then
                        SFXpwm <= pwmPowerup;
                    end if;
                end if;

                if SFXcounter <= 5000 and SFXcounter >= 4000 then -- enemy death
                    if toggleMdeath = '1' then
                        SFXpwm <= pwmMdeath;
                    end if;
                end if;

                if SFXcounter >= 5000 then
                    SFXcounter <= 0;
                end if;
            end if;





        end if;
    end process;


    shoot : SFXshoot port map(
            clk => clk,
            toggleShoot => toggleShoot,
            pwm => pwmShoot
        );

    walk : SFXwalk  port map(
            clk => clk,
            toggleWalk => toggleWalk,
            pwm => pwmWalk
        );

    hit : SFXhit port map(
            clk => clk,
            toggleHit => toggleHit,
            pwm => pwmHit
        );

    pDeath : SFXpDeath port map(
            clk => clk,
            togglePdeath => togglePdeath,
            pwm => pwmPdeath
        );

    powerup : SFXpowerup port map(
            clk => clk,
            togglePowerup => togglePowerup,
            pwm => pwmPowerup
        );

    triangle : triangleWave  port map(
            clk => clk,
            toggle => triangleToggle,
            pwm => trianglePWM
        );

    mDeath : SFXmDeath port map(
            clk => clk,
            toggleMdeath => toggleMdeath,
            pwm => pwmMdeath
        );

    square : squareWave port map(
            clk => clk,
            noteIndicator => sound,
            toggle => squareToggle,
            pwm =>  temppwm
        );

end Behavioral;