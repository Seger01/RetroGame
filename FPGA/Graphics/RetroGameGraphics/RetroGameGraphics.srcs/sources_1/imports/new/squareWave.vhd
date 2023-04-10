LIBRARY IEEE;
USE IEEE.STD_LOGIC_1164.ALL;

ENTITY squareWave IS
	PORT (
		CLK           : IN  STD_LOGIC;
		noteIndicator : IN  STD_LOGIC_VECTOR (5 DOWNTO 0);
		toggle        : IN  STD_LOGIC;
		enable        : OUT STD_LOGIC;
		PWM           : OUT STD_LOGIC
	);
END squareWave;

ARCHITECTURE Behavioral OF squareWave IS

	SIGNAL pwmsignal             : STD_LOGIC                 := '0';
	SIGNAL lastToggle            : STD_LOGIC                 := '0';
	SIGNAL soundEnable           : STD_LOGIC                 := '0';

	SIGNAL invert                : STD_LOGIC                 := '0';
	SIGNAL normalizeCounterLimit : INTEGER RANGE 0 TO 150000 := 0;

	SIGNAL setAttackRoof         : INTEGER RANGE 0 TO 150000 := 0;

	SIGNAL attack                : INTEGER RANGE 0 TO 150000 := 0;
	SIGNAL attackRoof            : INTEGER RANGE 0 TO 150000 := 0;
	SIGNAL attackFloor           : INTEGER RANGE 0 TO 50000  := 0;
	SIGNAL attackGain            : INTEGER RANGE 0 TO 10000  := 0; -- the more you add 

	SIGNAL timeNormalizer        : INTEGER RANGE 0 TO 150000 := 0;
	SIGNAL timeCounter           : INTEGER RANGE 0 TO 50000  := 0;
	SIGNAL timerLimit            : INTEGER RANGE 0 TO 50000  := 0;
	SIGNAL setTimerLimit         : INTEGER RANGE 0 TO 50000  := 0;
BEGIN
	--
	BGM : PROCESS (clk)
	BEGIN
		IF rising_edge(clk) THEN
			-- set signal
			soundEnable           <= soundEnable;
			pwmsignal             <= pwmsignal;
			lastToggle            <= lastToggle;
			invert                <= invert;
			normalizeCounterLimit <= normalizeCounterLimit;
			setAttackRoof         <= setAttackRoof;
			attack                <= attack;
			attackRoof            <= attackRoof;
			attackFloor           <= attackFloor;
			attackGain            <= attackGain;
			timeNormalizer        <= timeNormalizer;
			timeCounter           <= timeCounter;
			timerLimit            <= timerLimit;
			setTimerLimit         <= setTimerLimit;
			
			-- set output
			enable                <= soundEnable;
			PWM                   <= '0';		
			
			-- set signal
			lastToggle            <= toggle;				
			timerLimit <= setTimerLimit;

			IF toggle = '1' AND lastToggle = '0' THEN
				IF soundEnable = '0' THEN
					timeCounter <= 0;
					attack      <= 0;
					attackRoof  <= setAttackRoof;
				END IF;
			END IF;

			CASE noteIndicator IS
				WHEN "100000" =>
					normalizeCounterLimit <= 150000; -- player death
					invert                <= '0';
					setAttackRoof         <= 50000;
					attackGain            <= 5000;
					attackFloor           <= 1000;
					setTimerLimit         <= 1500;
				WHEN "010000" =>
					normalizeCounterLimit <= 2666; -- shoot
					invert                <= '0';
					setAttackRoof         <= 10000;
					attackGain            <= 5000;
					attackFloor           <= 1000;
					setTimerLimit         <= 1000;
					invert                <= '0';
				WHEN "001000" =>
					normalizeCounterLimit <= 4000; -- walk
					invert                <= '0';
					setAttackRoof         <= 20000;
					attackGain            <= 2000;
					attackFloor           <= 5000;
					setTimerLimit         <= 500;

				WHEN "000100" =>
					normalizeCounterLimit <= 4500; -- powerup
					invert                <= '1';
					setAttackRoof         <= 50000;
					attackGain            <= 100;
					attackFloor           <= 5000;
					setTimerLimit         <= 5000;
				WHEN "000010" =>
					normalizeCounterLimit <= 1000; -- player death
					invert                <= '0';
					setAttackRoof         <= 50000;
					attackGain            <= 5000;
					attackFloor           <= 1000;
					setTimerLimit         <= 50000;
				WHEN "000001" =>
					normalizeCounterLimit <= 4500; -- hit
					invert                <= '1';
					setAttackRoof         <= 50000;
					attackGain            <= 100;
					attackFloor           <= 1000;
					setTimerLimit         <= 1000;
				WHEN "110000" =>
					normalizeCounterLimit <= 4500; -- powerup
					invert                <= '0';
					setAttackRoof         <= 50000;
					attackGain            <= 100;
					attackFloor           <= 5000;
					setTimerLimit         <= 5000;
				WHEN OTHERS => attack <= 0;
			END CASE;

			-- normalizes pwm to 5000
			IF timeNormalizer >= normalizeCounterLimit THEN
				timeNormalizer <= 0;
				timeCounter    <= timeCounter + 1;
			ELSE
				timeNormalizer <= timeNormalizer + 1;
			END IF;

			-- sets timer depending on component, timer is used to set how long a SFX lasts
			IF timeCounter >= timerLimit THEN
				soundEnable <= '0';
			ELSE
				soundEnable <= '1';
			END IF;

			IF soundEnable = '1' THEN
				-- rising square
				IF invert = '1' THEN

					IF attack >= attackRoof THEN
						IF attackRoof <= attackFloor THEN
							attackRoof    <= setAttackRoof;
						END IF;
						attack     <= 0;
						attackRoof <= attackRoof - attackGain;
					ELSE
						attack <= attack + 1;
					END IF;
				ELSE
					-- falling square
					IF attack >= attackRoof THEN
						IF attackRoof <= attackFloor THEN
							attackRoof    <= setAttackRoof;
						END IF;
						attack     <= 0;
						attackRoof <= attackRoof + attackGain;
					ELSE
						attack <= attack + 1;
					END IF;
				END IF;

				-- toggles pwm signal
				IF pwmSignal = '1' THEN
					PWM <= '1';
				ELSE
					PWM <= '0';
				END IF;

				-- sub loop counter toggles pwm (duty cycle)
				IF attack >= attackRoof THEN
					IF pwmSignal = '1' THEN
						pwmSignal <= '0';
					ELSE
						pwmSignal <= '1';
					END IF;
				END IF;
			END IF;
		END IF;
	END PROCESS;
END Behavioral;