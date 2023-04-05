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

    -- TOGGLES FOR SFX COMPONENTS
    signal toggleShoot : std_logic;
    signal toggleWalk : std_logic;
    signal toggleHit : std_logic;
    signal togglePdeath : std_logic;
    signal togglePowerup : std_logic;
    signal toggleMdeath : std_logic;

    -- TEMPORARY TOGGLES
    signal triangleToggle : std_Logic := '1';

    -- PWM SIGNALS FOR COMPONENTS
    signal pwmShoot : std_logic;
    signal pwmWalk : std_logic;
    signal pwmHit : std_logic;
    signal pwmPdeath : std_logic;
    signal pwmPowerup : std_logic;
    signal pwmMdeath : std_logic;

    -- TEMPORARY PWM
    signal temppwm : std_logic;

    -- CLK USED FOR TESTING
    constant clockFrequency : integer := 100e6;
    constant clockperiod : time := 100ms / clockFrequency;
    signal tempCLK : std_Logic := '0';

    signal toneRiseInt : integer := 0;
    signal countTemp : integer := 0;

begin

    toggleSFX : process(clk)
    begin
        if rising_edge(clk) then
            togglePdeath <= '1';
        end if;
    end process;

    shoot : SFXshoot port map(
            clk => clk,
            toggleShoot => toggleHit,
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
            pwm => SFXpwm
        );

    powerup : SFXpowerup port map(
            clk => clk,
            togglePowerup => togglePowerup,
            pwm => pwmPowerup
        );


    triangle : triangleWave  port map(
            clk => clk,
            toggle => toggle,
            pwm => temppwm
        );

    mDeath : SFXmDeath port map(
            clk => clk,
            toggleMdeath => toggleMdeath,
            pwm => pwmMdeath
        );

end Behavioral;