
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
    component triangleWave is
        Port ( clk : in STD_LOGIC;
             toggle : in STD_LOGIC;
             pwm : out STD_LOGIC);
    end component;
begin



triangleMdeath : triangleWave port map(
    clk => clk,
    toggle => toggleMdeath,
    PWM => PWM 
);

end Behavioral;
