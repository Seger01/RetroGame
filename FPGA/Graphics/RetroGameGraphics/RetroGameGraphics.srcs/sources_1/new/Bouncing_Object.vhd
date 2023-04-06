----------------------------------------------------------------------------------
-- Company:         -
-- Engineer:        Martijn Kamphof
-- 
-- Create Date:     07.03.2023 10:19:45
-- Design Name: 
-- Module Name:     Top - Behavioral
-- Project Name:    Retro Game
-- Target Devices:  Digilent Basys 3
-- Tool Versions:   Vivado 2022.1
-- Description: 
-- 
-- Dependencies: 
-- 
-- Revision:
-- Revision 0.01:    File Created
-- Additional Comments:
----------------------------------------------------------------------------------

LIBRARY IEEE;
USE IEEE.STD_LOGIC_1164.ALL;
USE IEEE.NUMERIC_STD.ALL;

ENTITY Bouncing_Object IS
    GENERIC
(
		-- ColorOutputSelector
		RGB_INPUT_AMOUNT               : INTEGER := 5;
		RGB_BIT_AMOUNT           	   : INTEGER := 12;
		RGB_TRANSPARENT_VALUE          : INTEGER := 16#000#;
		-- VGA, size of visible part screen
		HORIZONTAL_COUNT_VISIBLE_START : INTEGER := 144;
		VERTICAL_COUNT_VISIBLE_START   : INTEGER := 31;
		SCREAN_WIDTH                   : INTEGER := 640;
		SCREAN_HIGHT                   : INTEGER := 480;
		-- ENTITY SIZE
		ENTITY_X_BIT_SIZE              : INTEGER := 8;
		ENTITY_Y_BIT_SIZE              : INTEGER := 8;
		ENTITY_NUMMER_BIT_SIZE         : INTEGER := 8;
		-- PIXEL COUNT
		ENTITY_PIXELS_HIGHT_AND_WITH   : INTEGER := 16;
		PLAYFIELD_PIXELS_START_OFFSET  : INTEGER := 16 + 16 + 16 + 2;
		-- Offsets
		OFFSET_CLK_TO_VGA              : INTEGER := 6;
		-- ROM
		OFFSET_CLK_TO_ROM              : INTEGER := 2;
		-- vga
		PIXEL_SCALING                  : INTEGER := 2;
		-- EntityPixels
		PLAYER_ROM_ADRESS_BIT_SIZE     : INTEGER := 12;
        PLAYER_INDEX_BIT_SIZE          : INTEGER := 8;
        PLAYER_PALLET_BIT_SIZE         : INTEGER := 11;
		BOSS_ROM_ADRESS_BIT_SIZE       : INTEGER := 12;
        BOSS_INDEX_BIT_SIZE             : INTEGER := 8;
        BOSS_PALLET_BIT_SIZE            : INTEGER := 11;
		BACKGROUND_ROM_ADRESS_BIT_SIZE : INTEGER := 15; -- TODO: ADD TO REST
        BACKGROUND_INDEX_BIT_SIZE          : INTEGER := 8;
        BACKGROUND_PALLET_BIT_SIZE         : INTEGER := 11;
		ENTITY_ROM_ADRESS_BIT_SIZE     : INTEGER := 12;
        ENTITY_INDEX_BIT_SIZE          : INTEGER := 8;
        ENTITY_PALLET_BIT_SIZE         : INTEGER := 11;
		HUD_ROM_ADRESS_BIT_SIZE        : INTEGER := 12;
        HUD_INDEX_BIT_SIZE              : INTEGER := 8;
        HUD_PALLET_BIT_SIZE             : INTEGER := 11;
        HUD_VECTOR_BIT_SIZE             : INTEGER := 24;
		-- 
		ENTITY_AMOUNT                  : INTEGER := 48;	
        -- amount of tiles visible on screan
        TILE_AMOUNT                    : INTEGER := (20 * 15);
        TILE_AMOUNT_HIGHT              : INTEGER := 15;
        TILE_AMOUNT_WITH               : INTEGER := 20;            
        -- amount of bit to identify one tile
        TILE_NUMBER_SIZE               : INTEGER := 8;
        TILE_PIXEL_HIGHT_AND_WITH      : INTEGER := 16
    );
    PORT
(
		debugIn          : IN  unsigned(15 DOWNTO 0); -- Debug switches
		debugOut         : OUT unsigned(15 DOWNTO 0); -- Debug Leds
        reset            : IN  STD_LOGIC;
        clk_100MHz       : IN  STD_LOGIC;
		RGBout           : OUT unsigned (RGB_BIT_AMOUNT-1 DOWNTO 0);
        hsync, vsync     : OUT STD_LOGIC;

        serialClkIn      : in STD_LOGIC;
        serialDataIn     : in STD_LOGIC;
        
        PWMOut           : OUT STD_LOGIC
    );
