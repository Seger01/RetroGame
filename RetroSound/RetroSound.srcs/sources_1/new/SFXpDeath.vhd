
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity SFXpDeath is
    Port(
        clk : in std_logic;
        togglepDeath : in std_logic;
        pwm : out std_logic
    );
end SFXpDeath;

architecture Behavioral of SFXpDeath is
    component squareWave is
        Port (CLK : in std_logic;
             noteIndicator : in std_logic_vector (5 downto 0);
             toggle : in std_logic;
             pwm : out std_logic
            );
    end component;
    
    signal toggle : std_logic;
    signal sound : std_logic_vector(5 downto 0) := "100000";
    
    constant clockFrequency : integer := 100e6;
    constant clockperiod : time := 100ms / clockFrequency;
    signal tempCLK : std_Logic := '0';
begin
test : process(clk)
begin
tempCLK <= not tempCLK after Clockperiod / 2;
end process;
    squareDeath : squareWave port map(
            clk => clk,
            noteIndicator => sound,
            toggle => togglepDeath,
            pwm => pwm 
        );

end Behavioral;
