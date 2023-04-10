library IEEE;
use IEEE.STD_LOGIC_1164.ALL;


entity BGMmenu is
    Port (clk : in std_logic;
         toggleMenu : in std_Logic;
         pwmMenu : out std_logic
        );
end BGMmenu;

architecture Behavioral of BGMmenu is
    signal noteIndex : std_logic_vector (3 downto 0) := "0000";
    signal romAddress : std_logic_vector (3 downto 0) := "0000";

    signal BMGpwm : std_logic := '0';
    signal toggle : std_logic := '0';

    signal BGMcounter : integer := 0;
    signal addressInt : integer := 0;
begin
    menu : process(clk)
    begin
        if rising_edge(clk) then

        end if;
    end process;


end Behavioral;
