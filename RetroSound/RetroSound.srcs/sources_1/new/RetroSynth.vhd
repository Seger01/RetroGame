LIBRARY ieee;
USE ieee.std_logic_1164.ALL;
USE ieee.numeric_std.ALL;
use IEEE.std_logic_unsigned.all;
LIBRARY UNISIM;
USE UNISIM.Vcomponents.ALL;

entity RetroSynth is
    Port (
        CLK : in STD_LOGIC;
        SFXswitch : std_logic_vector(5 downto 0);
        PWM : out STD_LOGIC
    );
end RetroSynth;

architecture Behavioral of RetroSynth is

    component BGMdata is
        Port(
            clk : in std_logic;
            toggle : in std_logic;
            BGMpwm : out std_Logic
        );
    end component;

    component SFXdata is
        port (
            clk : in std_logic;
            toggle : in std_logic;
            sound : in std_logic_vector(5 downto 0);
            SFXpwm : out std_Logic
        );
    end component;

    -- toggles to toggle soundsfx/bgm
    signal BGMtoggle : std_logic := '0';
    signal SFXtoggle : std_logic := '0';
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
            if(counterToggle >= 30) then
                pwm <= BGMpwmcombine;
                BGMtoggle <= '1';
                SFXtoggle <= '0';
            else
                pwm <= SFXpwmcombine;
                BGMtoggle <= '0';
                SFXtoggle <= '1';
            end if;
            if(counterToggle >= 50) then
                counterToggle <= 0;
            end if;
        end if;
    end process;

    BGMcomp : BGMdata port map(
            clk => clk,
            toggle => BGMtoggle,
            BGMpwm => BGMpwmcombine
        );

    SFXcomp : SFXdata  port map(
            clk => clk,
            toggle => SFXtoggle,
            sound => SFXswitch,
            SFXpwm => SFXpwmcombine
        );
end Behavioral;