END Bouncing_Object;
ARCHITECTURE Behavioral OF Bouncing_Object IS
    COMPONENT prescaler is
      Port ( 
        clk_25MHz : out STD_LOGIC;
        reset : in STD_LOGIC;
        locked : out STD_LOGIC;
        clk_100MHz : in STD_LOGIC
      );    
    end COMPONENT;
	COMPONENT ColorOutputSelector IS
		GENERIC
		(
			--
			RGB_INPUT_AMOUNT      : INTEGER := RGB_INPUT_AMOUNT;
			RGB_BIT_AMOUNT  	  : INTEGER := RGB_BIT_AMOUNT;
			RGB_TRANSPARENT_VALUE : INTEGER := RGB_TRANSPARENT_VALUE
		);
		PORT
		(
			-- inputs
			clk    : IN  STD_LOGIC;
			-- Lowest position in RGBin vector is given the highest priorety.
            RGBin  : IN  unsigned(RGB_BIT_AMOUNT * RGB_INPUT_AMOUNT - 1 DOWNTO 0); 
			RGBout : OUT unsigned(RGB_BIT_AMOUNT - 1 DOWNTO 0)
		);
	END COMPONENT;
	COMPONENT VGA IS
		GENERIC
		(
			-- size of visible part screen
			HORIZONTAL_COUNT_VISIBLE_START : INTEGER := 144; --todo:add to global and map generic
			VERTICAL_COUNT_VISIBLE_START   : INTEGER := 31;
            RGB_BIT_AMOUNT   : INTEGER := 31
        );
        PORT (
            reset, clk_25  : IN  STD_LOGIC;
            RGBin          : IN  unsigned (RGB_BIT_AMOUNT-1 DOWNTO 0);
            RGBout         : OUT unsigned (RGB_BIT_AMOUNT-1 DOWNTO 0);
            Xcount, Ycount : OUT unsigned(9 DOWNTO 0);
            hsync, vsync   : OUT STD_LOGIC
        );
	END COMPONENT;
	COMPONENT PlayerPixels IS
		GENERIC
        (
            -- VGA, start visible part of screen
            HORIZONTAL_COUNT_VISIBLE_START : INTEGER := 144;
            VERTICAL_COUNT_VISIBLE_START   : INTEGER := 31;
            -- total visible screen
            SCREAN_WIDTH                   : INTEGER := 640;
            SCREAN_HIGHT                   : INTEGER := 480;
            -- ENTITY SIZE
            ENTITY_X_BIT_SIZE              : INTEGER := 8;
            ENTITY_Y_BIT_SIZE              : INTEGER := 8;
            ENTITY_NUMMER_BIT_SIZE         : INTEGER := 8;
            -- PIXEL COUNT
            ENTITY_PIXELS_HIGHT_AND_WITH   : INTEGER := 16;
            PLAYFIELD_PIXELS_START_OFFSET  : INTEGER := 16 + 16 + 8;
            -- Offsets
            OFFSET_CLK_TO_VGA              : INTEGER := 5;
            -- ROM
            OFFSET_CLK_TO_ROM              : INTEGER := 2;
            -- vga
            PIXEL_SCALING                  : INTEGER := 2;
            -- EntityPixels
            PLAYER_ROM_ADRESS_BIT_SIZE     : INTEGER := 7;
            INDEX_BIT_SIZE                 : INTEGER := 11;
            PALLET_BIT_SIZE                : INTEGER := 11;
            RGB_BIT_AMOUNT                 : INTEGER := 12
        );
        PORT (
            debugIn        : IN  unsigned(15 DOWNTO 0); -- Debug switches
            debugOut       : OUT unsigned(15 DOWNTO 0); -- Debug Leds
            -- inputs
            reset, clk     : IN  STD_LOGIC;
            -- x, y position, entity nuber
            dataVector     : IN  unsigned((ENTITY_X_BIT_SIZE + ENTITY_Y_BIT_SIZE + ENTITY_NUMMER_BIT_SIZE) - 1 DOWNTO 0);
            -- VGA module connections
            Xcount, Ycount : IN  unsigned(9 DOWNTO 0); -- VGA current pixel number todo: add ofset
            RGBOut         : OUT unsigned (RGB_BIT_AMOUNT - 1 DOWNTO 0)
        );
	END COMPONENT;
	COMPONENT BossPixels IS
		GENERIC
		(
			-- size of visible part screen
			HORIZONTAL_COUNT_VISIBLE_START : INTEGER := HORIZONTAL_COUNT_VISIBLE_START;
			VERTICAL_COUNT_VISIBLE_START   : INTEGER := VERTICAL_COUNT_VISIBLE_START;
			SCREAN_WIDTH                   : INTEGER := SCREAN_WIDTH;
			SCREAN_HIGHT                   : INTEGER := SCREAN_HIGHT;
			-- ENTITY SIZE
			ENTITY_X_BIT_SIZE              : INTEGER := ENTITY_X_BIT_SIZE;
			ENTITY_Y_BIT_SIZE              : INTEGER := ENTITY_Y_BIT_SIZE;
			ENTITY_NUMMER_BIT_SIZE         : INTEGER := ENTITY_NUMMER_BIT_SIZE;
			-- PIXEL COUNT
			ENTITY_PIXELS_HIGHT_AND_WITH   : INTEGER := ENTITY_PIXELS_HIGHT_AND_WITH;
			PLAYFIELD_PIXELS_START_OFFSET  : INTEGER := PLAYFIELD_PIXELS_START_OFFSET;
			-- Offsets
			OFFSET_CLK_TO_VGA              : INTEGER := OFFSET_CLK_TO_VGA;
			-- ROM
			OFFSET_CLK_TO_ROM              : INTEGER := OFFSET_CLK_TO_ROM;
			-- vga
			PIXEL_SCALING                  : INTEGER := PIXEL_SCALING;
			-- EntityPixels
			BOSS_ROM_ADRESS_BIT_SIZE       : INTEGER := BOSS_ROM_ADRESS_BIT_SIZE;
            INDEX_BIT_SIZE                 : INTEGER := 3;
            PALLET_BIT_SIZE                : INTEGER := 11;
            RGB_BIT_AMOUNT                 : INTEGER := 12
		);
		PORT (
			debugIn        : IN  unsigned(15 DOWNTO 0); -- Debug switches
			debugOut       : OUT unsigned(15 DOWNTO 0); -- Debug Leds
			-- inputs
			reset, clk     : IN  STD_LOGIC;
			-- x, y position, entity nuber
			dataVector     : IN  unsigned((ENTITY_X_BIT_SIZE + ENTITY_Y_BIT_SIZE + ENTITY_NUMMER_BIT_SIZE) - 1 DOWNTO 0);
			-- VGA module connections
			Xcount, Ycount : IN  unsigned(9 DOWNTO 0);                           -- VGA current pixel number todo: add ofset
            RGBOut         : OUT unsigned (RGB_BIT_AMOUNT - 1 DOWNTO 0)
		);
	END COMPONENT;
	COMPONENT BackgroundPixels IS
		GENERIC
		(
			-- size of visible part screen
			HORIZONTAL_COUNT_VISIBLE_START : INTEGER := HORIZONTAL_COUNT_VISIBLE_START;
			VERTICAL_COUNT_VISIBLE_START   : INTEGER := VERTICAL_COUNT_VISIBLE_START;
			-- total visible screen
			SCREAN_WIDTH                   : INTEGER := SCREAN_WIDTH;
			SCREAN_HIGHT                   : INTEGER := SCREAN_HIGHT;
            -- amount of tiles visible on screan
            TILE_AMOUNT                    : INTEGER := TILE_AMOUNT;
            TILE_AMOUNT_HIGHT              : INTEGER := TILE_AMOUNT_HIGHT;
            TILE_AMOUNT_WITH               : INTEGER := TILE_AMOUNT_WITH;            
--			-- ENTITY SIZE
--			ENTITY_X_BIT_SIZE              : INTEGER := ENTITY_X_BIT_SIZE;
--			ENTITY_Y_BIT_SIZE              : INTEGER := ENTITY_Y_BIT_SIZE;
--			ENTITY_NUMMER_BIT_SIZE         : INTEGER := ENTITY_NUMMER_BIT_SIZE;
			PLAYFIELD_PIXELS_START_OFFSET  : INTEGER := PLAYFIELD_PIXELS_START_OFFSET;
            -- amount of bit to identify one tile
            TILE_NUMBER_SIZE               : INTEGER := TILE_NUMBER_SIZE;
            TILE_PIXEL_HIGHT_AND_WITH      : INTEGER := TILE_PIXEL_HIGHT_AND_WITH;
			-- Offsets
			OFFSET_CLK_TO_VGA              : INTEGER := OFFSET_CLK_TO_VGA;
			-- ROM
			OFFSET_CLK_TO_ROM              : INTEGER := OFFSET_CLK_TO_ROM;
			-- vga
			PIXEL_SCALING                  : INTEGER := PIXEL_SCALING;
			-- EntityPixels
			BACKGROUND_ROM_ADRESS_BIT_SIZE : INTEGER := BACKGROUND_ROM_ADRESS_BIT_SIZE;
            INDEX_BIT_SIZE                 : INTEGER := 3;
            PALLET_BIT_SIZE                : INTEGER := 11;
            RGB_BIT_AMOUNT                 : INTEGER := 12
	);
	PORT (
        debugIn          : IN  UNSIGNED(15 DOWNTO 0); -- Debug switches
        debugOut         : OUT UNSIGNED(15 DOWNTO 0); -- Debug Leds
		-- inputs
		reset, clk    : IN  STD_LOGIC;
		-- VGA module connections
		Xcount, Ycount   : IN  UNSIGNED(9 DOWNTO 0);-- VGA current pixel number todo: add ofset
		-- vector with map tile numbers		-- tile number starting top left going left to richt and down
		tileNumberVector  : IN UNSIGNED((TILE_AMOUNT * (TILE_NUMBER_SIZE)) - 1 DOWNTO 0);		
        RGBOut         : OUT unsigned (RGB_BIT_AMOUNT - 1 DOWNTO 0)
	);
	END COMPONENT;
	COMPONENT Entitys IS
		GENERIC
		(
			-- size of visible part screen
			HORIZONTAL_COUNT_VISIBLE_START : INTEGER := HORIZONTAL_COUNT_VISIBLE_START;
			VERTICAL_COUNT_VISIBLE_START   : INTEGER := VERTICAL_COUNT_VISIBLE_START;
			SCREAN_WIDTH                   : INTEGER := SCREAN_WIDTH;
			SCREAN_HIGHT                   : INTEGER := SCREAN_HIGHT;
			-- ENTITY SIZE
			ENTITY_X_BIT_SIZE              : INTEGER := ENTITY_X_BIT_SIZE;
			ENTITY_Y_BIT_SIZE              : INTEGER := ENTITY_Y_BIT_SIZE;
			ENTITY_NUMMER_BIT_SIZE         : INTEGER := ENTITY_NUMMER_BIT_SIZE;
			-- PIXEL COUNT
			ENTITY_PIXELS_HIGHT_AND_WITH   : INTEGER := ENTITY_PIXELS_HIGHT_AND_WITH;
			PLAYFIELD_PIXELS_START_OFFSET  : INTEGER := PLAYFIELD_PIXELS_START_OFFSET;
			-- Offsets
			OFFSET_CLK_TO_VGA              : INTEGER := OFFSET_CLK_TO_VGA;
			-- ROM
			OFFSET_CLK_TO_ROM              : INTEGER := OFFSET_CLK_TO_ROM;
			-- vga
			PIXEL_SCALING                  : INTEGER := PIXEL_SCALING;
			-- EntityPixels
			ENTITY_ROM_ADRESS_BIT_SIZE     : INTEGER := ENTITY_ROM_ADRESS_BIT_SIZE;
            ENTITY_AMOUNT                  : INTEGER := ENTITY_AMOUNT;
            INDEX_BIT_SIZE                 : INTEGER := 3;
            PALLET_BIT_SIZE                : INTEGER := 11;
            RGB_BIT_AMOUNT                 : INTEGER := 12
		);
		PORT (
			debugIn        : IN  unsigned(15 DOWNTO 0); -- Debug switches
			debugOut       : OUT unsigned(15 DOWNTO 0); -- Debug Leds
			-- inputs
			reset, clk     : IN  STD_LOGIC;
			-- x, y position, entity nuber
		    dataVector     : IN  unsigned(ENTITY_AMOUNT * (ENTITY_X_BIT_SIZE + ENTITY_Y_BIT_SIZE + ENTITY_NUMMER_BIT_SIZE) - 1 DOWNTO 0);
			-- VGA module connections
			Xcount, Ycount : IN  unsigned(9 DOWNTO 0);                           -- VGA current pixel number todo: add ofset
            RGBOut         : OUT unsigned (RGB_BIT_AMOUNT - 1 DOWNTO 0)
		);
	END COMPONENT;
	COMPONENT HUDPixels IS
		GENERIC
		(
			-- size of visible part screen
			HORIZONTAL_COUNT_VISIBLE_START : INTEGER := HORIZONTAL_COUNT_VISIBLE_START;
			VERTICAL_COUNT_VISIBLE_START   : INTEGER := VERTICAL_COUNT_VISIBLE_START;
			SCREAN_WIDTH                   : INTEGER := SCREAN_WIDTH;
			SCREAN_HIGHT                   : INTEGER := SCREAN_HIGHT;
			-- ENTITY SIZE
			ENTITY_X_BIT_SIZE              : INTEGER := ENTITY_X_BIT_SIZE;
			ENTITY_Y_BIT_SIZE              : INTEGER := ENTITY_Y_BIT_SIZE;
			ENTITY_NUMMER_BIT_SIZE         : INTEGER := ENTITY_NUMMER_BIT_SIZE;
			-- PIXEL COUNT
			ENTITY_PIXELS_HIGHT_AND_WITH   : INTEGER := ENTITY_PIXELS_HIGHT_AND_WITH;
			PLAYFIELD_PIXELS_START_OFFSET  : INTEGER := PLAYFIELD_PIXELS_START_OFFSET;
			-- Offsets
			OFFSET_CLK_TO_VGA              : INTEGER := OFFSET_CLK_TO_VGA;
			-- ROM
			OFFSET_CLK_TO_ROM              : INTEGER := OFFSET_CLK_TO_ROM;
			-- vga
			PIXEL_SCALING                  : INTEGER := PIXEL_SCALING;
			-- EntityPixels
			HUD_ROM_ADRESS_BIT_SIZE        : INTEGER := HUD_ROM_ADRESS_BIT_SIZE;
            INDEX_BIT_SIZE                 : INTEGER := 3;
            PALLET_BIT_SIZE                : INTEGER := 11;
            RGB_BIT_AMOUNT                 : INTEGER := 12
		);
		PORT (
			debugIn        : IN  unsigned(15 DOWNTO 0); -- Debug switches
			debugOut       : OUT unsigned(15 DOWNTO 0); -- Debug Leds
			-- inputs
			reset, clk     : IN  STD_LOGIC;
			-- x, y position, entity nuber
			dataVector     : IN  unsigned((ENTITY_X_BIT_SIZE + ENTITY_Y_BIT_SIZE + ENTITY_NUMMER_BIT_SIZE) - 1 DOWNTO 0);
			-- VGA module connections
			Xcount, Ycount : IN  unsigned(9 DOWNTO 0);                           -- VGA current pixel number todo: add ofset
            RGBOut         : OUT unsigned (RGB_BIT_AMOUNT - 1 DOWNTO 0)
		);
	END COMPONENT;

    component SerialRead IS
        PORT (
            clkInExternal : IN STD_LOGIC;
            dataInExternal : IN STD_LOGIC;
            clk_100Mhz : IN STD_LOGIC;
            sysReset : IN STD_LOGIC;
		    serialData : OUT unsigned (1240+ 2400 - 1 downto 0)
        );
    END component SerialRead;

    component SerialDataBuffer is
        Port ( clk100Mhz : in STD_LOGIC;
             sysReset : in STD_LOGIC;
		     serialData : in  unsigned (1240+ 2400 - 1 downto 0);
		     Ycount   : IN  unsigned(9 DOWNTO 0);
             tileData : out unsigned (2400 -1 downto 0);
             entityData : out unsigned (1200 -1 downto 0);
             soundData : out unsigned (8 -1 downto 0);
             hudData : out unsigned (24 -1 downto 0));
    end component SerialDataBuffer;

    component RetroSynth is
        Port (
            CLK : in STD_LOGIC;
            SFXswitch : std_logic_vector(5 downto 0);
            PWM : out STD_LOGIC
        );
    end component;

    --clk
    SIGNAL clk_25             : std_logic;
    
	-- Debug
	SIGNAL debugOutP             : unsigned(15 DOWNTO 0);
	SIGNAL debugOutB             : unsigned(15 DOWNTO 0);
	SIGNAL debugOutBG             : unsigned(15 DOWNTO 0);
	SIGNAL debugOutE             : unsigned(15 DOWNTO 0);
	SIGNAL debugOutH             : unsigned(15 DOWNTO 0);	
	SIGNAL debugOutLocked             : std_logic;	
	
	-- non optimalized COE address to read has extra bit to indicate transparantcy
	SIGNAL Player_Select_Adress  : unsigned (PLAYER_ROM_ADRESS_BIT_SIZE DOWNTO 0);
	SIGNAL Boss_Select_Adress    : unsigned (BOSS_ROM_ADRESS_BIT_SIZE DOWNTO 0);
	SIGNAL Background_Select_Adress    : unsigned (BACKGROUND_ROM_ADRESS_BIT_SIZE DOWNTO 0);
	-- todo: vector for Entity
	SIGNAL HUD_Select_Adress     : unsigned (HUD_ROM_ADRESS_BIT_SIZE DOWNTO 0);
	
	-- COE Output
    SIGNAL Player_COE_Color     : unsigned (RGB_BIT_AMOUNT - 1 DOWNTO 0);
    SIGNAL Boss_COE_Color     : unsigned (RGB_BIT_AMOUNT - 1 DOWNTO 0);
    SIGNAL Background_COE_Color   : unsigned (RGB_BIT_AMOUNT - 1 DOWNTO 0);-- todo rest
    SIGNAL Entity_COE_Color     : unsigned (RGB_BIT_AMOUNT - 1 DOWNTO 0);
    SIGNAL HUD_COE_Color        : unsigned (RGB_BIT_AMOUNT - 1 DOWNTO 0);

	-- optimalized COE RGB output
	-- Lowest position in RGBin vector is given the highest priorety.
	SIGNAL COE_RGB               : unsigned(RGB_BIT_AMOUNT * RGB_INPUT_AMOUNT - 1 DOWNTO 0); -- todo hang aan rom
	SIGNAL Mixed_RGB_Value       : unsigned (RGB_BIT_AMOUNT-1 DOWNTO 0);

	-- VGA
	SIGNAL Xcount, Ycount        : unsigned(9 DOWNTO 0); -- VGA current pixel number
	-- Communication                                 entity + player + boss
	SIGNAL EntityData            : unsigned(((ENTITY_AMOUNT + 2) * (ENTITY_X_BIT_SIZE + ENTITY_Y_BIT_SIZE + ENTITY_NUMMER_BIT_SIZE)) - 1 DOWNTO 0);

    -- background
    -- vector with map tile numbers		-- tile number starting top left going left to richt and down
    SIGNAL tileVector  : unsigned((TILE_AMOUNT * (TILE_NUMBER_SIZE)) - 1 DOWNTO 0);		
    

