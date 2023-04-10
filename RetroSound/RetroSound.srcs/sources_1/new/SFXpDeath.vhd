library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity SFXpDeath is
    Port(
        clk : in std_logic;
        togglepDeath : in std_logic;
        enablePdeath : out std_logic;
        pwm : out std_logic
    );
end SFXpDeath;

architecture Behavioral of SFXpDeath is
    component squareWave is
        Port (CLK : in std_logic;
             noteIndicator : in std_logic_vector (5 downto 0);
             toggle : in std_logic;
             enable : out std_Logic;
             pwm : out std_logic
            );
    end component;

begin
    squareDeath : squareWave port map(
            clk => clk ,
            noteIndicator => "100000",
            toggle => togglepDeath,
            enable => enablePdeath,
            pwm => pwm
        );

end Behavioral;
