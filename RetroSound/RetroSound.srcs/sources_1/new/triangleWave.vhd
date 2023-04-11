LIBRARY ieee;
USE ieee.std_logic_1164.ALL;
USE ieee.numeric_std.ALL;
use IEEE.std_logic_unsigned.all;
LIBRARY UNISIM;
USE UNISIM.Vcomponents.ALL;

entity triangleWave is
    Port ( clk : in STD_LOGIC;
         toggle : in STD_LOGIC;
         pwm : out STD_LOGIC);
end triangleWave;

architecture Behavioral of triangleWave is


    component triangleWaveRomRead is
        Port ( clk : in STD_LOGIC;
             addressSwitch : std_logic;
             data : out STD_LOGIC_VECTOR (7 downto 0));
    end component;

    signal data : std_logic_vector (7 downto 0) := (others => '0');
    signal addressInt : integer := 0;

    signal addressCounter : integer := 0;
    signal counter : integer := 0;
    signal counter2 : integer := 0;

    signal dataInt : integer := 0;

    signal addressSwitch : std_logic := '1';

    constant clockFrequency : integer := 100e6;
    constant clockperiod : time := 100ms / clockFrequency;
    signal tempCLK : std_Logic := '0';
    signal frequencyCounter : integer := 3000;
begin
    waveTriangle : process(clk)
    begin
        tempCLK <= not tempCLK after Clockperiod / 2;
        if toggle = '1' then

            if rising_edge(clk) then
                if frequencyCounter <= 0 then
                    frequencyCounter <= 3000;
                else
                    frequencyCounter <= frequencyCounter - 1;
                end if;
                addressSwitch <= '0';
                dataInt <= to_integer(unsigned(data));

                if counter >= frequencyCounter then
                    counter <= 0;
                    counter2 <= counter2 + 1;
                else
                    counter <= counter + 1;
                end if;

                if counter2 >= 127 then
                    counter2 <= 0;
                    addressSwitch <= '1';
                else

                end if;

                if counter2 > dataInt then
                    pwm <= '1';
                else
                    pwm <= '0';
                end if;

            end if;
        end if;
    end process;

    triangleRomRead : triangleWaveRomRead port map(
            clk => clk,
            addressSwitch => addressSwitch,
            data => data
        );

end Behavioral;
