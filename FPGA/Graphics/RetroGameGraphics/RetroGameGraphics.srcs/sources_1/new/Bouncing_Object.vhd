----------------------------------------------------------------------------------
-- Company:
-- Engineer:
--
-- Create Date: 15.12.2022 17:32:49
-- Design Name:
-- Module Name: Bouncing_Object - Behavioral
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
LIBRARY IEEE;
USE IEEE.STD_LOGIC_1164.ALL;
-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
USE IEEE.NUMERIC_STD.ALL;
-- Uncomment the following library declaration if instantiating
-- any Xilinx leaf cells in this code.
--library UNISIM;
--use UNISIM.VComponents.all;
ENTITY Bouncing_Object IS
	PORT
	(
		reset, BOOSTButton : IN STD_LOGIC;
		clk_100MHz         : IN STD_LOGIC;
		red, green, blue   : OUT STD_LOGIC_VECTOR(3 DOWNTO 0);
		locked             : OUT STD_LOGIC;
		Debug              : OUT STD_LOGIC_VECTOR(9 DOWNTO 0);
		hsync, vsync       : OUT STD_LOGIC
	);
END Bouncing_Object;
ARCHITECTURE Behavioral OF Bouncing_Object IS
	COMPONENT VGA IS
		PORT
		(
			reset, clk25              : IN STD_LOGIC;
			inRed, inGreen, inBlue    : IN STD_LOGIC_VECTOR(3 DOWNTO 0);
			outRed, outGreen, outBlue : OUT STD_LOGIC_VECTOR(3 DOWNTO 0);
			Xcount, Ycount            : OUT STD_LOGIC_VECTOR(9 DOWNTO 0);
			hsync, vsync              : OUT STD_LOGIC
		);
	END COMPONENT;
	COMPONENT prescaler IS
		PORT
		(
			clk_25MHz  : OUT STD_LOGIC;
			reset      : IN STD_LOGIC;
			locked     : OUT STD_LOGIC;
			clk_100MHz : IN STD_LOGIC
		);
	END COMPONENT;
--	COMPONENT VGA_Controller IS
--		PORT
--		(
--			-- inputs
--			reset, clk25 : IN STD_LOGIC;
--			Xin, Yin     : IN STD_LOGIC_VECTOR(9 DOWNTO 0); -- top left positon of object
--			Din          : IN STD_LOGIC_VECTOR(9 DOWNTO 0); -- diameter of object
--			-- sprite RGB data
--			spritePixleRGB : IN STD_LOGIC_VECTOR(11 DOWNTO 0); -- RGB value for object
--			-- backgroud colors
--			BackgroundColorR, BackgroundColorG, BackgroundColorB : IN STD_LOGIC_VECTOR(3 DOWNTO 0); -- RGB value for background
--			-- VGA module connections
--			Xcount, Ycount   : IN STD_LOGIC_VECTOR(9 DOWNTO 0); -- VGA current pixel number
--			Rout, Gout, Bout : OUT STD_LOGIC_VECTOR(3 DOWNTO 0);
--			-- sprite adress to be availebel on spritePixleRGB 2 clocks after put on spritePixleAdress
--			spritePixleAdress : OUT STD_LOGIC_VECTOR(6 DOWNTO 0)
--		);
--	END COMPONENT;
--	COMPONENT Object_Physics IS
--		GENERIC
--		(
--			-- size of visible part screen
--			VGA_WITH  : INTEGER := 640;
--			VGA_HIGHT : INTEGER := 480
--		);
--		PORT
--		(
--			clk, reset, BOOST : IN STD_LOGIC;
--			D                 : IN STD_LOGIC_VECTOR(9 DOWNTO 0);
--			X, Y              : OUT STD_LOGIC_VECTOR(9 DOWNTO 0)
--		);
--	END COMPONENT;
--	COMPONENT sprite_Football IS
--		PORT
--		(
--			clka  : IN STD_LOGIC;
--			ena   : IN STD_LOGIC;
--			addra : IN STD_LOGIC_VECTOR(6 DOWNTO 0);
--			douta : OUT STD_LOGIC_VECTOR(11 DOWNTO 0)
--		);
--	END COMPONENT;
	COMPONENT BackGroundPixels IS
		PORT
		(
			-- inputs
			reset, clk100 : IN STD_LOGIC;
			-- sprite RGB data
			-- Bit 7 6 5 4 3 2 1 0
			-- Data R R R G G G B B
			tileMapNumber : IN STD_LOGIC_VECTOR(5 DOWNTO 0); -- tile number starting top left going left to richt and down
			-- VGA module connections
			Xcount, Ycount   : IN STD_LOGIC_VECTOR(9 DOWNTO 0); -- VGA current pixel number
			Rout, Gout, Bout : OUT STD_LOGIC_VECTOR(3 DOWNTO 0);
			-- sprite adress to be availebel on spritePixleRGB 2 clocks after put on spritePixleAdress
			tileMapadress : OUT STD_LOGIC_VECTOR(7 DOWNTO 0) -- set addres of tile to read
		);
	END COMPONENT;
	SIGNAL clk_25, enable                              : std_logic;
	SIGNAL Dobject, Xobject, Yobject                   : STD_LOGIC_VECTOR(9 DOWNTO 0);
	SIGNAL ObjectColorR, ObjectColorG, ObjectColorB    : STD_LOGIC_VECTOR(3 DOWNTO 0);
	SIGNAL BGroundColorR, BGroundColorG, BGroundColorB : STD_LOGIC_VECTOR(3 DOWNTO 0);
	SIGNAL XpicelVGA, YpicelVGA                        : STD_LOGIC_VECTOR(9 DOWNTO 0);
	SIGNAL VGAcolorR, VGAcolorG, VGAcolorB             : STD_LOGIC_VECTOR(3 DOWNTO 0);
	-- sprite
	SIGNAL spritePixleAdress : STD_LOGIC_VECTOR(6 DOWNTO 0);
	SIGNAL spritePixleRGB    : STD_LOGIC_VECTOR(11 DOWNTO 0);
	SIGNAL sDebug: STD_LOGIC_VECTOR(11 DOWNTO 0);	
	SIGNAL sDCounter: integer := 0;
	
