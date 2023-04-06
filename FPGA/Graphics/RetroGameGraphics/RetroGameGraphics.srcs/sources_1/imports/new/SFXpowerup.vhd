
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity SFXpowerup is
    Port(
        clk : in std_logic;
        togglePowerup : in std_logic;
        PWM : out std_logic
    );
end SFXpowerup;

architecture Behavioral of SFXpowerup is
    component squareWave is
        Port (CLK : in std_logic;
             noteIndicator : in std_logic_vector (5 downto 0);
             toggle : in std_logic;
             PWM : out std_logic
            );
    end component;
    
    signal toggle : std_logic;
    signal sound : std_logic_vector(5 downto 0);
begin
    squarePower : squareWave port map(
            clk => clk,
            noteIndicator => sound,
            toggle => toggle,
            pwm => PWM 
        );

end Behavioral;
