----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 12.12.2022 13:56:08
-- Design Name: 
-- Module Name: VGA_Controller - Behavioral
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
use IEEE.NUMERIC_STD.ALL;
--use IEEE.Std_Logic_Arith.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL;

-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx leaf cells in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity VGA_Controller is
  generic(
    -- size of visible part screen
    HORIZONTAL_COUNT_VISIBLE_START: integer := 144;
    VERTICAL_COUNT_VISIBLE_START: integer := 31
    );
  Port (
    -- inputs
    reset, clk25 : in STD_LOGIC;
    Xin, Yin: in STD_LOGIC_VECTOR(9 downto 0); -- top left positon of object
    Din: in STD_LOGIC_VECTOR(9 downto 0); -- diameter of object
    -- sprite RGB data
    spritePixleRGB: in  STD_LOGIC_VECTOR(11 downto 0); -- RGB value for object
    -- backgroud colors
    BackgroundColorR, BackgroundColorG, BackgroundColorB: in  STD_LOGIC_VECTOR(3 downto 0); -- RGB value for background
    -- VGA module connections
    Xcount, Ycount : in STD_LOGIC_VECTOR(9 downto 0); -- VGA current pixel number
    Rout, Gout, Bout : out STD_LOGIC_VECTOR(3 downto 0);
    -- sprite adress to be availebel on spritePixleRGB 2 clocks after put on spritePixleAdress
    spritePixleAdress : out STD_LOGIC_VECTOR(6 downto 0)
    );
end VGA_Controller;

architecture Behavioral of VGA_Controller is
    signal XVGA: integer;
    signal YVGA: integer;
    signal XStored: STD_LOGIC_VECTOR(9 downto 0);
    signal YStored: STD_LOGIC_VECTOR(9 downto 0);
    signal DStored: STD_LOGIC_VECTOR(9 downto 0);
    
    -- sprite
    signal spriteXpositon: STD_LOGIC_VECTOR(9 downto 0);
    signal spriteYpositon: STD_LOGIC_VECTOR(9 downto 0);
    --signal spritePositon: integer ;
    signal spritePositon: STD_LOGIC_VECTOR(19 downto 0);
begin
    -- convert Xcount and Ycount to X,Y values on visible part of screen
    -- add 1 to compencate for clock signal timing difrence to VGA
    XVGA <= to_integer(unsigned(Xcount)) - HORIZONTAL_COUNT_VISIBLE_START + 1; 
    YVGA <= to_integer(unsigned(Ycount)) - VERTICAL_COUNT_VISIBLE_START;
    
    -- calculate x and y postion of sprite (based on object location)
    spriteXpositon <= (Xcount - HORIZONTAL_COUNT_VISIBLE_START + 1) - XStored;
    spriteYpositon <= (Ycount - VERTICAL_COUNT_VISIBLE_START) - YStored;
    -- calculate pixle adderss in sprite to read + 2 because of delay in
    --  reading from other entity
    --spritePositon <= TO_INTEGER (unsigned(spriteXpositon + (spriteYpositon * Din) - 2));
    --spritePixleAdress <= std_logic_vector(to_unsigned(spritePositon, spritePixleAdress'length));
    spritePositon <= (spriteXpositon + (spriteYpositon * Din) + 2);
    
    
    process (reset, clk25)
    begin        
        -- if reset
        if (reset = '1') then
            -- default values
            -- and set color to black
            Rout  <= (others => '0');
            Gout  <= (others => '0');
            Bout  <= (others => '0');
            spritePixleAdress <= (others => '0');
            
        -- if clk rising_edge
        elsif rising_edge(clk25) then
            -- default values for outputs, so output state is always defined
            -- set back ground collor
            Rout    <= BackgroundColorR;
            Gout    <= BackgroundColorG;
            Bout    <= BackgroundColorB;            
            --XStored <= XStored; --todo:
            --YStored <= YStored;   
            --DStored <= DStored;   
            
            --spritePixleAdress <= spritePositon(0 to spritePixleAdress'length - 1);
            spritePixleAdress <= spritePositon(spritePixleAdress'length - 1 downto 0);
    
            -- is het voordeliger of minder vordelig om deze code in volgende if statment te zetten
            -- if object is in horizontal section
            if ((XVGA) >= to_integer(unsigned(XStored))) and (XVGA < to_integer((unsigned(XStored)+unsigned(DStored)))) then
            --if ((XVGA >= (XStored)) and (XVGA <= ((XStored)+(DStored)))) then
                -- if object is in vertical section
                if ((YVGA >= to_integer(unsigned(YStored))) and (YVGA < to_integer((unsigned(YStored)+unsigned(DStored))))) then
                    --display object whith this color
                    if (spritePixleRGB /= X"F0F") then
                        Rout  <= spritePixleRGB(3 downto 0);
                        Gout  <= spritePixleRGB(7 downto 4);
                        Bout  <= spritePixleRGB(11 downto 8);
                    end if;
                end if;
            end if;   
            
            -- anti Tearing
            -- if currend displayed pixel is not in visible part of screen.
            if ((XVGA < 0) and (YVGA < 0)) then
                -- update stored X, Y, D of object
                XStored <= Xin;
                YStored <= Yin;
                DStored <= Din;
            end if;   
        end if;
    end process;
end Behavioral;
