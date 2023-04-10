LIBRARY ieee;
USE ieee.std_logic_1164.ALL;
USE ieee.numeric_std.ALL;
use IEEE.std_logic_unsigned.all;
LIBRARY UNISIM;
USE UNISIM.Vcomponents.ALL;


entity BGMtransition is
    Port (clk : in std_logic;
         toggleTransition : in std_Logic;
         pwmTransition : out std_logic
        );
end BGMtransition;

architecture Behavioral of BGMtransition is
    component transitionROM is
        Port(
            clka : IN STD_LOGIC;
            ena : IN STD_LOGIC;
            addra : IN STD_LOGIC_VECTOR(3 DOWNTO 0);
            douta : OUT STD_LOGIC_VECTOR(3 DOWNTO 0)
        );
    end component;

    component SynthBGM is
        Port (clk : in std_logic;
             noteIndicator : in std_logic_vector (3 downto 0);
             toggle : in std_logic;
             PWM : out std_logic
            );
    end component;

    signal noteIndex : std_logic_vector (3 downto 0) := "0000";
    signal romAddress : std_logic_vector (3 downto 0) := "0000";

    signal BGMpwm : std_logic := '0';
    signal toggle : std_logic := '0';
    
    signal BGMcounter : integer := 0;
    signal addressInt : integer := 0;
    
begin
    playGame : process(clk)
    begin
        if rising_edge(clk) then
            if(BGMcounter >= 50000000) then

                if(addressInt >= 20) then
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


    sound : transitionROM port map(
            clka => clk,
            ena => '1',
            addra => romAddress,
            douta => noteIndex
        );

    BGMComp : SynthBGM port map(
            clk => clk,
            PWM => pwmTransition,
            toggle => toggleTransition,
            noteIndicator => noteIndex
        );

end Behavioral;