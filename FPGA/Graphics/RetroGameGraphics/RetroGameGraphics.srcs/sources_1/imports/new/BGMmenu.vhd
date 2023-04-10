LIBRARY ieee;
USE ieee.std_logic_1164.ALL;
USE ieee.numeric_std.ALL;
use IEEE.std_logic_unsigned.all;
LIBRARY UNISIM;
USE UNISIM.Vcomponents.ALL;


entity BGMmenu is
    Port (clk : in std_logic;
         toggleMenu : in std_Logic;
         pwmMenu : out std_logic
        );
end BGMmenu;

architecture Behavioral of BGMmenu is

    component SynthBGM is
        Port (clk : in std_logic;
             noteIndicator : in std_logic_vector (3 downto 0);
             toggle : in std_logic;
             PWM : out std_logic
            );
    end component;

    component BGMwestern is
        Port(
            clka : in STD_LOGIC;
            ena : in STD_LOGIC;
            addra : in STD_LOGIC_VECTOR ( 4 downto 0 );
            douta : out STD_LOGIC_VECTOR ( 3 downto 0 )
        );
    end component;
    signal noteIndex : std_logic_vector (3 downto 0) := "0000";
    signal romAddress : std_logic_vector (4 downto 0) := "0000";

    signal BMGpwm : std_logic := '0';
    signal toggle : std_logic := '0';

    signal BGMcounter : integer := 0;
    signal addressInt : integer := 0;
begin
    menu : process(clk)
    begin
        if rising_edge(clk) then

            if(BGMcounter >= 50000000) then

                if(addressInt >= 16) then
                    addressInt <= 0;
                else
                    addressInt <= addressInt + 1;
                end if;
                BGMcounter <= 0;

            else
                BGMcounter <= BGMcounter + 1;
            end if;

        end if;
        romAddress <= std_logic_vector(to_unsigned(addressInt, romAddress'length));
    end process;

    BGMComp : SynthBGM port map(
            clk => clk,
            PWM => pwmMenu,
            toggle => toggleMenu,
            noteIndicator => noteIndex
        );

    sound : BGMwestern port map(
            clka => clk,
            ena => '1',
            addra => romAddress,
            douta => noteIndex
        );

end Behavioral;
