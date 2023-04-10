LIBRARY ieee;
USE ieee.std_logic_1164.ALL;
USE ieee.numeric_std.ALL;
use IEEE.std_logic_unsigned.all;
LIBRARY UNISIM;
USE UNISIM.Vcomponents.ALL;


entity triangleWaveRomRead is
    Port ( clk : in STD_LOGIC;
         addressSwitch : in std_logic;
         data : out STD_LOGIC_VECTOR (7 downto 0));
end triangleWaveRomRead;

architecture Behavioral of triangleWaveRomRead is
    component triangleWaveRom is
        PORT (
            clka : IN STD_LOGIC;
            ena : IN STD_LOGIC;
            addra : IN STD_LOGIC_VECTOR(5 DOWNTO 0);
            douta : OUT STD_LOGIC_VECTOR(7 DOWNTO 0)
        );
    end component;

    signal addressInt : integer := 0;

    signal address : std_logic_vector (5 downto 0) := (others => '0');
    signal lastState : std_logic := '0';
    signal counter : integer := 0;
    signal counter2 : integer := 0;
    signal addressSwitchCount : integer := 0;

    signal dataInt : integer := 0;

    constant clockFrequency : integer := 100e6;
    constant clockperiod : time := 100ms / clockFrequency;
    signal tempCLK : std_Logic := '0';
begin
    read : process(clk)
    begin
        address  <= std_logic_vector(to_unsigned(addressInt, address'length));
        if addressSwitch = '1' and lastState = '0' then
            addressInt <= addressInt + 1;
        end if;

        if addressInt >= 64 then
            addressInt <= 0;
        end if;
        lastState <= addressSwitch;
    end process;

    triangleData : triangleWaveRom port map(
            clka => clk,
            ena => '1',
            addra => address,
            douta => data
        );

end Behavioral;
