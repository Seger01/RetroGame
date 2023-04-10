LIBRARY ieee;
USE ieee.std_logic_1164.ALL;
USE ieee.numeric_std.ALL;
use IEEE.std_logic_unsigned.all;
LIBRARY UNISIM;
USE UNISIM.Vcomponents.ALL;

entity RetroSynth is
    Port (
        CLK : in STD_LOGIC;
        SFXswitch : std_logic_vector(6 downto 0);
        PWM : out STD_LOGIC
    );
end RetroSynth;

architecture Behavioral of RetroSynth is

    component BGMdata is
        Port(
            clk : in std_logic;
            menuMusic : in std_Logic;
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
    signal SFXsound : std_logic_vector(5 downto 0);
    signal counterToggle : integer := 0;

    -- pwm signals
    signal BGMpwmcombine : std_logic;
    signal SFXpwmcombine : std_logic;

begin
    toggle: process(clk)
    begin
        if rising_edge (clk) then
            counterToggle <= counterToggle + 1;
            -- toggle is used to switch between sfx and bgm to "combine" the pwm signals
            if(counterToggle >= 15) then
                pwm <= BGMpwmcombine;
            else
                pwm <= SFXpwmcombine;
            end if;
            if(counterToggle >= (15+5)) then
                counterToggle <= 0;
            end if;
        end if;
    end process;

    BGMcomp : BGMdata port map(
            clk => clk,
            menuMusic => SFXswitch(0),
            BGMpwm => BGMpwmcombine
        );

    SFXcomp : SFXdata  port map(
            clk => clk,
            sound => SFXswitch(6 downto 1),
            SFXpwm => SFXpwmcombine
        );
end Behavioral;
