LIBRARY ieee;
USE ieee.std_logic_1164.ALL;
USE ieee.numeric_std.ALL;

entity RetroSynth is
    Port (
        CLK : in STD_LOGIC;
        SFXswitch : in std_logic_vector(5 downto 0);
        BGMswitch : in std_logic_vector(2 downto 0);
        PWM : out STD_LOGIC
    );
end RetroSynth;

architecture Behavioral of RetroSynth is

    component BGMdata is
        Port(
            clk : in std_logic;
            BGMsound : in std_logic_vector (2 downto 0);
            BGMpwm : out std_Logic
        );
    end component;

    component SFXdata is
        port (
            clk : in std_logic;
            sound : in std_logic_vector(5 downto 0);
            SFXpwm : out std_Logic
        );
    end component;

    -- toggles to toggle soundsfx/bgm
    signal counterToggle : unsigned (5 downto 0);

    -- pwm signals
    signal BGMpwmcombine : std_logic;
    signal SFXpwmcombine : std_logic;

begin
    toggle: process(clk)
    begin
        if rising_edge (clk) then
            pwm <= '0';
            counterToggle <= counterToggle + 1;
            
            -- toggle is used to switch between sfx and bgm to "combine" the pwm signals
            if(counterToggle >= 30) then
                pwm <= BGMpwmcombine;
            else
                pwm <= SFXpwmcombine;
            end if;
            if(counterToggle >= 50) then
                counterToggle <= (others => '0');
            end if;
        end if;
    end process;

    BGMcomp : BGMdata port map(
            clk => clk,
            BGMsound => BGMswitch,
            BGMpwm => BGMpwmcombine
        );

    SFXcomp : SFXdata  port map(
            clk => clk,
            sound => SFXswitch,
            SFXpwm => SFXpwmcombine
        );
end Behavioral;
