/*
 * HighscoreManager.h
 *
 *  Created on: Mar 8, 2023
 *      Author: coole
 */

#ifndef SRC_HIGHSCOREMANAGER_H_
#define SRC_HIGHSCOREMANAGER_H_

#include "main.h"
#include "cmsis_os.h"

class HighscoreManager {
public:
	HighscoreManager();
	virtual ~HighscoreManager();

	void addToScore(int amount);
	void setCurrentScore(int amount);
	int getCurrentScore();
	uint8_t* getAllTimeHighscore();
	void setAllTimeHighscore(uint8_t score[4]);

private:
	bool saveHighscoreInFlash();
	void getHighscoreInFlash();

	int currentScore = 0;

	uint8_t allTimeHighscore[4] = {0};

	uint8_t allHighscores[20] = {0};
};

extern HighscoreManager highscoreManager;

#endif /* SRC_HIGHSCOREMANAGER_H_ */
