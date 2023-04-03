----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 15.12.2022 19:18:15
-- Design Name: 
-- Module Name: Object_Physics - Behavioral
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
use IEEE.STD_LOGIC_ARITH.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL;

entity Object_Physics is
    generic(
        -- size of visible part screen
        VGA_WITH: integer := 640;
        VGA_HIGHT: integer := 480
    );
    Port ( 	clk,reset, BOOST : in STD_LOGIC;
			D : in STD_LOGIC_VECTOR(9 downto 0);
			X,Y : out STD_LOGIC_VECTOR(9 downto 0)
			);
end Object_Physics;

architecture Behavioral of Object_Physics is
    -- start is 0,0 (left top)
    signal nextX, nextY : STD_LOGIC_VECTOR(9 downto 0) := (others => '0');
    -- RU: Right Up, RD: Right Down, LD: Left Down, LU: Left Up 
    type directions is (RU, RD, LD, LU);
    -- start is 0,0 (left top) direction to go to is RD
    signal dir : directions := RD;
    
    -- internal max with and hight to determen colision
    signal MAX_WITH : STD_LOGIC_VECTOR(9 downto 0);
    signal MAX_HIGHT : STD_LOGIC_VECTOR(9 downto 0);
    signal MIN_WITH : STD_LOGIC_VECTOR(9 downto 0);
    signal MIN_HIGHT : STD_LOGIC_VECTOR(9 downto 0);
    
    -- counter to determent object movment speed by counting input clock and updating after x time.
    signal counter : integer := 0;
begin    
    -- add 1 becouse (the signals in code lack 1 behind when incremented/decremented)    
    MIN_WITH  <= conv_std_logic_vector(0 + 1, MIN_WITH'length);
    MIN_HIGHT <= conv_std_logic_vector(0 + 1, MIN_HIGHT'length);
    -- subtract D diameter from borders for checking collision
    -- -1 for max because (example: size is 10 max is 9) 
    -- subtract 1 becouse (the signals in code lack 1 behind when incremented/decremented)  -- deleted - 1 becouse of by one  
    MAX_WITH  <= VGA_WITH  - D - 1;
    MAX_HIGHT <= VGA_HIGHT - D - 1;
          
process (reset, clk)
    variable iBoostValue : integer ;
begin
    if (reset = '1') then
        -- all is reset end process
        -- start top left and go Right Down
        dir <= RD;
        -- start top left
        nextX <= (others => '0');
        nextY <= (others => '0');
        X <= (others => '0');
        Y <= (others => '0');
        -- restart count
        counter <= 0;
    elsif (rising_edge(clk)) then
        -- signals are updated at end of proces so if not over written stay the same
        dir <= dir;
        -- set value of nextX & nextY in X,Y at end of process
        X <= nextX;
        Y <= nextY;
        -- increment count
        counter <= counter + 1;
        
        -- if boost button is pressed go fast
        if (BOOST = '1') then
            -- speed!!
            iBoostValue := 25000000/100;
        else
            -- slow...
            iBoostValue := 25000000/1;
        end if;
        
        -- if 25MHz clk 5 frames per second (movements/second), -1 becouse start at 0
        if (counter >= ((iBoostValue) - 1)) then
            counter <= 0;
       
            case dir is
                -- go Right Down
                when RD =>
                    -- new movement
                    nextX <= nextX + 1;       
                    nextY <= nextY + 1;
                    
                    -- right collision
                    if(nextX >= (MAX_WITH)) then 
                        dir <= LD;
                    end if;
                    
                    -- bottom collision
                    if(nextY >= (MAX_HIGHT)) then 
                        dir <= RU;
                    end if;                  
                    
                    
                when RU =>
                    nextX <= nextX + 1;
                    nextY <= nextY - 1;
                    
                    -- right collision
                    if(nextX >= (MAX_WITH)) then 
                        dir <= LU;
                    end if;
                    
                    -- top collision
                    if(nextY <= (MIN_HIGHT)) then 
                        dir <= RD;
                    end if;       
                    
                when LD =>
                    nextX <= nextX - 1;
                    nextY <= nextY + 1;
                    
                    -- left collision
                    if(nextX <= (MIN_WITH)) then 
                        dir <= RD;
                    end if;
                    
                    -- bottom collision
                    if(nextY >= (MAX_HIGHT)) then 
                        dir <= LU;
                    end if;       
                    
                when LU =>
                    nextX <= nextX - 1;
                    nextY <= nextY - 1;
                    
                    -- left collision
                    if(nextX <= (MIN_WITH)) then 
                        dir <= RU;
                    end if;
                    
                    -- top collision
                    if(nextY <= (MIN_HIGHT)) then 
                        dir <= LD;
                    end if;  
                    
                when others =>
                    -- start top left
                    dir <= RD;
                    -- new XY is start
                    nextX <= (others => '0');
                    nextY <= (others => '0');
                    
            end case;                
        end if;
    end if;
end process;

end Behavioral;
