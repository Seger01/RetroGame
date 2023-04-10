LIBRARY ieee;
USE ieee.std_logic_1164.ALL;
USE ieee.numeric_std.ALL;
use IEEE.std_logic_unsigned.all;
LIBRARY UNISIM;
USE UNISIM.Vcomponents.ALL;

entity SFXshoot is
    Port(
        clk : in std_logic;
        toggleShoot : in std_logic;
        pwm : out std_logic
    );
end SFXshoot;

architecture Behavioral of SFXshoot is
    component squareWave is
        Port (CLK : in std_logic;
             noteIndicator : in std_logic_vector (5 downto 0);
             toggle : in std_logic;
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
            pwm => pwm
        );

end Behavioral;
