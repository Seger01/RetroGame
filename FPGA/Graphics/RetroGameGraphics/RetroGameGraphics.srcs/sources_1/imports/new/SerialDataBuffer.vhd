----------------------------------------------------------------------------------
-- Company:
-- Engineer:
--
-- Create Date: 24.02.2023 12:39:36
-- Design Name:
-- Module Name: SerialDataBuffer - Behavioral
-- Project Name:
-- Target Devices:
-- Tool Versions:
-- Description:
--
-- Dependencies:
--
-- Revision:
-- Revision 0.01 - File Created
-- Additional Comments:
--
----------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.all;
-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--use IEEE.NUMERIC_STD.ALL;
-- Uncomment the following library declaration if instantiating
-- any Xilinx leaf cells in this code.
--library UNISIM;
--use UNISIM.VComponents.all;
entity SerialDataBuffer is
	port
	(
		clk100Mhz  : in  STD_LOGIC;
		sysReset   : in  STD_LOGIC;
		serialData : in  STD_LOGIC_VECTOR (1240+ 2400 - 1 downto 0);
		-- VGA module connections
		Ycount   : IN  STD_LOGIC_VECTOR(9 DOWNTO 0);
		tileData   : out STD_LOGIC_VECTOR (2400 - 1 downto 0);
		entityData : out STD_LOGIC_VECTOR (1200 - 1 downto 0);
		soundData  : out STD_LOGIC_VECTOR (8 - 1 downto 0);
		hudData    : out STD_LOGIC_VECTOR (24 - 1 downto 0));
end SerialDataBuffer;
architecture Behavioral of SerialDataBuffer is
begin
	process (clk100Mhz, sysReset)
	begin
		if (sysReset = '1') then
			tileData           <= (others => '0');
			entityData         <= (others => '0');
			soundData          <= (others => '0');
			hudData            <= (others => '1');
		elsif (rising_edge(clk100Mhz)) then
			-- VGA not in visible part to prevent tearing < 31
			if ((Ycount) < "0000011111") then
                -- read tiles
                tileData       <= serialData(2408 - 1 downto 8);
                -- read entity
                entityData       <= serialData(2400+ 1208 - 1 downto 2400+ 8);
                soundData        <= serialData(2400+ 1216 - 1 downto 2400+ 1208);
                hudData          <= serialData(2400+ 1240 - 1 downto 2400+ 1216);
			end if;
		end if;
	end process;
end Behavioral;