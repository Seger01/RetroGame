
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
	GENERIC
	(
		-- amount of tiles visible on screan
		ENTITY_AMOUNT          : INTEGER := 50;
		ENTITY_X_BIT_SIZE      : INTEGER := 8;
		ENTITY_Y_BIT_SIZE      : INTEGER := 8;
		ENTITY_NUMMER_BIT_SIZE : INTEGER := 6;
		-- amount of tiles visible on screan
		TILE_AMOUNT                    : INTEGER := (15 * 15);
		TILE_AMOUNT_HIGHT              : INTEGER := 15;
		TILE_AMOUNT_WITH               : INTEGER := 15;
		-- amount of bit to identify one tile
		TILE_NUMBER_SIZE               : INTEGER := 6
	);
	PORT
	(
		debugIn          : IN  STD_LOGIC_VECTOR(15 DOWNTO 0); -- Debug switches
		debugOut         : OUT STD_LOGIC_VECTOR(14 DOWNTO 0); -- Debug Leds
		reset            : IN  STD_LOGIC;
		clk_100MHz       : IN  STD_LOGIC;
		red, green, blue : OUT STD_LOGIC_VECTOR(3 DOWNTO 0);
		locked           : OUT STD_LOGIC;
		hsync, vsync     : OUT STD_LOGIC
	);
