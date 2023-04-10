library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity SFXhit is
    Port(
        clk : in std_logic;
        toggleHit : in std_logic;
        enableHit : out std_logic;
        PWM : out std_logic
    );
end SFXhit;

architecture Behavioral of SFXhit is
    component squareWave is
        Port (CLK : in std_logic;
             noteIndicator : in std_logic_vector (5 downto 0);
             toggle : in std_logic;
             enable : out std_logic;
             PWM : out std_logic
            );
    end component;
    
begin
    squareWalk : squareWave port map(
            clk => clk,
            noteIndicator => "000001",
            toggle => toggleHit,
            enable => enableHit,
            pwm => pwm

        );

end Behavioral;
