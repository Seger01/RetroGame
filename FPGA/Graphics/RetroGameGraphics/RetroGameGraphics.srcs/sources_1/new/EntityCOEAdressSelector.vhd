----------------------------------------------------------------------------------
-- Company:         -
-- Engineer:        Martijn Kamphof
-- 
-- Create Date:     07.03.2023 19:39:42
-- Design Name: 
-- Module Name:     EntityCOEAdressSelector - Behavioral
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
--todo add all 48 functionality
LIBRARY IEEE;
USE IEEE.STD_LOGIC_1164.ALL;
USE IEEE.NUMERIC_STD.ALL;

ENTITY EntityCOEAdressSelector IS
	GENERIC
	(
	    ENTITY_AMOUNT              : INTEGER := 48;
		Entity_ROM_ADRESS_BIT_SIZE : INTEGER := 11;
		INDEX_BIT_SIZE             : INTEGER := 3;
		PALLET_BIT_SIZE            : INTEGER := 11;
		RGB_BIT_AMOUNT             : INTEGER := 12
	);
	PORT (
        -- inputs
        reset, clk       : IN  STD_LOGIC;
        --AdressIn         : IN unsigned(ENTITY_AMOUNT * (ENTITY_ROM_ADRESS_BIT_SIZE) - 1 DOWNTO 0); 
        AdressIn         : IN unsigned(((ENTITY_AMOUNT * (ENTITY_ROM_ADRESS_BIT_SIZE + 1)) - 1) DOWNTO ((1-1) * ENTITY_ROM_ADRESS_BIT_SIZE)); 
        RGBOut           : OUT unsigned (RGB_BIT_AMOUNT - 1 DOWNTO 0)
	);
END EntityCOEAdressSelector;

ARCHITECTURE Behavioral OF EntityCOEAdressSelector IS
	SIGNAL AdressOut : unsigned(Entity_ROM_ADRESS_BIT_SIZE - 1 DOWNTO 0);
	SIGNAL AdressTransparent : unsigned(Entity_ROM_ADRESS_BIT_SIZE - 1 DOWNTO 0);
	SIGNAL IndexNr   : STD_LOGIC_VECTOR(INDEX_BIT_SIZE - 1 DOWNTO 0);
	SIGNAL PalletNr  : unsigned(PALLET_BIT_SIZE - 1 DOWNTO 0);

	COMPONENT Entity_ROM IS
		PORT (
			clka  : IN  STD_LOGIC;
			addra : IN  STD_LOGIC_VECTOR (Entity_ROM_ADRESS_BIT_SIZE - 1 DOWNTO 0);
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
	Entity_ROM0 : Entity_ROM PORT MAP(
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

	PROCESS (reset, clk)
	BEGIN
		IF (reset = '1') THEN
			AdressOut <= (OTHERS => '0');
			PalletNr  <= (OTHERS => '0');

		ELSIF (rising_edge (clk)) THEN
			AdressOut <= (OTHERS => '0');
			PalletNr  <= (OTHERS => '0'); --todo add
			
            -- 1 upto and including (ENTITY_AMOUNT)
            FOR count IN 1 TO ENTITY_AMOUNT LOOP
                -- if address is not transparrent pixel (1111111111)
                if (AdressIn((count * ENTITY_ROM_ADRESS_BIT_SIZE) - 1 DOWNTO ((count -1) * ENTITY_ROM_ADRESS_BIT_SIZE)) /= AdressTransparent) then
                    AdressOut <= AdressIn((count * ENTITY_ROM_ADRESS_BIT_SIZE) - 1 DOWNTO ((count -1) * ENTITY_ROM_ADRESS_BIT_SIZE));
                    exit;
                end if;
	        END loop;
		END IF;
	END PROCESS;
END Behavioral;