END Bouncing_Object;
ARCHITECTURE Behavioral OF Bouncing_Object IS
	COMPONENT VGA IS
		PORT
		(
			reset, clk25              : IN  STD_LOGIC;
			inRed, inGreen, inBlue    : IN  STD_LOGIC_VECTOR(3 DOWNTO 0);
			outRed, outGreen, outBlue : OUT STD_LOGIC_VECTOR(3 DOWNTO 0);
			Xcount, Ycount            : OUT STD_LOGIC_VECTOR(9 DOWNTO 0);
			hsync, vsync              : OUT STD_LOGIC
		);
	END COMPONENT;
	COMPONENT prescaler IS
		PORT
		(
			clk_25MHz  : OUT STD_LOGIC;
			reset      : IN  STD_LOGIC;
			locked     : OUT STD_LOGIC;
			clk_100MHz : IN  STD_LOGIC
		);
	END COMPONENT;
	COMPONENT BackGroundPixels IS
        PORT (
			debugIn          : IN  STD_LOGIC_VECTOR(15 DOWNTO 0); -- Debug switches
			debugOut         : OUT STD_LOGIC_VECTOR(14 DOWNTO 0); -- Debug Leds
            -- inputs
            reset, clk       : IN  STD_LOGIC;
            -- VGA module connections
            Xcount, Ycount   : IN  STD_LOGIC_VECTOR(9 DOWNTO 0);
            -- vector with map tile numbers		-- tile number starting top left going left to richt and down
            tileNumberVector : IN  STD_LOGIC_VECTOR((TILE_AMOUNT * (TILE_NUMBER_SIZE)) - 1 DOWNTO 0);
            Rout, Gout, Bout : OUT STD_LOGIC_VECTOR(3 DOWNTO 0)
        );
    END COMPONENT;
	COMPONENT EntityPixels IS
		GENERIC
		(
			-- amount of tiles visible on screan
			ENTITY_AMOUNT          : INTEGER := ENTITY_AMOUNT;
			ENTITY_X_BIT_SIZE      : INTEGER := ENTITY_X_BIT_SIZE;
			ENTITY_Y_BIT_SIZE      : INTEGER := ENTITY_Y_BIT_SIZE;
			ENTITY_NUMMER_BIT_SIZE : INTEGER := ENTITY_NUMMER_BIT_SIZE
		);
		PORT
		(
			debugIn          : IN  STD_LOGIC_VECTOR(15 DOWNTO 0); -- Debug switches
			debugOut         : OUT STD_LOGIC_VECTOR(14 DOWNTO 0); -- Debug Leds
			-- inputs
			reset, clk       : IN  STD_LOGIC;
			-- sprite RGB data
			-- Bit 7 6 5 4 3 2 1 0
			-- Data R R R G G G B B
			-- vector with all entity data
			dataVector       : IN  STD_LOGIC_VECTOR((ENTITY_AMOUNT * (ENTITY_X_BIT_SIZE + ENTITY_Y_BIT_SIZE + ENTITY_NUMMER_BIT_SIZE)) - 1 DOWNTO 0);
		    Rin, Gin, Bin    : IN  STD_LOGIC_VECTOR(3 DOWNTO 0);
			-- VGA module connections
			Xcount, Ycount   : IN  STD_LOGIC_VECTOR(9 DOWNTO 0); -- VGA current pixel number todo: add ofset
			Rout, Gout, Bout : OUT STD_LOGIC_VECTOR(3 DOWNTO 0)
		);
	END COMPONENT;
	SIGNAL clk_25 : STD_LOGIC;
	SIGNAL XpicelVGA, YpicelVGA : STD_LOGIC_VECTOR(9 DOWNTO 0);
	SIGNAL VGAcolorR, VGAcolorG, VGAcolorB : STD_LOGIC_VECTOR(3 DOWNTO 0);
	-- sprite
	SIGNAL sDebug : STD_LOGIC_VECTOR(5 DOWNTO 0);
	SIGNAL sDCounter : INTEGER RANGE 0 TO 64;
	SIGNAL sTest : STD_LOGIC_VECTOR((ENTITY_AMOUNT * (ENTITY_X_BIT_SIZE + ENTITY_Y_BIT_SIZE + ENTITY_NUMMER_BIT_SIZE)) - 1 DOWNTO 0);
	SIGNAL sTestData : STD_LOGIC_VECTOR(((ENTITY_X_BIT_SIZE + ENTITY_Y_BIT_SIZE + ENTITY_NUMMER_BIT_SIZE)) - 1 DOWNTO 0);
	SIGNAL iTestCounter : INTEGER RANGE 0 TO 100000002;
	
	SIGNAL BackgroundColorR : STD_LOGIC_VECTOR(3 DOWNTO 0);	
	SIGNAL BackgroundColorG : STD_LOGIC_VECTOR(3 DOWNTO 0);	
	SIGNAL BackgroundColorB : STD_LOGIC_VECTOR(3 DOWNTO 0);	
	
	SIGNAL sDebugTileNumberVector : STD_LOGIC_VECTOR((TILE_AMOUNT * (TILE_NUMBER_SIZE)) - 1 DOWNTO 0);
	
	FUNCTION to_std_logic(i : IN INTEGER) RETURN STD_LOGIC IS
	BEGIN
		IF i = 0 THEN
			RETURN '0';
		END IF;
		RETURN '1';
	END FUNCTION;
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
	PORT
	MAP
	(
        clk_25MHz => clk_25,
        reset => reset,
        locked => locked,
        clk_100MHz => clk_100MHz
	);
	-- map ports
    BackGroundPixels0 : BackGroundPixels
    PORT MAP
    (
        debugIn => debugIn,
        debugOut => debugOut,
        reset => reset,
        clk  => clk_25,
        Xcount => XpicelVGA,
        Ycount => YpicelVGA,
        tileNumberVector => sDebugTileNumberVector,
        Rout => BackgroundColorR,
        Gout => BackgroundColorG,
        Bout => BackgroundColorB
    );
	EntityPixels0 : EntityPixels
	PORT
	MAP
	(
        debugIn => debugIn,
        debugOut => debugOut,
        reset => reset,
        clk => clk_25,
        dataVector => sTest,
        Xcount => XpicelVGA,
        Ycount => YpicelVGA,
        Rin => BackgroundColorR,
        Gin => BackgroundColorG,
        Bin => BackgroundColorB, 
        Rout => VGAcolorR,
        Gout => VGAcolorG,
        Bout => VGAcolorB
	);
	
	sDCounter <= 0;
	sDebug <= (OTHERS => '0');	
	
	PROCESS (clk_25)
		VARIABLE vEntityVectorOffset : NATURAL RANGE 0 TO ((ENTITY_AMOUNT * (ENTITY_X_BIT_SIZE + ENTITY_Y_BIT_SIZE + ENTITY_NUMMER_BIT_SIZE)) - 1) := 0;
		VARIABLE vEntityVectorOffset1 : NATURAL RANGE 0 TO ((ENTITY_AMOUNT * (ENTITY_X_BIT_SIZE + ENTITY_Y_BIT_SIZE + ENTITY_NUMMER_BIT_SIZE)) - 1) := 0;
	    --VARIABLE sDebugTileNumberVectorTemp : NATURAL RANGE 0 TO ((TILE_AMOUNT * (TILE_NUMBER_SIZE)) - 1) := 0;
	    
	BEGIN
		IF (rising_edge (clk_25)) THEN
			iTestCounter <= iTestCounter + 1;
			sTest <= sTest;
			sTestData <= (OTHERS => '0');			
			
            
			
			IF (iTestCounter >= 250000) THEN
				-- loop for
				sTest <= (OTHERS => '0');
				iTestCounter <= 0;
				FOR count IN 0 TO ENTITY_AMOUNT - 1 LOOP
					-- vector entity 0 => 49 by count    *     total entity size
					vEntityVectorOffset := count * (ENTITY_X_BIT_SIZE + ENTITY_Y_BIT_SIZE + ENTITY_NUMMER_BIT_SIZE);
					vEntityVectorOffset1 := 1 * (ENTITY_X_BIT_SIZE + ENTITY_Y_BIT_SIZE + ENTITY_NUMMER_BIT_SIZE);
					IF (debugIn(2) = '1') THEN
						sTest((vEntityVectorOffset + vEntityVectorOffset1 - 1) DOWNTO vEntityVectorOffset) <=  "001110" & STD_LOGIC_VECTOR(to_unsigned (count * 16, 8)) & STD_LOGIC_VECTOR(to_unsigned (count*3, 8));
					ELSIF (debugIn(3) = '1') THEN
						sTest((vEntityVectorOffset + vEntityVectorOffset1 - 1) DOWNTO vEntityVectorOffset) <=  "000001" & STD_LOGIC_VECTOR(to_unsigned (count * 16, 8)) & STD_LOGIC_VECTOR(to_unsigned (count*2, 8));
					ELSE
						sTest((vEntityVectorOffset + vEntityVectorOffset1 - 1) DOWNTO vEntityVectorOffset) <=  STD_LOGIC_VECTOR(to_unsigned (count, 6)) & STD_LOGIC_VECTOR(to_unsigned (count * 16, 8)) & STD_LOGIC_VECTOR(to_unsigned (count, 8));
					END IF;
				END LOOP;
				
				
                --todo: fix add code (for debug) tiles
                sDebugTileNumberVector <= (OTHERS => '0');
                FOR tileCount IN 0 TO TILE_AMOUNT - 1 LOOP
                    if (tileCount < 15 and debugIn(5) = '1') then
                        sDebugTileNumberVector(((tileCount + 1) * 6 -1) downto tileCount * 6) <= std_logic_vector(to_unsigned(8, 6));
                    elsif (((tileCount+1) mod 15) = 0 and debugIn(5) = '1') then
                        sDebugTileNumberVector(((tileCount + 1) * 6 -1) downto tileCount * 6) <= std_logic_vector(to_unsigned(8, 6));
                    elsif ((tileCount mod 15) = 0 and debugIn(5) = '1') then
                        sDebugTileNumberVector(((tileCount + 1) * 6 -1) downto tileCount * 6) <= std_logic_vector(to_unsigned(8, 6));
                    elsif (tileCount > TILE_AMOUNT - 1 - 15 and debugIn(5) = '1') then
                        sDebugTileNumberVector(((tileCount + 1) * 6 -1) downto tileCount * 6) <= std_logic_vector(to_unsigned(8, 6));
                    else
                        sDebugTileNumberVector(((tileCount + 1) * 6 -1) downto tileCount * 6) <= std_logic_vector(to_unsigned(0, 6));                              
                    end if;
                    
                END LOOP;
			END IF;
		END IF;
	END PROCESS;
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