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

begin

end Behavioral;