--    signal syncClk : std_logic;
--    signal syncData : std_logic;
    signal serialData : unsigned(1240 + 2400 -1 downto 0);
    
    signal soundData : unsigned(8 -1 downto 0);
    signal hudData : unsigned (24 -1 downto 0);
    
    -- sound    
    signal soundDataMixed : STD_LOGIC_VECTOR(5 downto 0);    

BEGIN
	clk_wiz_00: prescaler	PORT MAP(
		clk_25MHz     => clk_25,
		reset       => reset,
		locked  => debugOutLocked,
		clk_100MHz => clk_100MHz
	);
	ColorOutputSelector0 : ColorOutputSelector GENERIC MAP(
		RGB_INPUT_AMOUNT => RGB_INPUT_AMOUNT,
		RGB_BIT_AMOUNT => RGB_BIT_AMOUNT,
		RGB_TRANSPARENT_VALUE => RGB_TRANSPARENT_VALUE
	)PORT MAP(
		clk    => clk_25,
		-- Lowest position in RGBin vector is given the highest priorety.		
		RGBin  => COE_RGB,
		RGBout => Mixed_RGB_Value
	);
	VGA0 : VGA  GENERIC MAP(
		HORIZONTAL_COUNT_VISIBLE_START => HORIZONTAL_COUNT_VISIBLE_START,
		VERTICAL_COUNT_VISIBLE_START => VERTICAL_COUNT_VISIBLE_START,
		RGB_BIT_AMOUNT => RGB_BIT_AMOUNT
	)
	PORT MAP(
		reset  => reset,
		clk_25 => clk_25,
		Xcount => Xcount,
		Ycount => Ycount,
		-- Lowest position in RGBin vector is given the highest priorety.		
		RGBin  => Mixed_RGB_Value,
		RGBout => RGBout,
		hsync => hsync,
		vsync => vsync
	);
	PlayerPixels0 : PlayerPixels GENERIC MAP(
				-- VGA, start visible part of screen
		HORIZONTAL_COUNT_VISIBLE_START => HORIZONTAL_COUNT_VISIBLE_START,
		VERTICAL_COUNT_VISIBLE_START   => VERTICAL_COUNT_VISIBLE_START,
		-- total visible screen
		SCREAN_WIDTH                   => SCREAN_WIDTH,
		SCREAN_HIGHT                   => SCREAN_HIGHT,
		-- ENTITY SIZE
		ENTITY_X_BIT_SIZE              => ENTITY_X_BIT_SIZE,
		ENTITY_Y_BIT_SIZE              => ENTITY_Y_BIT_SIZE,
		ENTITY_NUMMER_BIT_SIZE         => ENTITY_NUMMER_BIT_SIZE,
		-- PIXEL COUNT
		ENTITY_PIXELS_HIGHT_AND_WITH   => ENTITY_PIXELS_HIGHT_AND_WITH,
		PLAYFIELD_PIXELS_START_OFFSET  => PLAYFIELD_PIXELS_START_OFFSET,
		-- Offsets
		OFFSET_CLK_TO_VGA              => OFFSET_CLK_TO_VGA,
		-- ROM
		OFFSET_CLK_TO_ROM              => OFFSET_CLK_TO_ROM,
		-- vga
		PIXEL_SCALING                  => PIXEL_SCALING,
		-- EntityPixels
		PLAYER_ROM_ADRESS_BIT_SIZE     => PLAYER_ROM_ADRESS_BIT_SIZE,
		INDEX_BIT_SIZE                 => PLAYER_INDEX_BIT_SIZE,
		PALLET_BIT_SIZE                => PLAYER_PALLET_BIT_SIZE,
		RGB_BIT_AMOUNT                 => RGB_BIT_AMOUNT
	)
	 PORT MAP(
		debugIn      => debugIn,
		debugOut     => debugOutP,
		reset        => reset,
		clk          => clk_25,
		dataVector   => (EntityData(((1 * (ENTITY_X_BIT_SIZE + ENTITY_Y_BIT_SIZE + ENTITY_NUMMER_BIT_SIZE)) - 1) DOWNTO (0 * (ENTITY_X_BIT_SIZE + ENTITY_Y_BIT_SIZE + ENTITY_NUMMER_BIT_SIZE)))),
		Xcount       => Xcount,
		Ycount       => Ycount,
		RGBOut       => Player_COE_Color
	);
	BossPixels0 : BossPixels  GENERIC MAP(
				-- VGA, start visible part of screen
		HORIZONTAL_COUNT_VISIBLE_START => HORIZONTAL_COUNT_VISIBLE_START,
		VERTICAL_COUNT_VISIBLE_START   => VERTICAL_COUNT_VISIBLE_START,
		-- total visible screen
		SCREAN_WIDTH                   => SCREAN_WIDTH,
		SCREAN_HIGHT                   => SCREAN_HIGHT,
		-- ENTITY SIZE
		ENTITY_X_BIT_SIZE              => ENTITY_X_BIT_SIZE,
		ENTITY_Y_BIT_SIZE              => ENTITY_Y_BIT_SIZE,
		ENTITY_NUMMER_BIT_SIZE         => ENTITY_NUMMER_BIT_SIZE,
		-- PIXEL COUNT
		ENTITY_PIXELS_HIGHT_AND_WITH   => ENTITY_PIXELS_HIGHT_AND_WITH,
		PLAYFIELD_PIXELS_START_OFFSET  => PLAYFIELD_PIXELS_START_OFFSET,
		-- Offsets
		OFFSET_CLK_TO_VGA              => OFFSET_CLK_TO_VGA,
		-- ROM
		OFFSET_CLK_TO_ROM              => OFFSET_CLK_TO_ROM,
		-- vga
		PIXEL_SCALING                  => PIXEL_SCALING,
		-- EntityPixels
		BOSS_ROM_ADRESS_BIT_SIZE       => BOSS_ROM_ADRESS_BIT_SIZE,
		INDEX_BIT_SIZE                 => BOSS_INDEX_BIT_SIZE,
		PALLET_BIT_SIZE                => BOSS_PALLET_BIT_SIZE,
		RGB_BIT_AMOUNT                 => RGB_BIT_AMOUNT
	)PORT MAP(
		debugIn      => debugIn,
		debugOut     => debugOutB,
		reset        => reset,
		clk          => clk_25,
		dataVector   => (EntityData(((2 * (ENTITY_X_BIT_SIZE + ENTITY_Y_BIT_SIZE + ENTITY_NUMMER_BIT_SIZE)) - 1) DOWNTO (1 * (ENTITY_X_BIT_SIZE + ENTITY_Y_BIT_SIZE + ENTITY_NUMMER_BIT_SIZE)))),
		Xcount       => Xcount,
		Ycount       => Ycount,
		RGBOut       => Boss_COE_Color
	);
	BackgroundPixels0 : BackgroundPixels  GENERIC MAP
		(
			-- size of visible part screen
			HORIZONTAL_COUNT_VISIBLE_START => HORIZONTAL_COUNT_VISIBLE_START,
			VERTICAL_COUNT_VISIBLE_START    => VERTICAL_COUNT_VISIBLE_START,
			-- total visible screen
			SCREAN_WIDTH                   => SCREAN_WIDTH,
			SCREAN_HIGHT                   => SCREAN_HIGHT,
            -- amount of tiles visible on screan
            TILE_AMOUNT                   =>TILE_AMOUNT,
            TILE_AMOUNT_HIGHT            => TILE_AMOUNT_HIGHT,
            TILE_AMOUNT_WITH             => TILE_AMOUNT_WITH,       
--			-- ENTITY SIZE
--			ENTITY_X_BIT_SIZE           =>ENTITY_X_BIT_SIZE,
--			ENTITY_Y_BIT_SIZE             => ENTITY_Y_BIT_SIZE,
--			ENTITY_NUMMER_BIT_SIZE         => ENTITY_NUMMER_BIT_SIZE,
			PLAYFIELD_PIXELS_START_OFFSET  => 0,
            -- amount of bit to identify one tile
            TILE_NUMBER_SIZE               => TILE_NUMBER_SIZE,
            TILE_PIXEL_HIGHT_AND_WITH     => TILE_PIXEL_HIGHT_AND_WITH,
			-- Offsets
			OFFSET_CLK_TO_VGA               => OFFSET_CLK_TO_VGA,
			-- ROM
			OFFSET_CLK_TO_ROM              => OFFSET_CLK_TO_ROM,
			-- vga
			PIXEL_SCALING                   => PIXEL_SCALING,
			-- EntityPixels	
			BACKGROUND_ROM_ADRESS_BIT_SIZE  => BACKGROUND_ROM_ADRESS_BIT_SIZE,
            INDEX_BIT_SIZE                 =>  BACKGROUND_INDEX_BIT_SIZE,
            PALLET_BIT_SIZE                =>  BACKGROUND_PALLET_BIT_SIZE,
            RGB_BIT_AMOUNT                 => RGB_BIT_AMOUNT
	) PORT MAP(
		debugIn      => debugIn,
		debugOut     => debugOutBG,
		reset        => reset,
		clk          => clk_25,
		tileNumberVector   => (tileVector),--TODO: TileData((number of tiles * (ENTITY_X_BIT_SIZE + ENTITY_Y_BIT_SIZE + ENTITY_NUMMER_BIT_SIZE)) - 1 DOWNTO ....,
		Xcount       => Xcount,
		Ycount       => Ycount,
		RGBOut       => Background_COE_Color
	);
	Entitys0 : Entitys  GENERIC MAP(
				-- VGA, start visible part of screen
		HORIZONTAL_COUNT_VISIBLE_START => HORIZONTAL_COUNT_VISIBLE_START,
		VERTICAL_COUNT_VISIBLE_START   => VERTICAL_COUNT_VISIBLE_START,
		-- total visible screen
		SCREAN_WIDTH                   => SCREAN_WIDTH,
		SCREAN_HIGHT                   => SCREAN_HIGHT,
		-- ENTITY SIZE
		ENTITY_X_BIT_SIZE              => ENTITY_X_BIT_SIZE,
		ENTITY_Y_BIT_SIZE              => ENTITY_Y_BIT_SIZE,
		ENTITY_NUMMER_BIT_SIZE         => ENTITY_NUMMER_BIT_SIZE,
		-- PIXEL COUNT
		ENTITY_PIXELS_HIGHT_AND_WITH   => ENTITY_PIXELS_HIGHT_AND_WITH,
		PLAYFIELD_PIXELS_START_OFFSET  => PLAYFIELD_PIXELS_START_OFFSET,
		-- Offsets
		OFFSET_CLK_TO_VGA              => OFFSET_CLK_TO_VGA,
		-- ROM
		OFFSET_CLK_TO_ROM              => OFFSET_CLK_TO_ROM,
		-- vga
		PIXEL_SCALING                  => PIXEL_SCALING,
		-- EntityPixels
		ENTITY_ROM_ADRESS_BIT_SIZE        => ENTITY_ROM_ADRESS_BIT_SIZE,
        ENTITY_AMOUNT                 => ENTITY_AMOUNT,
        INDEX_BIT_SIZE                 =>  ENTITY_INDEX_BIT_SIZE,
        PALLET_BIT_SIZE                =>  ENTITY_PALLET_BIT_SIZE,
        RGB_BIT_AMOUNT                 => RGB_BIT_AMOUNT
	)  PORT MAP(
		debugIn      => debugIn,
		debugOut     => debugOutE,
		reset        => reset,
		clk          => clk_25,
		dataVector   => (EntityData((((ENTITY_AMOUNT + 2) * (ENTITY_X_BIT_SIZE + ENTITY_Y_BIT_SIZE + ENTITY_NUMMER_BIT_SIZE)) - 1) DOWNTO (2 * (ENTITY_X_BIT_SIZE + ENTITY_Y_BIT_SIZE + ENTITY_NUMMER_BIT_SIZE)))),
		Xcount       => Xcount,
		Ycount       => Ycount,
		RGBOut       => Entity_COE_Color
		);
	HUDPixels0 : HUDPixels GENERIC MAP(
				-- VGA, start visible part of screen
		HORIZONTAL_COUNT_VISIBLE_START => HORIZONTAL_COUNT_VISIBLE_START,
		VERTICAL_COUNT_VISIBLE_START   => VERTICAL_COUNT_VISIBLE_START,
		-- total visible screen
		SCREAN_WIDTH                   => SCREAN_WIDTH,
		SCREAN_HIGHT                   => SCREAN_HIGHT,
		-- ENTITY SIZE
		ENTITY_X_BIT_SIZE              => ENTITY_X_BIT_SIZE,
		ENTITY_Y_BIT_SIZE              => ENTITY_Y_BIT_SIZE,
		ENTITY_NUMMER_BIT_SIZE         => ENTITY_NUMMER_BIT_SIZE,
		-- PIXEL COUNT
		ENTITY_PIXELS_HIGHT_AND_WITH   => ENTITY_PIXELS_HIGHT_AND_WITH,
		PLAYFIELD_PIXELS_START_OFFSET  => 0,
		-- Offsets
		OFFSET_CLK_TO_VGA              => OFFSET_CLK_TO_VGA,
		-- ROM
		OFFSET_CLK_TO_ROM              => OFFSET_CLK_TO_ROM,
		-- vga
		PIXEL_SCALING                  => PIXEL_SCALING,
		-- EntityPixels
		HUD_ROM_ADRESS_BIT_SIZE        => HUD_ROM_ADRESS_BIT_SIZE,
        INDEX_BIT_SIZE                 =>  HUD_INDEX_BIT_SIZE,
        PALLET_BIT_SIZE                =>  HUD_PALLET_BIT_SIZE,
        RGB_BIT_AMOUNT                 => RGB_BIT_AMOUNT
	)  PORT MAP(
		debugIn      => debugIn,
		debugOut     => debugOutH,
		reset        => reset,
		clk          => clk_25,
		dataVector   => (EntityData((((ENTITY_AMOUNT + 2) * (ENTITY_X_BIT_SIZE + ENTITY_Y_BIT_SIZE + ENTITY_NUMMER_BIT_SIZE)) - 1) DOWNTO ((ENTITY_AMOUNT + 2) * (ENTITY_X_BIT_SIZE + ENTITY_Y_BIT_SIZE + ENTITY_NUMMER_BIT_SIZE) - HUD_VECTOR_BIT_SIZE))),--TODO:  real hud
		Xcount       => Xcount,
		Ycount       => Ycount,
		RGBOut       => HUD_COE_Color
	);
    
    -- lowest level left highest level right
    COE_RGB <= Background_COE_Color & Entity_COE_Color & Boss_COE_Color & Player_COE_Color & HUD_COE_Color;   
    
    debugOut <= debugOutP or debugOutB or debugOutBG or debugOutH or debugOutE;
    
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
                Ycount => Ycount,
                tileData => tileVector, --tileData => tileData,
                entityData => EntityData, -- entityData => entityData
                soundData => soundData,
                hudData => hudData
                
            );
            
        RetroSynth0 : RetroSynth Port map (
                CLK => clk_100Mhz,
                SFXswitch => soundDataMixed, --soundData(5 downto 0),
                PWM => PWMOut
            );
            
            soundDataMixed <= std_logic_vector (soundData(5 downto 0)) when debugIn(0) = '0' else
                              std_logic_vector (debugIn(6 downto 1));
                              
END Behavioral;