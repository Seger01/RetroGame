library IEEE;
use IEEE.STD_LOGIC_1164.ALL;


entity SFXdata is
    Port(
        clk : in std_logic;
        toggle : in std_logic;
        sound : in std_logic_vector (3 downto 0);
        SFXpwm : out std_Logic
    );
end SFXdata;

architecture Behavioral of SFXdata is


    component SynthBGM is
        Port (clk : in std_logic;
             noteIndicator : in std_logic_vector (3 downto 0);
             toggle : in std_logic;
             PWM : out std_logic
            );
    end component;

    signal toggleHit : std_logic;
    signal noteIndex : std_logic_vector (3 downto 0) := "0000";
    signal PWMcombine : std_logic;

begin
    test : process(clk)
    begin
        if sound = "0001" then
            noteIndex <= "1000";
        else
            noteIndex <= "0000";
        end if;
    end process;

    BGMCompFX : SynthBGM port map(
            clk => clk,
            PWM => PWMcombine,
            toggle => toggle,
            noteIndicator => noteIndex
        );


end Behavioral;
