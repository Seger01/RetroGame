----------------------------------------------------------------------------------
-- Company:         -
-- Engineer:        Martijn Kamphof
-- 
-- Create Date:     07.03.2023 19:39:42
-- Design Name: 
-- Module Name:     PlayerCOEAdressSelector - Behavioral
-- Project Name:    Retro Game
-- Target Devices:  Digilent Basys 3
-- Tool Versions:   Vivado 2022.1
-- Description: 
-- 
-- Dependencies: 
-- 
-- Revision:
-- Revision 0.01 - File Created
-- Additional Comments:
----------------------------------------------------------------------------------

LIBRARY IEEE;
USE IEEE.STD_LOGIC_1164.ALL;
USE IEEE.NUMERIC_STD.ALL;

ENTITY PlayerCOEAdressSelector IS
	GENERIC
	(
		PLAYER_ROM_ADRESS_BIT_SIZE : INTEGER := 11;
		INDEX_BIT_SIZE             : INTEGER := 3;
		PALLET_BIT_SIZE            : INTEGER := 11;
		RGB_BIT_AMOUNT             : INTEGER := 12
	);
	PORT (
		reset, clk : IN  STD_LOGIC;
		AdressIn   : IN  unsigned(PLAYER_ROM_ADRESS_BIT_SIZE DOWNTO 0);
		RGBOut     : OUT unsigned (RGB_BIT_AMOUNT - 1 DOWNTO 0)
	);
END PlayerCOEAdressSelector;

ARCHITECTURE Behavioral OF PlayerCOEAdressSelector IS
	SIGNAL AdressOut : unsigned(PLAYER_ROM_ADRESS_BIT_SIZE - 1 DOWNTO 0);
	SIGNAL IndexNr   : STD_LOGIC_VECTOR(INDEX_BIT_SIZE - 1 DOWNTO 0);
	SIGNAL PalletNr  : unsigned(PALLET_BIT_SIZE - 1 DOWNTO 0);	
	-- transparrent indexnr
	SIGNAL AdressTransparent   : unsigned(PLAYER_ROM_ADRESS_BIT_SIZE DOWNTO 0);

	COMPONENT Player_ROM IS
		PORT (
			clka  : IN  STD_LOGIC;
			addra : IN  STD_LOGIC_VECTOR (PLAYER_ROM_ADRESS_BIT_SIZE - 1 DOWNTO 0);
			douta : OUT STD_LOGIC_VECTOR (INDEX_BIT_SIZE-1 DOWNTO 0)
		);
	END COMPONENT;
	COMPONENT ColorPalletSelector IS
		GENERIC
		(
			INDEX_BIT_SIZE  : INTEGER := INDEX_BIT_SIZE;
			PALLET_BIT_SIZE : INTEGER := PALLET_BIT_SIZE;
			RGB_BIT_AMOUNT  : INTEGER := RGB_BIT_AMOUNT
		);
		PORT (
			-- inputs
			reset, clk : IN  STD_LOGIC;
			-- VGA module connections
			IndexIn    : IN  unsigned(INDEX_BIT_SIZE - 1 DOWNTO 0);
			PalletIn   : IN  unsigned(PALLET_BIT_SIZE - 1 DOWNTO 0);
			RGBOut     : OUT unsigned (RGB_BIT_AMOUNT - 1 DOWNTO 0)
		);
	END COMPONENT;
BEGIN
	Player_ROM0 : Player_ROM PORT MAP(
		clka  => clk,
		-- Lowest position in RGBin vector is given the highest priorety.		
		addra => STD_LOGIC_VECTOR(AdressOut),
		douta => IndexNr
	);
	ColorPalletSelector0 : ColorPalletSelector GENERIC
	MAP
	(
        INDEX_BIT_SIZE  => INDEX_BIT_SIZE,
        PALLET_BIT_SIZE => PALLET_BIT_SIZE,
        RGB_BIT_AMOUNT  => RGB_BIT_AMOUNT
	)
	PORT MAP(
		reset    => reset,
		clk      => clk,
		IndexIn  => unsigned (IndexNr),
		PalletIn => PalletNr,
		RGBOut   => RGBOut
	);	
	
	AdressTransparent <= (OTHERS => '1');

	PROCESS (clk)
	BEGIN
--	REQP #1 Warning The RAMB18E1 DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM18.ram has an input control pin DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM18.ram.ADDRARDADDR[10] (net: addra[7]) which is driven by a register (AdressOut_reg[7]) that has an active asychronous set or reset. This may cause corruption of the memory contents and/or read values when the set/reset is asserted and is not analyzed by the default static timing analysis. It is suggested to eliminate the use of a set/reset to registers driving this RAMB pin or else use a synchronous reset in which the assertion of the reset is timed by default. 
--		IF (reset = '1') THEN
--			AdressOut <= (OTHERS => '0');
--			PalletNr  <= (OTHERS => '0');
		IF (rising_edge (clk)) THEN
			AdressOut <= (OTHERS => '0');
			PalletNr  <= (OTHERS => '0'); --todo add
		    
            -- if address is not transparrent pixel (1111111111)
            if (AdressIn(PLAYER_ROM_ADRESS_BIT_SIZE DOWNTO 0) /= AdressTransparent) then
                -- select bottom half of addres becouse 1111111 is to indicate transparent pixel
                AdressOut <= AdressIn(PLAYER_ROM_ADRESS_BIT_SIZE - 1 DOWNTO 0);
            end if;
		END IF;
	END PROCESS;
END Behavioral;