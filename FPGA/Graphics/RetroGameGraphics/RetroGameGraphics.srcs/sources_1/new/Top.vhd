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
		PLAYER_ROM_ADRESS_BIT_SIZE     : INTEGER := 7;
		BOSS_ROM_ADRESS_BIT_SIZE       : INTEGER := 7;
		BACKGROUND_ROM_ADRESS_BIT_SIZE : INTEGER := 7; -- TODO: ADD TO REST
		ENTITY_ROM_ADRESS_BIT_SIZE     : INTEGER := 7;
		HUD_ROM_ADRESS_BIT_SIZE        : INTEGER := 7;
		-- 
		ENTITY_AMOUNT                  : INTEGER := 50
	);
	PORT (
		debugIn       : IN  unsigned(15 DOWNTO 0); -- Debug switches
		debugOut      : OUT unsigned(14 DOWNTO 0); -- Debug Leds
		-- inputs
		reset, clk_25 : IN  STD_LOGIC
	);
END Top;

ARCHITECTURE Behavioral OF Top IS
	COMPONENT PlayerCOEAdressSelector IS
		GENERIC
		(
			PLAYER_ROM_ADRESS_BIT_SIZE   : INTEGER := PLAYER_ROM_ADRESS_BIT_SIZE
		);
		PORT (
			-- inputs
			reset, clk : IN  STD_LOGIC;
			-- VGA module connections
			AdressIn   : IN  unsigned (PLAYER_ROM_ADRESS_BIT_SIZE DOWNTO 0);
			AdressOut  : OUT unsigned (PLAYER_ROM_ADRESS_BIT_SIZE DOWNTO 0)
		);
	END COMPONENT;
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
			AdressOut  : OUT unsigned (BOSS_ROM_ADRESS_BIT_SIZE DOWNTO 0)
		);
	END COMPONENT;
	COMPONENT EntityCOEAdressSelector IS
		GENERIC
		(
			-- PIXEL COUNT
			--OBJECT_PIXELS_HIGHT_AND_WITH   : INTEGER := 16
			ENTITY_AMOUNT                : INTEGER := ENTITY_AMOUNT;
			RGB_BIT_AMOUNT               : INTEGER := RGB_BIT_AMOUNT;
			ENTITY_ROM_ADRESS_BIT_SIZE   : INTEGER := ENTITY_ROM_ADRESS_BIT_SIZE
		);
		PORT
		(
			-- inputs
			reset, clk       : IN  STD_LOGIC;
			-- VGA module connections
			AdressIn         : IN unsigned(ENTITY_AMOUNT * RGB_BIT_AMOUNT - 1 DOWNTO 0);
			AdressOut        : OUT unsigned(RGB_BIT_AMOUNT - 1 DOWNTO 0)
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
			AdressOut  : OUT unsigned (HUD_ROM_ADRESS_BIT_SIZE DOWNTO 0)
		);
	END COMPONENT;
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
			HORIZONTAL_COUNT_VISIBLE_START : INTEGER := 144;
			VERTICAL_COUNT_VISIBLE_START   : INTEGER := 31
		);
		PORT (
			reset, clk_25  : IN  STD_LOGIC;
			RGBin          : IN  unsigned(3 DOWNTO 0);
			RGBout         : OUT unsigned(3 DOWNTO 0);
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
			PLAYER_ROM_ADRESS_BIT_SIZE       : INTEGER := BOSS_ROM_ADRESS_BIT_SIZE
		);
		PORT (
			debugIn        : IN  unsigned(15 DOWNTO 0); -- Debug switches
			debugOut       : OUT unsigned(14 DOWNTO 0); -- Debug Leds
			-- inputs
			reset, clk     : IN  STD_LOGIC;
			-- x, y position, entity nuber
			dataVector     : IN  unsigned((ENTITY_X_BIT_SIZE + ENTITY_Y_BIT_SIZE + ENTITY_NUMMER_BIT_SIZE) - 1 DOWNTO 0);
			-- VGA module connections
			Xcount, Ycount : IN  unsigned(9 DOWNTO 0);                           -- VGA current pixel number todo: add ofset
			-- ROM block entity
			entityAdress   : OUT unsigned(BOSS_ROM_ADRESS_BIT_SIZE + 1 DOWNTO 0) -- RGB value for tile -- (OTHERS => '1') is transparrent pixel
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
			debugOut       : OUT unsigned(14 DOWNTO 0); -- Debug Leds
			-- inputs
			reset, clk     : IN  STD_LOGIC;
			-- x, y position, entity nuber
			dataVector     : IN  unsigned((ENTITY_X_BIT_SIZE + ENTITY_Y_BIT_SIZE + ENTITY_NUMMER_BIT_SIZE) - 1 DOWNTO 0);
			-- VGA module connections
			Xcount, Ycount : IN  unsigned(9 DOWNTO 0);                           -- VGA current pixel number todo: add ofset
			-- ROM block entity
			entityAdress   : OUT unsigned(BOSS_ROM_ADRESS_BIT_SIZE + 1 DOWNTO 0) -- RGB value for tile -- (OTHERS => '1') is transparrent pixel
		);
	END COMPONENT;
	COMPONENT BackgroundPixels IS
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
			BACKGROUND_ROM_ADRESS_BIT_SIZE       : INTEGER := BOSS_ROM_ADRESS_BIT_SIZE
		);
		PORT (
			debugIn        : IN  unsigned(15 DOWNTO 0); -- Debug switches
			debugOut       : OUT unsigned(14 DOWNTO 0); -- Debug Leds
			-- inputs
			reset, clk     : IN  STD_LOGIC;
			-- x, y position, entity nuber
			dataVector     : IN  unsigned((ENTITY_X_BIT_SIZE + ENTITY_Y_BIT_SIZE + ENTITY_NUMMER_BIT_SIZE) - 1 DOWNTO 0);
			-- VGA module connections
			Xcount, Ycount : IN  unsigned(9 DOWNTO 0);                           -- VGA current pixel number todo: add ofset
			-- ROM block entity
			entityAdress   : OUT unsigned(BOSS_ROM_ADRESS_BIT_SIZE + 1 DOWNTO 0) -- RGB value for tile -- (OTHERS => '1') is transparrent pixel
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
			ENTITY_ROM_ADRESS_BIT_SIZE       : INTEGER := BOSS_ROM_ADRESS_BIT_SIZE
		);
		PORT (
			debugIn        : IN  unsigned(15 DOWNTO 0); -- Debug switches
			debugOut       : OUT unsigned(14 DOWNTO 0); -- Debug Leds
			-- inputs
			reset, clk     : IN  STD_LOGIC;
			-- x, y position, entity nuber
			dataVector     : IN  unsigned((ENTITY_X_BIT_SIZE + ENTITY_Y_BIT_SIZE + ENTITY_NUMMER_BIT_SIZE) - 1 DOWNTO 0);
			-- VGA module connections
			Xcount, Ycount : IN  unsigned(9 DOWNTO 0);                           -- VGA current pixel number todo: add ofset
			-- ROM block entity
			entityAdress   : OUT unsigned(BOSS_ROM_ADRESS_BIT_SIZE + 1 DOWNTO 0) -- RGB value for tile -- (OTHERS => '1') is transparrent pixel
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
			HUD_ROM_ADRESS_BIT_SIZE       : INTEGER := BOSS_ROM_ADRESS_BIT_SIZE
		);
		PORT (
			debugIn        : IN  unsigned(15 DOWNTO 0); -- Debug switches
			debugOut       : OUT unsigned(14 DOWNTO 0); -- Debug Leds
			-- inputs
			reset, clk     : IN  STD_LOGIC;
			-- x, y position, entity nuber
			dataVector     : IN  unsigned((ENTITY_X_BIT_SIZE + ENTITY_Y_BIT_SIZE + ENTITY_NUMMER_BIT_SIZE) - 1 DOWNTO 0);
			-- VGA module connections
			Xcount, Ycount : IN  unsigned(9 DOWNTO 0);                           -- VGA current pixel number todo: add ofset
			-- ROM block entity
			entityAdress   : OUT unsigned(BOSS_ROM_ADRESS_BIT_SIZE + 1 DOWNTO 0) -- RGB value for tile -- (OTHERS => '1') is transparrent pixel
		);
	END COMPONENT;

	-- Debug
	SIGNAL debugOutP             : unsigned(14 DOWNTO 0);
	SIGNAL debugOutB             : unsigned(14 DOWNTO 0);
	SIGNAL debugOutE             : unsigned(14 DOWNTO 0);
	SIGNAL debugOutH             : unsigned(14 DOWNTO 0);

	-- non optimalized COE address to read has extra bit to indicate transparantcy
	SIGNAL Player_Select_Adress  : unsigned (PLAYER_ROM_ADRESS_BIT_SIZE DOWNTO 0);
	SIGNAL Boss_Select_Adress    : unsigned (BOSS_ROM_ADRESS_BIT_SIZE DOWNTO 0);
	-- todo: vector for Entity
	SIGNAL Entity_Select_Adress   : unsigned (ENTITY_ROM_ADRESS_BIT_SIZE DOWNTO 0);
	SIGNAL HUD_Select_Adress     : unsigned (HUD_ROM_ADRESS_BIT_SIZE DOWNTO 0);

	-- optimalized COE address to read
	SIGNAL Player_COE_Adress     : unsigned (PLAYER_ROM_ADRESS_BIT_SIZE - 1 DOWNTO 0);
	SIGNAL Boss_COE_Adress       : unsigned (BOSS_ROM_ADRESS_BIT_SIZE - 1 DOWNTO 0);
	SIGNAL Background_COE_Adress : unsigned (BACKGROUND_ROM_ADRESS_BIT_SIZE - 1 DOWNTO 0); -- todo: add backgroud
	SIGNAL Entity_COE_Adress      : unsigned (ENTITY_ROM_ADRESS_BIT_SIZE - 1 DOWNTO 0);
	SIGNAL HUD_COE_Adress        : unsigned (HUD_ROM_ADRESS_BIT_SIZE - 1 DOWNTO 0);

	-- optimalized COE RGB output
	-- Lowest position in RGBin vector is given the highest priorety.
	SIGNAL COE_RGB               : unsigned(RGB_BIT_AMOUNT * RGB_INPUT_AMOUNT - 1 DOWNTO 0); -- todo hang aan rom
	SIGNAL Mixed_RGB_Value       : unsigned (RGB_BIT_AMOUNT-1 DOWNTO 0);

	-- VGA
	SIGNAL VGA_RGB               : unsigned(RGB_BIT_AMOUNT * RGB_INPUT_AMOUNT - 1 DOWNTO 0);
	SIGNAL Xcount, Ycount        : unsigned(9 DOWNTO 0); -- VGA current pixel number
	-- Communication
	SIGNAL EntityData            : unsigned((ENTITY_AMOUNT * (ENTITY_X_BIT_SIZE + ENTITY_Y_BIT_SIZE + ENTITY_NUMMER_BIT_SIZE)) - 1 DOWNTO 0);

