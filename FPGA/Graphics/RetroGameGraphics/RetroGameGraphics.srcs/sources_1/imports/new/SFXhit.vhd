library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity SFXhit is
    Port(
        clk : in std_logic;
        toggleHit : in std_logic;
        PWM : out std_logic
    );
end SFXhit;

architecture Behavioral of SFXhit is
    component squareWave is
        Port (CLK : in std_logic;
             noteIndicator : in std_logic_vector (5 downto 0);
             toggle : in std_logic;
             PWM : out std_logic
            );
    end component;
    
    signal sound : std_logic_vector (5 downto 0);
begin
data : process (clk)
begin
    sound <= "000001";
end process;

    squareWalk : squareWave port map(
            clk => clk,
            noteIndicator => sound,
            toggle => toggleHit,
            pwm => pwm

        );

end Behavioral;
