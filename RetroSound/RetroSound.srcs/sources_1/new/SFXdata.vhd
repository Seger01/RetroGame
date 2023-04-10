LIBRARY ieee;
USE ieee.std_logic_1164.ALL;
USE ieee.numeric_std.ALL;


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
            enableShoot : out std_logic;
            pwm : out std_logic
        );
    end component;

    -- PLAYER WALK SFX
    component SFXwalk is
        Port(
            clk : in std_logic;
            toggleWalk : in std_logic;
            enableWalk : out std_logic;
            PWM : out std_logic
        );
    end component;

    -- HIT SOUND SFX
    component SFXhit is
        Port(
            clk : in std_logic;
            toggleHit : in std_logic;
            enableHit : out std_logic;
            PWM : out std_logic
        );
    end component;

    -- MONSTER DEATH SFX
    component SFXmDeath is
        Port(
            clk : in std_logic;
            toggleMdeath : in std_logic;
            enableMdeath : out std_logic;
            PWM : out std_logic
        );
    end component;

    -- PLAYER DEATH SFX
    component SFXpDeath is
        Port(
            clk : in std_logic;
            togglePdeath : in std_logic;
            enablePdeath : out std_logic;
            PWM : out std_logic
        );
    end component;

    -- POWERUP SFX
    component SFXpowerup is
        Port(
            clk : in std_logic;
            togglePowerup : in std_logic;
            enablePowerup : out std_logic;
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

    -- PWM SIGNALS FOR COMPONENTS
    signal pwmShoot : std_logic;
    signal pwmWalk : std_logic;
    signal pwmHit : std_logic;
    signal pwmPdeath : std_logic;
    signal pwmPowerup : std_logic;
    signal pwmMdeath : std_logic;

    -- ENABLES
    signal enableShoot : std_logic;
    signal enableWalk : std_logic;
    signal enableHit : std_logic;
    signal enablePdeath : std_logic;
    signal enablePowerup : std_logic;
    signal enableMdeath : std_logic;

    -- COUNTER USED TO SWITCH BETWEEN SFX
    signal SFXcounter : integer range 0 to 5000 := 0;

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
            toggleHit <= sound(5);

            SFXcounter <= SFXcounter + 1;

            if SFXcounter <= 5000 then

                if enablePdeath   = '1' then
                    SFXpwm <= pwmPdeath;
                end if;

                if enablePowerup  = '1' then
                    SFXpwm <= pwmPowerup;
                end if;

                if SFXcounter <= 750 then -- walk
                    if enableWalk = '1' then
                        SFXpwm <= pwmWalk;
                    end if;
                end if;
                
                if SFXcounter <= 2250 and SFXcounter >= 750 then -- shoot
                    if enableShoot  = '1' then
                        SFXpwm <= pwmShoot;
                    end if;
                end if;

                if SFXcounter <= 3500 and SFXcounter >= 2250 then -- hit
                    if enableHit  = '1' then
                        SFXpwm <= pwmHit;
                    end if;
                end if;

                if SFXcounter <= 5000 and SFXcounter >= 3500 then -- enemy death
                    if enableMdeath = '1' then
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
            enableShoot => enableShoot,
            pwm => pwmShoot
        );

    walk : SFXwalk  port map(
            clk => clk,
            toggleWalk => toggleWalk,
            enableWalk => enableWalk,
            pwm => pwmWalk
        );

    hit : SFXhit port map(
            clk => clk,
            toggleHit => toggleHit,
            enableHit => enableHit,
            pwm => pwmHit
        );

    pDeath : SFXpDeath port map(
            clk => clk,
            togglePdeath => togglePdeath,
            enablePdeath => enablePdeath,
            pwm => pwmPdeath
        );

    powerup : SFXpowerup port map(
            clk => clk,
            togglePowerup => togglePowerup,
            enablePowerup => enablePowerup,
            pwm => pwmPowerup
        );

    mDeath : SFXmDeath port map(
            clk => clk,
            toggleMdeath => toggleMdeath,
            enableMdeath => enableMdeath,
            pwm => pwmMdeath
        );
end Behavioral;