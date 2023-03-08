
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
        ENTITY_NUMMER_BIT_SIZE : INTEGER := 8;
        -- amount of tiles visible on screan
        TILE_AMOUNT                    : INTEGER := (15 * 15);
        TILE_AMOUNT_HIGHT              : INTEGER := 15;
        TILE_AMOUNT_WITH               : INTEGER := 15;
        -- amount of bit to identify one tile
        TILE_NUMBER_SIZE               : INTEGER := 8
    );
    PORT
(
        debugIn          : IN  STD_LOGIC_VECTOR(15 DOWNTO 0); -- Debug switches
        debugOut         : OUT STD_LOGIC_VECTOR(14 DOWNTO 0); -- Debug Leds
        reset            : IN  STD_LOGIC;
        clk_100MHz       : IN  STD_LOGIC;
        red, green, blue : OUT STD_LOGIC_VECTOR(3 DOWNTO 0);
        locked           : OUT STD_LOGIC;
        hsync, vsync     : OUT STD_LOGIC;

        serialClkIn : in STD_LOGIC;
        serialDataIn : in STD_LOGIC
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

    component SerialRead IS
        PORT (
            clkInExternal : IN STD_LOGIC;
            dataInExternal : IN STD_LOGIC;
            clk_100Mhz : IN STD_LOGIC;
            sysReset : IN STD_LOGIC;
            serialData : OUT STD_LOGIC_VECTOR (1808 -1 DOWNTO 0)
        );
    END component SerialRead;

    component SerialDataBuffer is
        Port ( clk100Mhz : in STD_LOGIC;
             sysReset : in STD_LOGIC;
             serialData : in STD_LOGIC_VECTOR (1808 -1 downto 0);
             tileData : out STD_LOGIC_VECTOR (1800 -1 downto 0);
             entityData : out STD_LOGIC_VECTOR (1200 -1 downto 0);
             soundData : out STD_LOGIC_VECTOR (8 -1 downto 0);
             hudData : out STD_LOGIC_VECTOR (24 -1 downto 0));
    end component SerialDataBuffer;


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

    signal syncClk : std_logic;
    signal syncData : std_logic;
    signal serialData : STD_LOGIC_VECTOR(1808 -1 downto 0);
    
    signal tileData : STD_LOGIC_VECTOR(1800 -1 downto 0);
    signal entityData : STD_LOGIC_VECTOR (1200 -1 downto 0);
    signal soundData : STD_LOGIC_VECTOR(8 -1 downto 0);
    signal hudData : STD_LOGIC_VECTOR (24 -1 downto 0);

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
        tileNumberVector => tileData,
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
        dataVector => entityData,
        Xcount => XpicelVGA,
        Ycount => YpicelVGA,
        Rin => BackgroundColorR,
        Gin => BackgroundColorG,
        Bin => BackgroundColorB, 
        Rout => VGAcolorR,
        Gout => VGAcolorG,
        Bout => VGAcolorB
	);
	
	serialReceiver : SerialRead Port map (
                clkInExternal => serialClkIn,
                dataInExternal => serialDataIn,
                clk_100Mhz => clk_100Mhz,
                sysReset => Reset,
                serialData => serialData
            );
    
        serialBuffer : SerialDataBuffer Port map (
                sysReset => reset,
                clk100Mhz => clk_100Mhz,
                serialData => serialData,
                tileData => tileData,
                entityData => entityData,
                soundData => soundData,
                hudData => hudData
                
            );
	
	sDCounter <= 0;
	sDebug <= (OTHERS => '0');


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