BEGIN

	PlayerCOEAdressSelector0 : PlayerCOEAdressSelector GENERIC MAP(
		PLAYER_ROM_ADRESS_BIT_SIZE => PLAYER_ROM_ADRESS_BIT_SIZE
	)
	PORT MAP(
		reset     => reset,
		clk       => clk_25,
		AdressIn  => Player_Select_Adress,
		AdressOut => Player_COE_Adress
	);
	BossCOEAdressSelector0 : BossCOEAdressSelector GENERIC MAP(
		BOSS_ROM_ADRESS_BIT_SIZE => BOSS_ROM_ADRESS_BIT_SIZE
	)PORT MAP(
		reset     => reset,
		clk       => clk_25,
		AdressIn  => Boss_Select_Adress,
		AdressOut => Boss_COE_Adress
	);
	EntityCOEAdressSelector0 : EntityCOEAdressSelector GENERIC MAP(
		ENTITY_ROM_ADRESS_BIT_SIZE => ENTITY_ROM_ADRESS_BIT_SIZE
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
	ColorOutputSelector0 : ColorOutputSelector PORT MAP(
		clk    => clk_25,
		-- Lowest position in RGBin vector is given the highest priorety.		
		RGBin  => COE_RGB,
		RGBout => Mixed_RGB_Value
	);
	VGA0 : VGA PORT MAP(
		reset  => reset,
		clk_25 => clk_25,
		-- Lowest position in RGBin vector is given the highest priorety.		
		RGBin  => Mixed_RGB_Value,
		RGBout => VGA_RGB
	);
	PlayerPixels0 : PlayerPixels PORT MAP(
		debugIn      => debugIn,
		debugOut     => debugOutB,
		reset        => reset,
		clk          => clk_25,
		dataVector   => EntityData(((ENTITY_X_BIT_SIZE + ENTITY_Y_BIT_SIZE + ENTITY_NUMMER_BIT_SIZE)) - 1 DOWNTO 0),
		Xcount       => Xcount,
		Ycount       => Ycount,
		entityAdress => Player_COE_Adress
	);
	BossPixels0 : BossPixels PORT MAP(
		debugIn      => debugIn,
		debugOut     => debugOutB,
		reset        => reset,
		clk          => clk_25,
		dataVector   => EntityData((2 * (ENTITY_X_BIT_SIZE + ENTITY_Y_BIT_SIZE + ENTITY_NUMMER_BIT_SIZE)) - 1 DOWNTO (ENTITY_X_BIT_SIZE + ENTITY_Y_BIT_SIZE + ENTITY_NUMMER_BIT_SIZE)),
		Xcount       => Xcount,
		Ycount       => Ycount,
		entityAdress => Boss_COE_Adress
	);
	BackgroundPixels0 : BackgroundPixels PORT MAP(
		debugIn      => debugIn,
		debugOut     => debugOutB,
		reset        => reset,
		clk          => clk_25,
		dataVector   => EntityData(23 downto 0),--TODO: TileData((number of tiles * (ENTITY_X_BIT_SIZE + ENTITY_Y_BIT_SIZE + ENTITY_NUMMER_BIT_SIZE)) - 1 DOWNTO ....,
		Xcount       => Xcount,
		Ycount       => Ycount,
		entityAdress => HUD_COE_Adress
	);
	--todo: generate 
	EntityPixels0 : EntityPixels PORT MAP(
		debugIn      => debugIn,
		debugOut     => debugOutB,
		reset        => reset,
		clk          => clk_25,
		dataVector   => EntityData((3 * (ENTITY_X_BIT_SIZE + ENTITY_Y_BIT_SIZE + ENTITY_NUMMER_BIT_SIZE)) - 1 DOWNTO (2 * (ENTITY_X_BIT_SIZE + ENTITY_Y_BIT_SIZE + ENTITY_NUMMER_BIT_SIZE))),
		Xcount       => Xcount,
		Ycount       => Ycount,
		entityAdress => Boss_COE_Adress
	);
	HUDPixels0 : HUDPixels PORT MAP(
		debugIn      => debugIn,
		debugOut     => debugOutB,
		reset        => reset,
		clk          => clk_25,
		dataVector   => EntityData(23 downto 0),--TODO: TileData((number of tiles * (ENTITY_X_BIT_SIZE + ENTITY_Y_BIT_SIZE + ENTITY_NUMMER_BIT_SIZE)) - 1 + 24 bits for HUD DOWNTO ....,
		Xcount       => Xcount,
		Ycount       => Ycount,
		entityAdress => HUD_COE_Adress
	);

END Behavioral;