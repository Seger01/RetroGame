
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
    GENERIC (
        -- amount of tiles visible on screan
        ENTITY_AMOUNT                  : INTEGER := 50;
        ENTITY_X_BIT_SIZE              : INTEGER := 8;
        ENTITY_Y_BIT_SIZE              : INTEGER := 8;
        ENTITY_NUMMER_BIT_SIZE         : INTEGER := 6
    );
	PORT
	(
		debugIn   : IN  STD_LOGIC_VECTOR(15 DOWNTO 0); -- Debug switches
		debugOut   : OUT  STD_LOGIC_VECTOR(14 DOWNTO 0); -- Debug Leds
		reset              : IN STD_LOGIC;
		clk_100MHz         : IN STD_LOGIC;
		red, green, blue   : OUT STD_LOGIC_VECTOR(3 DOWNTO 0);
		locked             : OUT STD_LOGIC;
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
	
--	COMPONENT BackGroundPixels IS
--		PORT
--		(
--			-- inputs
--			reset, clk100 : IN STD_LOGIC;
--			-- sprite RGB data
--			-- Bit 7 6 5 4 3 2 1 0
--			-- Data R R R G G G B B
--			tileMapNumber : IN STD_LOGIC_VECTOR(5 DOWNTO 0); -- tile number starting top left going left to richt and down
--			-- VGA module connections
--			Xcount, Ycount   : IN STD_LOGIC_VECTOR(9 DOWNTO 0); -- VGA current pixel number
--			Rout, Gout, Bout : OUT STD_LOGIC_VECTOR(3 DOWNTO 0);
--			-- sprite adress to be availebel on spritePixleRGB 2 clocks after put on spritePixleAdress
--			tileMapadress : OUT STD_LOGIC_VECTOR(7 DOWNTO 0) -- set addres of tile to read
--		);
--	END COMPONENT;
	COMPONENT EntityPixels IS
    GENERIC (
        -- amount of tiles visible on screan
        ENTITY_AMOUNT                  : INTEGER := ENTITY_AMOUNT;
        ENTITY_X_BIT_SIZE              : INTEGER := ENTITY_X_BIT_SIZE;
        ENTITY_Y_BIT_SIZE              : INTEGER := ENTITY_Y_BIT_SIZE;
        ENTITY_NUMMER_BIT_SIZE         : INTEGER := ENTITY_NUMMER_BIT_SIZE
    );
    PORT (    
		debugIn   : IN  STD_LOGIC_VECTOR(15 DOWNTO 0); -- Debug switches
		debugOut   : OUT  STD_LOGIC_VECTOR(14 DOWNTO 0); -- Debug Leds
        -- inputs
        reset, clk    : IN  STD_LOGIC;
        -- sprite RGB data
        -- Bit 7 6 5 4 3 2 1 0
        -- Data R R R G G G B B
        -- vector with all entity data
        dataVector    : IN  STD_LOGIC_VECTOR((ENTITY_AMOUNT * (ENTITY_X_BIT_SIZE + ENTITY_Y_BIT_SIZE + ENTITY_NUMMER_BIT_SIZE)) -1 DOWNTO 0); 
        -- VGA module connections
        Xcount, Ycount   : IN  STD_LOGIC_VECTOR(9 DOWNTO 0); -- VGA current pixel number todo: add ofset
        Rout, Gout, Bout : OUT STD_LOGIC_VECTOR(3 DOWNTO 0)
    );
    END COMPONENT;

	SIGNAL clk_25                                      : std_logic;
	SIGNAL XpicelVGA, YpicelVGA                        : STD_LOGIC_VECTOR(9 DOWNTO 0);
	SIGNAL VGAcolorR, VGAcolorG, VGAcolorB             : STD_LOGIC_VECTOR(3 DOWNTO 0);
	-- sprite
	SIGNAL sDebug: STD_LOGIC_VECTOR(5 DOWNTO 0);	
	SIGNAL sDCounter: integer range 0 to 64;
	SIGNAL sTest :  STD_LOGIC_VECTOR((ENTITY_AMOUNT * (ENTITY_X_BIT_SIZE + ENTITY_Y_BIT_SIZE + ENTITY_NUMMER_BIT_SIZE)) -1 DOWNTO 0);
    SIGNAL sTestData :  STD_LOGIC_VECTOR(((ENTITY_X_BIT_SIZE + ENTITY_Y_BIT_SIZE + ENTITY_NUMMER_BIT_SIZE)) -1 DOWNTO 0);	
    SIGNAL iTestCounter: integer range 0 to 100000002;
	
    function to_std_logic(i : in integer) return std_logic is
    begin
        if i = 0 then
            return '0';
        end if;
        return '1';
    end function;
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
--	BackGroundPixels0 : BackGroundPixels
--	PORT MAP
--	(
--	reset => reset,
--		clk100  => clk_100MHz,
--		tileMapNumber => sDebug(5 downto 0),
--		Xcount => XpicelVGA,
--		Ycount => YpicelVGA,
--		Rout => VGAcolorR,
--		Gout => VGAcolorG,
--		Bout => VGAcolorB,
--		tileMapadress => Debug(7 downto 0)
--	);
	EntityPixels0 : EntityPixels
	PORT MAP
	(
        debugIn => debugIn,
        debugOut => debugOut,
        reset => reset,
		clk  => clk_25,
		dataVector => sTest,
		Xcount => XpicelVGA,
		Ycount => YpicelVGA,
		Rout => VGAcolorR,
		Gout => VGAcolorG,
		Bout => VGAcolorB
	);
		
	sDCounter <= 0;
	sDebug <= (others => '0');
	
	process(clk_25)
	   variable vEntityVectorOffset : natural range 0 to ((ENTITY_AMOUNT * (ENTITY_X_BIT_SIZE + ENTITY_Y_BIT_SIZE + ENTITY_NUMMER_BIT_SIZE)) -1) := 0;
	   variable vEntityVectorOffset1 : natural range 0 to ((ENTITY_AMOUNT * (ENTITY_X_BIT_SIZE + ENTITY_Y_BIT_SIZE + ENTITY_NUMMER_BIT_SIZE)) -1) := 0;
	begin
	   if (rising_edge (clk_25)) then
	       iTestCounter <= iTestCounter + 1;
	       sTest <= sTest;
	       sTestData <= (others => '0');
	       
	       if (iTestCounter >= 25000000) then
                -- loop for  
                sTest <= (others => '0');
                iTestCounter <= 0;
            
                for count in 0 to ENTITY_AMOUNT - 1 loop
                    -- vector entity 0 => 49 by count    *     total entity size
                    vEntityVectorOffset := count * (ENTITY_X_BIT_SIZE + ENTITY_Y_BIT_SIZE + ENTITY_NUMMER_BIT_SIZE);
                    vEntityVectorOffset1 := 1 * (ENTITY_X_BIT_SIZE + ENTITY_Y_BIT_SIZE + ENTITY_NUMMER_BIT_SIZE);
                       
                    if (count < 5) then
                        sTest((vEntityVectorOffset + vEntityVectorOffset1 - 1) downto vEntityVectorOffset) <= std_logic_vector(to_unsigned (count * 100, 8)) & std_logic_vector(to_unsigned (count * 100, 8)) & "000000";
                    else
                        sTest((vEntityVectorOffset + vEntityVectorOffset1 - 1) downto vEntityVectorOffset) <= std_logic_vector(to_unsigned (count * 100, 8)) & std_logic_vector(to_unsigned (count * 100, 8)) & "000001";
                    end if;            
                end loop;
            end if;
        end if;
	end process;
	
--	process(clk_100MHz)
--    begin
--    if (rising_edge (clk_100MHz)) then
--        sDCounter <= sDCounter + 1;
--        sDebug <= sDebug;
        
--        if (sDCounter > 5000) then
--            sDCounter <= 0;
--            sDebug <= std_logic_vector(unsigned (sDebug) + 1);
            
--            if (unsigned(sDebug) > 30) then
--                sDebug <= (others => '0');
--            end if;
--        end if;
--    end if;
--    end process;
END Behavioral;