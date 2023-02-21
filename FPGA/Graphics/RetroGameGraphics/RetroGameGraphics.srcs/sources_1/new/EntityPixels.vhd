LIBRARY IEEE;
USE IEEE.STD_LOGIC_1164.ALL;
USE IEEE.NUMERIC_STD.ALL;
--tooo: if sprite is bullit size is difrent
--todo: alles x2 voor naar vga output
ENTITY EntityPixels IS
	GENERIC
	(
		--
		PLUS_1_FOR_DEBUG               : INTEGER := 1;
		-- size of visible part screen
		HORIZONTAL_COUNT_VISIBLE_START : INTEGER := 144;
		VERTICAL_COUNT_VISIBLE_START   : INTEGER := 31;
		SCREAN_WIDTH                   : INTEGER := 640;
		SCREAN_HIGHT                   : INTEGER := 480;
		-- amount of tiles visible on screan
		ENTITY_AMOUNT                  : INTEGER := 50;
		ENTITY_X_BIT_SIZE              : INTEGER := 8;
		ENTITY_Y_BIT_SIZE              : INTEGER := 8;
		ENTITY_NUMMER_BIT_SIZE         : INTEGER := 6;
		ENTITY_PIXEL_HIGHT_AND_WITH    : INTEGER := 16;
		-- Offsets
		OFFSET_CLK_TO_VGA              : INTEGER := 1;
		OFFSET_CLK_TO_ROM              : INTEGER := 2;
		-- vga
		PIXEL_SCALING                  : INTEGER := 2
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
END EntityPixels;
ARCHITECTURE Behavioral OF EntityPixels IS
	COMPONENT AllEntitys IS
		PORT
		(
			clka  : IN  STD_LOGIC;
			addra : IN  STD_LOGIC_VECTOR(11 DOWNTO 0);
			douta : OUT STD_LOGIC_VECTOR(7 DOWNTO 0)
		);
	END COMPONENT;
	SIGNAL XVGA         : INTEGER                      := 0;
	SIGNAL YVGA         : INTEGER                      := 0;
	-- Entity
	SIGNAL entityRGB    : STD_LOGIC_VECTOR(7 DOWNTO 0) := (OTHERS => '0'); -- RGB value for tile
	SIGNAL entityAdress : STD_LOGIC_VECTOR(11 DOWNTO 0) := (OTHERS => '0'); -- address to read from 1 of all tile
BEGIN
	-- map ports
	AllEntitys0 : AllEntitys
	PORT MAP
	(
		clka  => clk,
		addra => entityAdress,
		douta => entityRGB
	);
	-- convert Xcount and Ycount to X,Y values on visible part of screen
	-- move XVGA and YVGA PIXEL_SCALING as slow to increase every pixel by PIXEL_SCALING size, so /PIXEL_SCALING
	-- add OFFSET_CLK_TO_VGA to compencate for clock signal timing difrence to VGA
	XVGA <= (to_integer(unsigned(Xcount)) - HORIZONTAL_COUNT_VISIBLE_START + OFFSET_CLK_TO_VGA) /PIXEL_SCALING;
	YVGA <= (to_integer(unsigned(Ycount)) - VERTICAL_COUNT_VISIBLE_START) /PIXEL_SCALING;
	PROCESS (reset, clk)
		VARIABLE vEntityXPosition    : NATURAL RANGE 0 TO 256                                                                                      := 0;
		VARIABLE vEntityYPosition    : NATURAL RANGE 0 TO 256                                                                                      := 0;
		VARIABLE vEntityVectorOffset : NATURAL RANGE 0 TO ((ENTITY_AMOUNT * (ENTITY_X_BIT_SIZE + ENTITY_Y_BIT_SIZE + ENTITY_NUMMER_BIT_SIZE)) - 1) := 0;
		VARIABLE vTemp               : INTEGER                                                                                                     := 0;
	BEGIN
		-- if reset
		IF (reset = '1') THEN
			-- default values
			-- and set color to black
			Rout         <= (OTHERS => '0');
			Gout         <= (OTHERS => '0');
			Bout         <= (OTHERS => '0');
			entityAdress <= (OTHERS => '0');
			debugOut     <= (OTHERS => '0');
			-- if clk rising_edge
		ELSIF rising_edge(clk) THEN
			-- default values for outputs, so output state is always defined
			-- set back ground collor
			Rout         <= Rin;
			Gout         <= Gin;
			Bout         <= Bin;
			entityAdress <= (OTHERS => '0'); --todo set transparrent pixel
			debugOut     <= (OTHERS => '0');
			-- loop for
			EntityLoop : FOR count IN 0 TO ENTITY_AMOUNT - 1 LOOP
				-- vector entity 0 => 49 by count    *     total entity size
				vEntityVectorOffset := count * (ENTITY_X_BIT_SIZE + ENTITY_Y_BIT_SIZE + ENTITY_NUMMER_BIT_SIZE);
				-- read x position      read vector entity 0 => 49 by count          +        x entity size -1                      downto     read vector entity 0 => 49 by count only
				vEntityXPosition    := to_integer (unsigned (dataVector(vEntityVectorOffset + ENTITY_X_BIT_SIZE - 1 DOWNTO vEntityVectorOffset)));
				-- read y position      read vector entity 0 => 49 by count          +        x entity size -1 + y size             downto    read vector entity 0 => 49 by count  +    Y entity size only
				vEntityYPosition    := to_integer (unsigned (dataVector(vEntityVectorOffset + ENTITY_X_BIT_SIZE + ENTITY_Y_BIT_SIZE - 1 DOWNTO vEntityVectorOffset + ENTITY_X_BIT_SIZE)));
				-- if entity pixel is going to be on screen.
				-- compare to be next vga location is inside currend (count) entity

				-- top left pixel of entity, X
				-- to be next vga location  >= count x position
				-- current vga x pixel with offset to vga entity   +   offset to read rom   >=     current x position entity
				IF ((((XVGA + OFFSET_CLK_TO_ROM)            >= vEntityXPosition)
					-- top left pixel of entity, Y
					-- to be next vga location  >= count y position
					-- current vga y does not increment fast enoug to add offset                >=      current y position entity
					AND (YVGA                               >= vEntityYPosition)
					-- botom left pixel of entity, X
					-- to be next vga location  < count y position + size entity
					--                              add entity with and hight to check if total exends beond
					AND ((XVGA + OFFSET_CLK_TO_ROM)         < (ENTITY_PIXEL_HIGHT_AND_WITH + vEntityXPosition))
					-- botom right pixel of entity, Y
					-- to be next vga location  < count y position + size entity
					AND (YVGA                               < (ENTITY_PIXEL_HIGHT_AND_WITH + vEntityYPosition)))
					OR   debugIn(0) = '1')
					THEN
					--todo: if entity is bullet use custom entity size
					IF (false) THEN
						-- todo: add sitch case for check and if bullet going to be displayd no break;
						entityAdress <= (OTHERS => '0');
						EXIT;
					ELSE
						-- get entity address to read
						--                                  get entity to display
						-- use of vtemp becouse vivado synthesis failed 12 does not fid in 9 and resize does not work
						--                              get entity number
						IF (debugIn(1) = '1') THEN
						      -- get entitie number
						    vTemp := to_integer(unsigned (dataVector(vEntityVectorOffset + ENTITY_X_BIT_SIZE + ENTITY_Y_BIT_SIZE + ENTITY_NUMMER_BIT_SIZE - 1 DOWNTO vEntityVectorOffset + ENTITY_X_BIT_SIZE + ENTITY_Y_BIT_SIZE)));
						    -- calculate offset of entities by multiply by size of an entity
						    vTemp := vTemp * (ENTITY_PIXEL_HIGHT_AND_WITH * ENTITY_PIXEL_HIGHT_AND_WITH);						    
                            -- +   xy position of entity to color relative to entity start on screen;
                            vTemp := vTemp + ((YVGA - vEntityYPosition) * ENTITY_PIXEL_HIGHT_AND_WITH);
                            -- + X value
                             vTemp := vTemp + XVGA - vEntityXPosition;
                            -- add offset to read from rom
                            vTemp := vTemp + OFFSET_CLK_TO_ROM;
                            
						ELSif (debugIn(5) = '1') then
							vTemp := to_integer(unsigned (dataVector(vEntityVectorOffset + ENTITY_X_BIT_SIZE + ENTITY_Y_BIT_SIZE + ENTITY_NUMMER_BIT_SIZE - 1 DOWNTO vEntityVectorOffset + ENTITY_X_BIT_SIZE + ENTITY_Y_BIT_SIZE))
								-- multiply by size of an entity
								* (ENTITY_PIXEL_HIGHT_AND_WITH * ENTITY_PIXEL_HIGHT_AND_WITH)
								-- +   xy position of entity to color relative to entity start on screen;
								+ (YVGA - vEntityYPosition) * ENTITY_PIXEL_HIGHT_AND_WITH
								-- + X value
								+ XVGA - vEntityXPosition
								-- add offset to read from rom
								+ OFFSET_CLK_TO_ROM);
                        else
							vTemp := (0
								-- +   xy position of entity to color relative to entity start on screen;
								+ (YVGA - vEntityYPosition) * ENTITY_PIXEL_HIGHT_AND_WITH
								-- + X value
								+ XVGA - vEntityXPosition
								-- add offset to read from rom
								+ OFFSET_CLK_TO_ROM);
						END IF;
						entityAdress <= STD_LOGIC_VECTOR(to_unsigned (vTemp, entityAdress'length));
						-- exit EntityLoop when pixel to read is sed on entityAdress.
						EXIT EntityLoop;
						EXIT;
					END IF;
				END IF;
			END LOOP;
			-- if currend displayed pixel is in visible part of screen.
			IF ((XVGA >= 0) AND (YVGA >= 0) AND (XVGA < (SCREAN_WIDTH /PIXEL_SCALING)) AND (YVGA < (SCREAN_HIGHT /PIXEL_SCALING))) THEN
				--display objects pixels that are not transparrent color
				IF (entityRGB /= X"00") THEN
					-- sprite RGB data
					-- Bit 7 6 5 4 3 2 1 0
					-- Data R R R G G G B B
                    Rout <=         entityRGB(7 downto 5) & entityRGB(7);
                    Gout <=         entityRGB(4 downto 2) & entityRGB(4);
                    Bout <= "0" &   entityRGB(1 downto 0) & entityRGB(1);      
				END IF;
			END IF;
		END IF;
	END PROCESS;
END Behavioral;