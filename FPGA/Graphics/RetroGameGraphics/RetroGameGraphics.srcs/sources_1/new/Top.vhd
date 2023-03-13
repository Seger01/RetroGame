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

ENTITY Top IS
	GENERIC
	(
	    -- COE
		COE_RGB_BIT_AMOUNT             : INTEGER := 3;
		-- ColorOutputSelector
		RGB_INPUT_AMOUNT               : INTEGER := 5;
		RGB_BIT_AMOUNT           	   : INTEGER := 12;
		RGB_TRANSPARENT_VALUE          : INTEGER := 16#FFF#;
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
		PLAYFIELD_PIXELS_START_OFFSET  : INTEGER := 16 + 16 + 8;
		-- Offsets
		OFFSET_CLK_TO_VGA              : INTEGER := 3;
		-- ROM
		OFFSET_CLK_TO_ROM              : INTEGER := 2;
		-- vga
		PIXEL_SCALING                  : INTEGER := 2;
		-- EntityPixels
		PLAYER_ROM_ADRESS_BIT_SIZE     : INTEGER := 12;
		BOSS_ROM_ADRESS_BIT_SIZE       : INTEGER := 12;
		BACKGROUND_ROM_ADRESS_BIT_SIZE : INTEGER := 14; -- TODO: ADD TO REST
		ENTITY_ROM_ADRESS_BIT_SIZE     : INTEGER := 23; --todo: 23??? kloptniet
		HUD_ROM_ADRESS_BIT_SIZE        : INTEGER := 12;
		-- 
		ENTITY_AMOUNT                  : INTEGER := 50;	
        -- amount of tiles visible on screan
        TILE_AMOUNT                    : INTEGER := (15 * 15);
        TILE_AMOUNT_HIGHT              : INTEGER := 15;
        TILE_AMOUNT_WITH               : INTEGER := 15;            
        -- amount of bit to identify one tile
        TILE_NUMBER_SIZE               : INTEGER := 6;
        TILE_PIXEL_HIGHT_AND_WITH      : INTEGER := 16		
	);
	PORT (
		debugIn       : IN  unsigned(15 DOWNTO 0); -- Debug switches
		debugOut      : OUT unsigned(15 DOWNTO 0); -- Debug Leds
		-- inputs
		reset, clk_100MHz : IN  STD_LOGIC;
		RGBout         : OUT unsigned (RGB_BIT_AMOUNT-1 DOWNTO 0);
		hsync, vsync   : OUT STD_LOGIC
	);
END Top;

