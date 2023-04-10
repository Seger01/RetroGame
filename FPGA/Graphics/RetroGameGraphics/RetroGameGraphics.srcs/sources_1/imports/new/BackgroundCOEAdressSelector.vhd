----------------------------------------------------------------------------------
-- Company: -
-- Engineer: Martijn Kamphof
-- 
-- Create Date: 07.03.2023 19:39:42
-- Design Name: 
-- Module Name: BackgroundCOEAdressSelector - Behavioral
-- Project Name: Retro Game
-- Target Devices: Digilent Basys 3
-- Tool Versions: Vivado 2022.1
-- Description: 
-- 
-- Dependencies: 
-- 
-- Revision:
-- Revision 0.01 - File Created
-- Additional Comments:
-- All entities and tiles RGB outputs will be controlled by the CollorOutputSelector
----------------------------------------------------------------------------------

library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;

entity BackgroundCOEAdressSelector is
    GENERIC
	(
		BACKGROUND_ROM_ADRESS_BIT_SIZE   : INTEGER := 14;
		INDEX_BIT_SIZE             : INTEGER := 3;
		PALLET_BIT_SIZE            : INTEGER := 11;
		RGB_BIT_AMOUNT             : INTEGER := 12
	);
	PORT
	(
		-- inputs
		reset, clk       : IN  STD_LOGIC;
		-- VGA module connections
		AdressIn         : IN unsigned(BACKGROUND_ROM_ADRESS_BIT_SIZE-1 DOWNTO 0);
		RGBOut     : OUT unsigned (RGB_BIT_AMOUNT - 1 DOWNTO 0)
	);
end BackgroundCOEAdressSelector;

architecture Behavioral of BackgroundCOEAdressSelector is
    SIGNAL AdressOut : unsigned( Background_ROM_ADRESS_BIT_SIZE - 1 DOWNTO 0);
	SIGNAL IndexNr   : STD_LOGIC_VECTOR(INDEX_BIT_SIZE - 1 DOWNTO 0);
	SIGNAL PalletNr  : unsigned(PALLET_BIT_SIZE - 1 DOWNTO 0);

	COMPONENT  Background_ROM IS
		PORT (
			clka  : IN  STD_LOGIC;
			addra : IN  STD_LOGIC_VECTOR ( Background_ROM_ADRESS_BIT_SIZE - 1 DOWNTO 0);
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
	 Background_ROM0 :  Background_ROM PORT MAP(
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

	PROCESS (clk)
	BEGIN
--	REQP #1 Warning The RAMB18E1 DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM18.ram has an input control pin DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM18.ram.ADDRARDADDR[10] (net: addra[7]) which is driven by a register (AdressOut_reg[7]) that has an active asychronous set or reset. This may cause corruption of the memory contents and/or read values when the set/reset is asserted and is not analyzed by the default static timing analysis. It is suggested to eliminate the use of a set/reset to registers driving this RAMB pin or else use a synchronous reset in which the assertion of the reset is timed by default. 
--		IF (reset = '1') THEN
--			AdressOut <= (OTHERS => '0');
--			PalletNr  <= (OTHERS => '0');
		IF (rising_edge (clk)) THEN
			AdressOut <= AdressIn( Background_ROM_ADRESS_BIT_SIZE - 1 DOWNTO 0);
			PalletNr  <= (OTHERS => '0'); --todo add
		END IF;
	END PROCESS;
END Behavioral;
