LIBRARY ieee;
USE ieee.std_logic_1164.ALL;
USE ieee.numeric_std.ALL;

entity SFXshoot is
    Port(
        clk : in std_logic;
        toggleShoot : in std_logic;
        enableShoot : out std_logic;
        pwm : out std_logic
    );
end SFXshoot;

architecture Behavioral of SFXshoot is
    component squareWave is
        Port (CLK : in std_logic;
             noteIndicator : in std_logic_vector (5 downto 0);
             toggle : in std_logic;
             enable : out std_logic;
             PWM : out std_logic
            );
    end component;

    signal note : std_logic_vector(5 downto 0);
begin
    shoot : process(clk)
    begin
        note <= "010000";
    end process;

    squareShoot : squareWave port map(
            clk => clk,
            noteIndicator => note,
            toggle => toggleShoot,
            enable => enableShoot,
            pwm => pwm
        );

end Behavioral;