BEGIN
	-- map ports
	VGA0 : VGA
	PORT MAP
	(
		reset    => reset,
		clk25    => clk_25,
		inRed    => VGAcolorR,
		inGreen  => VGAcolorG,
		inBlue   => VGAcolorB,
		outRed   => red,
		outGreen => green,
		outBlue  => blue,
		Xcount   => XpicelVGA,
		Ycount   => YpicelVGA,
		hsync    => hsync,
		vsync    => vsync
	);
	-- map ports
	prescaler0 : prescaler
	PORT MAP
	(
		clk_25MHz  => clk_25,
		reset      => reset,
		locked     => locked,
		clk_100MHz => clk_100MHz
	);
	-- map ports
--	VGA_Controller0 : VGA_Controller
--	PORT MAP
--	(
--		clk25             => clk_25,
--		reset             => reset,
--		Xin               => Xobject,
--		Yin               => Yobject,
--		Din               => Dobject,
--		spritePixleRGB    => spritePixleRGB,
--		BackgroundColorR  => BGroundColorR,
--		BackgroundColorG  => BGroundColorG,
--		BackgroundColorB  => BGroundColorB,
--		Xcount            => XpicelVGA,
--		Ycount            => YpicelVGA,
--		Rout              => VGAcolorR,
--		Gout              => VGAcolorG,
--		Bout              => VGAcolorB,
--		spritePixleAdress => spritePixleAdress
--	);
	-- map ports
--	Object_Physics0 : Object_Physics
--	PORT MAP
--	(
--		clk   => clk_25,
--		reset => reset,
--		BOOST => BOOSTButton,
--		D     => Dobject,
--		X     => Xobject,
--		Y     => Yobject
--	);
	-- map ports
--	sprite_Football0 : sprite_Football
--	PORT MAP
--	(
--		clka  => clk_25,
--		ena   => enable,
--		addra => spritePixleAdress,
--		douta => spritePixleRGB
--	);

	-- map ports
	BackGroundPixels0 : BackGroundPixels
	PORT MAP
	(
	reset => reset,
		clk100  => clk_100MHz,
		tileMapNumber => sDebug(5 downto 0),
		Xcount => XpicelVGA,
		Ycount => YpicelVGA,
		Rout => VGAcolorR,
		Gout => VGAcolorG,
		Bout => VGAcolorB,
		tileMapadress => Debug(7 downto 0)
	);
	
	enable        <= NOT reset;
	Dobject       <= std_logic_vector(to_unsigned(10, Dobject'length));
	ObjectColorR  <= (OTHERS => '0');
	ObjectColorG  <= (OTHERS => '0');
	ObjectColorB  <= (OTHERS => '0');
	BGroundColorR <= (OTHERS => '0');
	BGroundColorG <= (OTHERS => '0');
	BGroundColorB <= (OTHERS => '1');
--	Debug(0)      <= Xobject(6);
--	Debug(1)      <= Yobject(6);
--	Debug(2)      <= '0';
--	Debug(3)      <= XpicelVGA(6);
--	Debug(4)      <= YpicelVGA(6);
--	Debug(5)      <= '0';
--	Debug(6)      <= '0';
--	Debug(7)      <= '0';
	Debug(8)      <= '0';
	Debug(9)      <= '0';
	
	process(clk_100MHz)
    begin
    if (rising_edge (clk_100MHz)) then
        sDCounter <= sDCounter + 1;
        
        if (sDCounter > 5000) then
            sDebug <= std_logic_vector(unsigned (sDebug) + 1);
            
            if (unsigned(sDebug) > 30) then
                sDebug <= (others => '0');
            end if;
        end if;
    end if;
    end process;
END Behavioral;