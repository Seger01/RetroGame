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
        BGMpwm : out std_Logic
    );
end BGMdata;

architecture Behavioral of BGMdata is

    component BGMwestern is
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
    signal addressInt : integer := 0;
    signal BGMcounter : integer := 0;

    constant clockFrequency : integer := 100e6;
    constant clockperiod : time := 100ms / clockFrequency;
    signal tempCLK : std_Logic := '0';

begin
    soundProc : process(clk)
    begin
        tempCLK <= not tempCLK after Clockperiod / 2;

        if rising_edge(clk) then
            if(BGMcounter >= 100000000) then

                if(addressInt >= 9) then
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


    sound : BGMwestern port map(
            clka => clk,
            ena => '1',
            addra => romAddress,
            douta => noteIndex
        );

    BGMComp : SynthBGM port map(
            clk => clk,
            PWM => BGMpwm,
            toggle => toggle,
            noteIndicator => noteIndex
        );

end Behavioral;