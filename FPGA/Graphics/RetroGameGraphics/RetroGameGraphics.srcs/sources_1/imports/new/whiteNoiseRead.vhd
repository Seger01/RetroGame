LIBRARY ieee;
USE ieee.std_logic_1164.ALL;
USE ieee.numeric_std.ALL;
use IEEE.std_logic_unsigned.all;
LIBRARY UNISIM;
USE UNISIM.Vcomponents.ALL;

entity whiteNoiseRead is
    Port (
        clk : in std_logic;
        dataOut : out std_logic_vector(7 downto 0)
    );
end whiteNoiseRead;

architecture Behavioral of whiteNoiseRead is
    component whiteNoiseSample is
        PORT (
            clka : IN STD_LOGIC;
            ena : IN STD_LOGIC;
            addra : IN STD_LOGIC_VECTOR(5 DOWNTO 0);
            douta : OUT STD_LOGIC_VECTOR(7 DOWNTO 0)
        );
    end component;

    signal address : std_logic_vector (5 downto 0) := (others => '0');
    signal data : std_logic_vector (7 downto 0) := (others => '0');
    signal addressInt : integer := 0;
    signal counter : integer := 0;
    
    constant clockFrequency : integer := 100e6;
    constant clockperiod : time := 100ms / clockFrequency;
    signal tempCLK : std_Logic := '0';

begin
    romRead : process(clk)
    begin
    tempCLK <= not tempCLK after Clockperiod / 2;
        if rising_edge(clk) then
            address  <= std_logic_vector(to_unsigned(addressInt, address'length));
            if(counter >= 2000) then
                counter <= 0;
                addressInt <= addressInt + 1;
            else
                counter <= counter + 1;
            end if;
            
            if addressInt >= 64 then
                addressInt <= 0;
            end if;
        end if;
    end process;

    ROMwRead : whiteNoiseSample port map(
            clka => clk,
            ena => '1',
            addra => address,
            douta => dataOut
        );

end Behavioral;
