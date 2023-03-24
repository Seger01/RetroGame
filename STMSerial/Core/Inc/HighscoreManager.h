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
	int getCurrentScore();
	int getAllTimeHighscore();
	void setAllTimeHighscore(int score);

private:
	bool saveHighscoreInFlash();
	int getHighscoreInFlash();

	int currentScore = 0;

	uint8_t allTimeHighscore = 0;
};

extern HighscoreManager highscoreManager;

#endif /* SRC_HIGHSCOREMANAGER_H_ */
