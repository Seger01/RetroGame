library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity SFXpowerup is
    Port(
        clk : in std_logic;
        togglePowerup : in std_logic;
        enablePowerup : out std_logic;
        PWM : out std_logic
    );
end SFXpowerup;

architecture Behavioral of SFXpowerup is
    component squareWave is
        Port (CLK : in std_logic;
             noteIndicator : in std_logic_vector (5 downto 0);
             toggle : in std_logic;
             enable : out std_logic;
             PWM : out std_logic
            );
    end component;

    signal sound : std_logic_vector(5 downto 0);
begin
    powerup : process(clk)
    
    begin
        sound <= "000100";
    end process;
    
    squarePower : squareWave port map(
            clk => clk,
            noteIndicator => sound,
            toggle => togglePowerup,
            enable => enablePowerup,
            pwm => PWM
        );

end Behavioral;