ARCHITECTURE Behavioral OF Top IS
    COMPONENT clk_wiz_0 is
      Port ( 
        clk_25MHz : out STD_LOGIC;
        reset : in STD_LOGIC;
        locked : out STD_LOGIC;
        clk_in1 : in STD_LOGIC
      );
    end COMPONENT;
	COMPONENT BossCOEAdressSelector IS
		GENERIC
		(
			BOSS_ROM_ADRESS_BIT_SIZE   : INTEGER := BOSS_ROM_ADRESS_BIT_SIZE
		);
		PORT (
			-- inputs
			reset, clk : IN  STD_LOGIC;
			-- VGA module connections
			AdressIn   : IN  unsigned (BOSS_ROM_ADRESS_BIT_SIZE DOWNTO 0);
			AdressOut  : OUT unsigned (BOSS_ROM_ADRESS_BIT_SIZE-1 DOWNTO 0)
		);
	END COMPONENT;
	COMPONENT BackgroundCOEAdressSelector IS
		GENERIC
		(
			BACKGROUND_ROM_ADRESS_BIT_SIZE   : INTEGER := BACKGROUND_ROM_ADRESS_BIT_SIZE
		);
		PORT (
			-- inputs
			reset, clk : IN  STD_LOGIC;
			-- VGA module connections
			AdressIn   : IN  unsigned (BACKGROUND_ROM_ADRESS_BIT_SIZE DOWNTO 0);
			AdressOut  : OUT unsigned (BACKGROUND_ROM_ADRESS_BIT_SIZE-1 DOWNTO 0)
		);
	END COMPONENT;
	COMPONENT EntityCOEAdressSelector IS
		GENERIC
		(
			-- PIXEL COUNT
			--OBJECT_PIXELS_HIGHT_AND_WITH   : INTEGER := 16
			ENTITY_AMOUNT                : INTEGER := ENTITY_AMOUNT;
			ENTITY_ROM_ADRESS_BIT_SIZE   : INTEGER := ENTITY_ROM_ADRESS_BIT_SIZE
		);
        PORT
        (
            -- inputs
            reset, clk       : IN  STD_LOGIC;
            -- VGA module connections
		    AdressIn         : IN unsigned(ENTITY_AMOUNT * (ENTITY_ROM_ADRESS_BIT_SIZE+1) - 1 DOWNTO 0);
            AdressOut        : OUT unsigned(ENTITY_ROM_ADRESS_BIT_SIZE - 1 DOWNTO 0)
        );
	END COMPONENT;
	COMPONENT HUDCOEAdressSelector IS
	    GENERIC
		(
			HUD_ROM_ADRESS_BIT_SIZE   : INTEGER := HUD_ROM_ADRESS_BIT_SIZE
		);
		PORT (
			-- inputs
			reset, clk : IN  STD_LOGIC;
			-- VGA module connections
			AdressIn   : IN  unsigned (HUD_ROM_ADRESS_BIT_SIZE DOWNTO 0);
			AdressOut  : OUT unsigned (HUD_ROM_ADRESS_BIT_SIZE-1 DOWNTO 0)
		);
	END COMPONENT; 
    COMPONENT AllBackgroundTiles is
      Port ( 
        clka : in STD_LOGIC;
        addra : in STD_LOGIC_VECTOR ( BACKGROUND_ROM_ADRESS_BIT_SIZE-1 downto 0 );
        douta : out STD_LOGIC_VECTOR ( 7 downto 0 )
      );    
    end COMPONENT;
	COMPONENT ColorOutputSelector IS
		GENERIC
		(
			--
		    COE_RGB_BIT_AMOUNT    : INTEGER := 4;
			RGB_INPUT_AMOUNT      : INTEGER := RGB_INPUT_AMOUNT;
			RGB_BIT_AMOUNT  	  : INTEGER := RGB_BIT_AMOUNT;
			RGB_TRANSPARENT_VALUE : INTEGER := RGB_TRANSPARENT_VALUE
		);
		PORT
		(
			-- inputs
			clk    : IN  STD_LOGIC;
			-- Lowest position in RGBin vector is given the highest priorety.
            RGBin  : IN  unsigned(COE_RGB_BIT_AMOUNT * RGB_INPUT_AMOUNT - 1 + 4 DOWNTO 0); -- todo: fix 4 for 8bit background
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
			PLAYER_ROM_ADRESS_BIT_SIZE       : INTEGER := PLAYER_ROM_ADRESS_BIT_SIZE
		);
		PORT (
			debugIn        : IN  unsigned(15 DOWNTO 0); -- Debug switches
			debugOut       : OUT unsigned(15 DOWNTO 0); -- Debug Leds
			-- inputs
			reset, clk     : IN  STD_LOGIC;
			-- x, y position, entity nuber
			dataVector     : IN  unsigned((ENTITY_X_BIT_SIZE + ENTITY_Y_BIT_SIZE + ENTITY_NUMMER_BIT_SIZE) - 1 DOWNTO 0);
			-- VGA module connections
			Xcount, Ycount : IN  unsigned(9 DOWNTO 0)                           -- VGA current pixel number todo: add ofset
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
			BOSS_ROM_ADRESS_BIT_SIZE       : INTEGER := BOSS_ROM_ADRESS_BIT_SIZE
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
			-- ROM block entity
			entityAdress   : OUT unsigned(BOSS_ROM_ADRESS_BIT_SIZE DOWNTO 0) -- RGB value for tile -- (OTHERS => '1') is transparrent pixel
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
			-- ENTITY SIZE
			ENTITY_X_BIT_SIZE              : INTEGER := ENTITY_X_BIT_SIZE;
			ENTITY_Y_BIT_SIZE              : INTEGER := ENTITY_Y_BIT_SIZE;
			ENTITY_NUMMER_BIT_SIZE         : INTEGER := ENTITY_NUMMER_BIT_SIZE;
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
			BACKGROUND_ROM_ADRESS_BIT_SIZE : INTEGER := BACKGROUND_ROM_ADRESS_BIT_SIZE	
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
		-- ROM block entity
        entityAdress   : OUT UNSIGNED(BACKGROUND_ROM_ADRESS_BIT_SIZE DOWNTO 0) -- RGB value for tile -- (OTHERS => '1') is transparrent pixel
	);
	END COMPONENT;
	COMPONENT EntityPixels IS
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
			ENTITY_ROM_ADRESS_BIT_SIZE     : INTEGER := ENTITY_ROM_ADRESS_BIT_SIZE
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
			-- ROM block entity
			entityAdress   : OUT unsigned(ENTITY_ROM_ADRESS_BIT_SIZE DOWNTO 0) -- RGB value for tile -- (OTHERS => '1') is transparrent pixel
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
			HUD_ROM_ADRESS_BIT_SIZE        : INTEGER := HUD_ROM_ADRESS_BIT_SIZE
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
			-- ROM block entity
			entityAdress   : OUT unsigned(HUD_ROM_ADRESS_BIT_SIZE DOWNTO 0) -- RGB value for tile -- (OTHERS => '1') is transparrent pixel
		);
	END COMPONENT;

    --clk
    SIGNAL clk_25             : std_logic;
    
	-- Debug
	SIGNAL debugOutP             : unsigned(15 DOWNTO 0);
	SIGNAL debugOutB             : unsigned(15 DOWNTO 0);
	SIGNAL debugOutE             : unsigned(15 DOWNTO 0);
	SIGNAL debugOutH             : unsigned(15 DOWNTO 0);
	
	-- non optimalized COE address to read has extra bit to indicate transparantcy
	SIGNAL Player_Select_Adress  : unsigned (PLAYER_ROM_ADRESS_BIT_SIZE DOWNTO 0);
	SIGNAL Boss_Select_Adress    : unsigned (BOSS_ROM_ADRESS_BIT_SIZE DOWNTO 0);
	SIGNAL Background_Select_Adress    : unsigned (BACKGROUND_ROM_ADRESS_BIT_SIZE DOWNTO 0);
	-- todo: vector for Entity
	SIGNAL Entity_Select_Adress   : unsigned(ENTITY_AMOUNT * (ENTITY_ROM_ADRESS_BIT_SIZE+1) - 1 DOWNTO 0);
	SIGNAL HUD_Select_Adress     : unsigned (HUD_ROM_ADRESS_BIT_SIZE DOWNTO 0);
	
	-- COE
    SIGNAL Player_COE_Color     : std_logic_vector (COE_RGB_BIT_AMOUNT - 1 DOWNTO 0);
    SIGNAL Boss_COE_Color     : std_logic_vector (COE_RGB_BIT_AMOUNT - 1 DOWNTO 0);
    SIGNAL Background_COE_Color     : std_logic_vector (7 DOWNTO 0);-- todo rest
    SIGNAL Entity_COE_Color     : std_logic_vector (COE_RGB_BIT_AMOUNT - 1 DOWNTO 0);
    SIGNAL HUD_COE_Color        : std_logic_vector (COE_RGB_BIT_AMOUNT - 1 DOWNTO 0);

	-- optimalized COE address to read
	SIGNAL Player_COE_Adress     : unsigned (PLAYER_ROM_ADRESS_BIT_SIZE - 1 DOWNTO 0);
	SIGNAL Boss_COE_Adress       : unsigned (BOSS_ROM_ADRESS_BIT_SIZE - 1 DOWNTO 0);
	SIGNAL Background_COE_Adress : unsigned (BACKGROUND_ROM_ADRESS_BIT_SIZE - 1 DOWNTO 0); -- todo: add backgroud
	SIGNAL Entity_COE_Adress      : unsigned (ENTITY_ROM_ADRESS_BIT_SIZE - 1 DOWNTO 0);
	SIGNAL HUD_COE_Adress        : unsigned (HUD_ROM_ADRESS_BIT_SIZE - 1 DOWNTO 0);

	-- optimalized COE RGB output
	-- Lowest position in RGBin vector is given the highest priorety.
	SIGNAL COE_RGB               : unsigned(COE_RGB_BIT_AMOUNT * (RGB_INPUT_AMOUNT -1) - 1 + Background_COE_Color'length DOWNTO 0); -- todo hang aan rom
	SIGNAL Mixed_RGB_Value       : unsigned (RGB_BIT_AMOUNT-1 DOWNTO 0);

	-- VGA
	SIGNAL Xcount, Ycount        : unsigned(9 DOWNTO 0); -- VGA current pixel number
	-- Communication
	SIGNAL EntityData            : unsigned((ENTITY_AMOUNT * (ENTITY_X_BIT_SIZE + ENTITY_Y_BIT_SIZE + ENTITY_NUMMER_BIT_SIZE)) - 1 DOWNTO 0);

    -- background
    -- vector with map tile numbers		-- tile number starting top left going left to richt and down
    SIGNAL tileVector  : UNSIGNED((TILE_AMOUNT * (TILE_NUMBER_SIZE)) - 1 DOWNTO 0);		
BEGIN

	clk_wiz_00: clk_wiz_0	PORT MAP(
		clk_25MHz     => clk_25,
		reset       => reset,
		locked  => debugOut(0),
		clk_in1 => clk_100MHz
	);
	BossCOEAdressSelector0 : BossCOEAdressSelector GENERIC MAP(
		BOSS_ROM_ADRESS_BIT_SIZE => BOSS_ROM_ADRESS_BIT_SIZE
	)PORT MAP(
		reset     => reset,
		clk       => clk_25,
		AdressIn  => Boss_Select_Adress,
		AdressOut => Boss_COE_Adress
	);
	BackgroundCOEAdressSelector0 : BackgroundCOEAdressSelector GENERIC MAP(
		BACKGROUND_ROM_ADRESS_BIT_SIZE => BACKGROUND_ROM_ADRESS_BIT_SIZE
	)PORT MAP(
		reset     => reset,
		clk       => clk_25,
		AdressIn  => Background_Select_Adress,
		AdressOut => Background_COE_Adress
	);
	EntityCOEAdressSelector0 : EntityCOEAdressSelector GENERIC MAP(
		ENTITY_ROM_ADRESS_BIT_SIZE => ENTITY_ROM_ADRESS_BIT_SIZE,
		ENTITY_AMOUNT => ENTITY_AMOUNT
	)PORT MAP(
		reset     => reset,
		clk       => clk_25,
		AdressIn  => Entity_Select_Adress,
		AdressOut => Entity_COE_Adress
	);
	HUDCOEAdressSelector0 : HUDCOEAdressSelector GENERIC MAP(
		HUD_ROM_ADRESS_BIT_SIZE => HUD_ROM_ADRESS_BIT_SIZE
	)PORT MAP(
		reset     => reset,
		clk       => clk_25,
		AdressIn  => HUD_Select_Adress,
		AdressOut => HUD_COE_Adress
	);
	Player_ROM0 : Player_ROM PORT MAP(
		clka    => clk_25,
		-- Lowest position in RGBin vector is given the highest priorety.		
		addra  => std_logic_vector(Player_COE_Adress),
		douta  => Player_COE_Color
	);
	Player_ROM1 : Player_ROM PORT MAP(
		clka    => clk_25,
		-- Lowest position in RGBin vector is given the highest priorety.		
		addra  => std_logic_vector(Boss_COE_Adress),
		douta  => Boss_COE_Color
	);
	AllBackgroundTiles1 : AllBackgroundTiles PORT MAP(
        clka    => clk_25,
		-- Lowest position in RGBin vector is given the highest priorety.		
		addra  => std_logic_vector(Background_COE_Adress),
		douta  => Background_COE_Color
      );
	ColorOutputSelector0 : ColorOutputSelector GENERIC MAP(
		COE_RGB_BIT_AMOUNT => COE_RGB_BIT_AMOUNT,
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
		PLAYER_ROM_ADRESS_BIT_SIZE     => PLAYER_ROM_ADRESS_BIT_SIZE
	)
	 PORT MAP(
		debugIn      => debugIn,
		debugOut     => debugOutB,
		reset        => reset,
		clk          => clk_25,
		dataVector   => EntityData(((ENTITY_X_BIT_SIZE + ENTITY_Y_BIT_SIZE + ENTITY_NUMMER_BIT_SIZE)) - 1 DOWNTO 0),
		Xcount       => Xcount,
		Ycount       => Ycount
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
		BOSS_ROM_ADRESS_BIT_SIZE     => BOSS_ROM_ADRESS_BIT_SIZE
	)PORT MAP(
		debugIn      => debugIn,
		debugOut     => debugOutB,
		reset        => reset,
		clk          => clk_25,
		dataVector   => EntityData((2 * (ENTITY_X_BIT_SIZE + ENTITY_Y_BIT_SIZE + ENTITY_NUMMER_BIT_SIZE)) - 1 DOWNTO (ENTITY_X_BIT_SIZE + ENTITY_Y_BIT_SIZE + ENTITY_NUMMER_BIT_SIZE)),
		Xcount       => Xcount,
		Ycount       => Ycount,
		entityAdress => Boss_Select_Adress
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
			-- ENTITY SIZE
			ENTITY_X_BIT_SIZE           =>ENTITY_X_BIT_SIZE,
			ENTITY_Y_BIT_SIZE             => ENTITY_Y_BIT_SIZE,
			ENTITY_NUMMER_BIT_SIZE         => ENTITY_NUMMER_BIT_SIZE,
			PLAYFIELD_PIXELS_START_OFFSET  => PLAYFIELD_PIXELS_START_OFFSET,
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
			BACKGROUND_ROM_ADRESS_BIT_SIZE  => BACKGROUND_ROM_ADRESS_BIT_SIZE	
	) PORT MAP(
		debugIn      => debugIn,
		debugOut     => debugOutB,
		reset        => reset,
		clk          => clk_25,
		tileNumberVector   => tileVector,--TODO: TileData((number of tiles * (ENTITY_X_BIT_SIZE + ENTITY_Y_BIT_SIZE + ENTITY_NUMMER_BIT_SIZE)) - 1 DOWNTO ....,
		Xcount       => Xcount,
		Ycount       => Ycount,
		entityAdress => Background_Select_Adress
	);
	--todo: generate 
	EntityPixels0 : EntityPixels  GENERIC MAP(
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
		ENTITY_ROM_ADRESS_BIT_SIZE        => ENTITY_ROM_ADRESS_BIT_SIZE
	)  PORT MAP(
		debugIn      => debugIn,
		debugOut     => debugOutB,
		reset        => reset,
		clk          => clk_25,
		dataVector   => EntityData((3 * (ENTITY_X_BIT_SIZE + ENTITY_Y_BIT_SIZE + ENTITY_NUMMER_BIT_SIZE)) - 1 DOWNTO (2 * (ENTITY_X_BIT_SIZE + ENTITY_Y_BIT_SIZE + ENTITY_NUMMER_BIT_SIZE))),
		Xcount       => Xcount,
		Ycount       => Ycount,
		entityAdress => Entity_Select_Adress((3 * (ENTITY_X_BIT_SIZE + ENTITY_Y_BIT_SIZE + ENTITY_NUMMER_BIT_SIZE)) - 1 DOWNTO (2 * (ENTITY_X_BIT_SIZE + ENTITY_Y_BIT_SIZE + ENTITY_NUMMER_BIT_SIZE)))
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
		PLAYFIELD_PIXELS_START_OFFSET  => PLAYFIELD_PIXELS_START_OFFSET,
		-- Offsets
		OFFSET_CLK_TO_VGA              => OFFSET_CLK_TO_VGA,
		-- ROM
		OFFSET_CLK_TO_ROM              => OFFSET_CLK_TO_ROM,
		-- vga
		PIXEL_SCALING                  => PIXEL_SCALING,
		-- EntityPixels
		HUD_ROM_ADRESS_BIT_SIZE        => HUD_ROM_ADRESS_BIT_SIZE
	)  PORT MAP(
		debugIn      => debugIn,
		debugOut     => debugOutB,
		reset        => reset,
		clk          => clk_25,
		dataVector   => EntityData(23 downto 0),--TODO: TileData((number of tiles * (ENTITY_X_BIT_SIZE + ENTITY_Y_BIT_SIZE + ENTITY_NUMMER_BIT_SIZE)) - 1 + 24 bits for HUD DOWNTO ....,
		Xcount       => Xcount,
		Ycount       => Ycount,
		entityAdress => HUD_Select_Adress
	);

    COE_RGB <= unsigned (Player_COE_Color & Boss_COE_Color & Background_COE_Color & Entity_COE_Color & HUD_COE_Color);  
    
    
    
    
    
    PROCESS (clk_25)
    VARIABLE vEntityVectorOffset : NATURAL RANGE 0 TO ((ENTITY_AMOUNT * (ENTITY_X_BIT_SIZE + ENTITY_Y_BIT_SIZE + ENTITY_NUMMER_BIT_SIZE)) - 1) := 0;
    VARIABLE vEntityVectorOffset1 : NATURAL RANGE 0 TO ((ENTITY_AMOUNT * (ENTITY_X_BIT_SIZE + ENTITY_Y_BIT_SIZE + ENTITY_NUMMER_BIT_SIZE)) - 1) := 0;
    --VARIABLE sDebugTileNumberVectorTemp : NATURAL RANGE 0 TO ((TILE_AMOUNT * (TILE_NUMBER_SIZE)) - 1) := 0;
	    
	BEGIN
		IF (rising_edge (clk_25)) THEN		
            --todo: fix add code (for debug) tiles
            tileVector <= (OTHERS => '0');
            -- loop for
            EntityData <= (OTHERS => '0');
            
            FOR count IN 0 TO ENTITY_AMOUNT - 1 LOOP
                -- vector entity 0 => 49 by count    *     total entity size
                vEntityVectorOffset := count * (ENTITY_X_BIT_SIZE + ENTITY_Y_BIT_SIZE + ENTITY_NUMMER_BIT_SIZE);
                vEntityVectorOffset1 := 1 * (ENTITY_X_BIT_SIZE + ENTITY_Y_BIT_SIZE + ENTITY_NUMMER_BIT_SIZE);
                IF (debugIn(2) = '1') THEN
                    EntityData((vEntityVectorOffset + vEntityVectorOffset1 - 1) DOWNTO vEntityVectorOffset) <=  "00001110" & (to_unsigned (count * 16, 8)) & (to_unsigned (count*3, 8));
                ELSIF (debugIn(3) = '1') THEN
                    EntityData((vEntityVectorOffset + vEntityVectorOffset1 - 1) DOWNTO vEntityVectorOffset) <=  "00000001" & (to_unsigned (count * 16, 8)) & (to_unsigned (count*2, 8));
                ELSE
                    EntityData((vEntityVectorOffset + vEntityVectorOffset1 - 1) DOWNTO vEntityVectorOffset) <=  (to_unsigned (count, 8)) & (to_unsigned (count * 16, 8)) & (to_unsigned (count, 8));
                END IF;
            END LOOP;
            
            
            FOR tileCount IN 0 TO TILE_AMOUNT - 1 LOOP
                if (tileCount < 15 and debugIn(5) = '1') then
                    tileVector(((tileCount + 1) * 6 -1) downto tileCount * 6) <= (to_unsigned(8, 6));
                elsif (((tileCount+1) mod 15) = 0 and debugIn(5) = '1') then
                    tileVector(((tileCount + 1) * 6 -1) downto tileCount * 6) <= (to_unsigned(8, 6));
                elsif ((tileCount mod 15) = 0 and debugIn(5) = '1') then
                    tileVector(((tileCount + 1) * 6 -1) downto tileCount * 6) <= (to_unsigned(8, 6));
                elsif (tileCount > TILE_AMOUNT - 1 - 15 and debugIn(5) = '1') then
                    tileVector(((tileCount + 1) * 6 -1) downto tileCount * 6) <= (to_unsigned(8, 6));
                else
                    tileVector(((tileCount + 1) * 6 -1) downto tileCount * 6) <= (to_unsigned(0, 6));                              
                end if;
                
            END LOOP;
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