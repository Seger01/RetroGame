
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity SFXmDeath is
    Port(
        clk : in std_logic;
        toggleMdeath : in std_logic;
        PWM : out std_logic
    );
end SFXmDeath;

architecture Behavioral of SFXmDeath is
    component squareWave is
        Port (CLK : in std_logic;
             noteIndicator : in std_logic_vector (5 downto 0);
             toggle : in std_logic;
             PWM : out std_logic
            );
    end component;

    signal sound : std_logic_vector (5 downto 0);
begin
    mdeath : process (clk)
    begin
        sound <= "110000";
    end process;


    squareMdeath : squareWave port map(
            clk => clk,
            noteIndicator => sound,
            toggle => toggleMdeath,
            pwm => PWM
        );

end Behavioral;
