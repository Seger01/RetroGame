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
use IEEE.STD_LOGIC_1164.ALL;

-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx leaf cells in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity SerialDataBuffer is
    Port ( clk100Mhz : in STD_LOGIC;
         sysReset : in STD_LOGIC;
         serialData : in STD_LOGIC_VECTOR (1808 -1 downto 0);
         tileData : out STD_LOGIC_VECTOR (1800 -1 downto 0);
         entityData : out STD_LOGIC_VECTOR (1200 -1 downto 0);
         soundData : out STD_LOGIC_VECTOR (8 -1 downto 0);
         hudData : out STD_LOGIC_VECTOR (24 -1 downto 0));
end SerialDataBuffer;

architecture Behavioral of SerialDataBuffer is

    signal tileDataBuffer : STD_LOGIC_VECTOR(1800 -1 downto 0);
    signal entityDataBuffer : STD_LOGIC_VECTOR (1200 -1 downto 0);
    signal soundDataBuffer : STD_LOGIC_VECTOR(8 -1 downto 0);
    signal hudDataBuffer : STD_LOGIC_VECTOR (24 -1 downto 0);
    
    signal previousSerialData : STD_LOGIC_VECTOR(1808 -1 downto 0) := (others => '0');

begin
    
    
    process(clk100Mhz, sysReset)
    begin

        if(sysReset = '1') then
            tileData <= (others => '0');
            entityData <= (others => '0');
            soundData <= (others => '0');
            hudData <= (others => '1');
            tileDataBuffer <= (others => '0');
            entityDataBuffer <= (others => '0');
            soundDataBuffer <= (others => '0');
            hudDataBuffer <= (others => '1');
            
            previousSerialData <= (others => '0');
        elsif(falling_edge(clk100Mhz)) then
--            if (serialData /= previousSerialData) then
--                previousSerialData <= serialData;
                if(serialData(7 downto 0) = x"FF") then
                    tileDataBuffer <= serialData(1808 -1 downto 8);
                    tileData <= serialData(1808 -1 downto 8);
                    
                    entityData <= entityDataBuffer;
                    soundData <= soundDataBuffer;
                    hudData <= hudDataBuffer;

                else
                    entityData <= serialData(1208 -1 downto 8);
                    entityDataBuffer <= serialData(1208 -1 downto 8);

                    soundData <= serialData(1216 -1 downto 1208);
                    soundDataBuffer <= serialData(1216 -1 downto 1208);

                    hudData <= serialData(1240 -1 downto 1216);
                    hudDataBuffer <= serialData(1240 -1 downto 1216);
                    
                    tileData <= tileDataBuffer;

                end if;
--            else
--                tileData <= tileDataBuffer;
--                entityData <= entityDataBuffer;
--                soundData <= soundDataBuffer;
--                hudData <= hudDataBuffer;
--                tileDataBuffer <= tileDataBuffer;
--                entityDataBuffer <= entityDataBuffer;
--                soundDataBuffer <= soundDataBuffer;
--                hudDataBuffer <= hudDataBuffer;
--            end if;
        else

        end if;


    end process;


end Behavioral;
