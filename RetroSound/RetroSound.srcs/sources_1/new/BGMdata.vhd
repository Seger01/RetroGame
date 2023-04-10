LIBRARY ieee;
USE ieee.std_logic_1164.ALL;
USE ieee.numeric_std.ALL;
use IEEE.std_logic_unsigned.all;
LIBRARY UNISIM;
USE UNISIM.Vcomponents.ALL;

entity BGMdata is
    Port(
        clk : in std_logic;
        toggle : in std_logic;
        BGMsound : in std_logic_vector (2 downto 0);
        BGMpwm : out std_Logic
    );
end BGMdata;

architecture Behavioral of BGMdata is
    component BGMgame is
        Port (clk : in std_logic;
             toggleGame : in std_Logic;
             pwmGame : out std_logic
            );
    end component;

    component BGMmenu is
        Port (clk : in std_logic;
             toggleMenu : in std_Logic;
             pwmMenu : out std_logic
            );
    end component;

    component BGMtransition is
        Port (clk : in std_logic;
             toggleTransition : in std_Logic;
             pwmTransition : out std_logic
            );
    end component;


    signal addressInt : integer := 0;
    signal BGMcounter : integer := 0;

    signal pwmMenu : std_logic := '0';
    signal pwmGame : std_logic := '0';
    signal pwmTransition : std_logic := '0';

    signal toggleMenu : std_Logic := '0';
    signal toggleGame : std_logic := '0';
    signal toggleTransition : std_logic := '0';

    constant clockFrequency : integer := 100e6;
    constant clockperiod : time := 100ms / clockFrequency;
    signal tempCLK : std_Logic := '0';

begin
    soundProc : process(clk)
    begin
        if rising_edge (clk) then
            toggleMenu <= BGMsound(0);
            toggleGame <= BGMsound(1);
            toggleTransition <= BGMsound(2);

            if toggleMenu  = '1' then
                BGMpwm <= pwmMenu;
            end if;

            if toggleGame = '1' then
                BGMpwm <= pwmGame;
            end if;

            if toggleTransition = '1' then
                BGMpwm <= pwmTransition;
            end if;
        end if;
    end process;

    menu : BGMmenu port map(
            clk => clk,
            toggleMenu => toggleMenu,
            pwmMenu => pwmMenu
        );

    game : BGMgame port map(
            clk => clk,
            toggleGame => toggleGame,
            pwmGame => pwmGame
        );

    transition : BGMtransition port map(
            clk => clk,
            toggleTransition => toggleTransition,
            pwmTransition => pwmTransition
        );

end Behavioral;