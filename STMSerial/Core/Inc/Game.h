/*
 * Game.h
 *
 *  Created on: 8 Mar 2023
 *      Author: coole
 */

#ifndef SRC_GAME_H_
#define SRC_GAME_H_

#include "main.h"
#include "cmsis_os.h"

extern "C" {
#include "FreeRTOS.h"
#include "task.h"
}

#include "Entity.h"
#include "LevelManager.h"
#include "Communication.h"
#include "InputManager.h"


#include "entitymanager.h"

enum GameState {
	Reset, Startup, SwitchingLevels, PlayingLevel, MainMenu
};

class Game {
public:
	Game();
	Game(SPI_HandleTypeDef *hspi1);
	virtual ~Game();

	void run();

private:
	LevelManager levelManager;

	InputManager inputManager;

	Communication *communication;

	EntityManager *entityManager;



private:

	GameState currentState = Startup;

	std::vector<Tile*> collidableTiles;
	std::vector<Tile*> spawnPoints;

	SPI_HandleTypeDef *hspi1;
};

#endif /* SRC_GAME_H_ */
