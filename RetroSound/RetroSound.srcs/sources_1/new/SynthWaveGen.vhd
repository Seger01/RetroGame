library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity SynthWaveGen is
    Port ( PWM : out STD_LOGIC;
         CLK : in std_logic;
         noteIndicator : in std_logic_vector (3 downto 0)
        );
end SynthWaveGen;

architecture Behavioral of SynthWaveGen is

    

    component SynthSFX is
        Port (CLK : in std_logic;
             Tone : out std_logic_vector (6 downto 0)
            );
    end component;
    signal counter : integer  range 0 to 255 := 0;

    signal pwmSignal : std_logic := '0';
    signal soundOnOffLogic : std_logic := '0';
    signal noteIndi : std_logic_vector (6 downto 0);
begin
    Synth : process(CLK)
    begin
        if rising_edge(clk) then
            if(counter >= 127) then

            else

            end if;
        end if;
    end process;

    

    SFXComp : SynthSFX port map(
            CLK => CLK,
            Tone => noteIndi
        );

end Behavioral;
