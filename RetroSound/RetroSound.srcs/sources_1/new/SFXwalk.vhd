library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity SFXwalk is
    Port(
        clk : in std_logic;
        toggleWalk : in std_logic;
        enableWalk : out std_logic;
        PWM : out std_logic
    );
end SFXwalk;

architecture Behavioral of SFXwalk is
    component squareWave is
        Port (CLK : in std_logic;
             noteIndicator : in std_logic_vector (5 downto 0);
             toggle : in std_logic;
             enable : out std_logic;
             PWM : out std_logic
            );
    end component;

    signal sound : std_logic_vector (5 downto 0) := "001000";
begin

    walk : process(clk)
    begin
        sound <= "001000";
    end process;

    squareWalk : squareWave port map(
            clk => clk,
            noteIndicator => sound,
            toggle => toggleWalk,
            enable => enableWalk,
            pwm => pwm

        );
end Behavioral;
