----------------------------------------------------------------------------------
-- Company:        Avans 
-- Engineer:       J.vd.Heuvel
-- 
-- Create Date:    14:13:20 04/11/2009 
-- Module Name:    VGA - Behavioral 
-- Target Devices: Xilinx Artix 7
-- Description: 
--
-- Revision: 
-- Revision 0.01 - File Created
-- Additional Comments: 
--
----------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.STD_LOGIC_ARITH.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL;

entity VGA is
  generic(
    -- size of visible part screen
    HORIZONTAL_COUNT_VISIBLE_START: integer := 144;
    VERTICAL_COUNT_VISIBLE_START: integer := 31
    );
  Port ( 	
    reset, clk25 : in STD_LOGIC;
    inRed, inGreen, inBlue : in STD_LOGIC_VECTOR(3 downto 0);
    outRed, outGreen, outBlue : out STD_LOGIC_VECTOR(3 downto 0);
    Xcount, Ycount : out STD_LOGIC_VECTOR(9 downto 0);
    hsync, vsync : out  STD_LOGIC
    );
end VGA;

architecture Behavioral of VGA is
    signal hcount: STD_LOGIC_VECTOR(9 downto 0);
    signal vcount: STD_LOGIC_VECTOR(9 downto 0);
begin

    -- use Xcount and Ycount, HORIZONTAL_COUNT_VISIBLE_START,31 is top left of visable screan
    Xcount <= hcount;
    Ycount <= vcount;   
        
    process (reset, clk25) 
    begin        
        -- if reset
        if (reset = '1') then
            -- default values for outputs, so output state is always defined
            outRed <= (others => '0');
            outGreen <= (others => '0');
            outBlue <= (others => '0');
            hcount <= (others => '0');
            vcount <= (others => '0');
            hsync  <= '0';
            vsync  <= '0';
        elsif rising_edge(clk25) then
            -- default values for outputs, so output state is always defined
            outRed <= (others => '0');
            outGreen <= (others => '0');
            outBlue <= (others => '0');
            hsync  <= '0';
            vsync  <= '0';
            
            -- when there is clk signal keep hcount and vcount. (is dit nodig of werkt ook zonder?)
            hcount <= hcount;
            vcount <= vcount;
            
            -- if in visible vieuw section of screen
           if (hcount >= HORIZONTAL_COUNT_VISIBLE_START) and (hcount < 784) and (vcount >= VERTICAL_COUNT_VISIBLE_START) and (vcount < 511) then
                outRed <= inRed;
                outGreen <= inGreen;
                outBlue <= inBlue;     
            end if;
            
            -- sync puls for horizontal 
            if hcount < 97 then
                hsync <= '0';
            else
                hsync <= '1';
            end if;
            
            -- sync puls for vertical 
            if vcount < 3 then
                vsync <= '0';
            else
                vsync <= '1';
            end if;
            
            -- move 1 pixel to right
            hcount <= hcount + 1;
            
            -- end of display on right side 800 - 1 because signales are updated at end of process
            if hcount >= (800 - 1) then
                -- go 1 row down
                vcount <= vcount + 1;
                -- go to left
                hcount <= (others => '0');
            end if;
            
            -- end of display on bottom side 521 - 1 because signales are updated at end of process
            if vcount >= (521 - 1) then	
                -- go to top    
                vcount <= (others => '0');
            end if;
         end if;
    end process;

end Behavioral;

