/*
 * Game.cpp
 *
 *  Created on: 8 Mar 2023
 *      Author: coole
 */

#include "config.h"

#include "Game.h"

Game::Game() {
	// TODO Auto-generated constructor stub

}

Game::~Game() {
	// TODO Auto-generated destructor stub
}

Game::Game(SPI_HandleTypeDef *hspi1) {
	this->hspi1 = hspi1;

	communication = new Communication(hspi1);

	levelManager.getCollidables(&collidableTiles);
	levelManager.getSpawnpoints(&spawnPoints);
	entityManager = new EntityManager(&collidableTiles, &spawnPoints);
}

void Game::run() {
	static int remainingEnemies = 0;

	uint8_t inputs = 0;

	switch (currentState) {
	case Reset:
		currentState = Startup;
		break;
	case Startup:
		currentState = SwitchingLevels;
		break;
	case SwitchingLevels:

		currentState = PlayingLevel;
		remainingEnemies = 50;
		break;
	case PlayingLevel:

		static long long spawnTimer = 0;


		inputs = inputManager.readInput();

		entityManager->playerAction((HAL_GPIO_ReadPin(GPIOC, GPIO_PIN_13)), (inputs & (1 << 1)) >> 1, (inputs & (1 << 2)) >> 2, (inputs & (1 << 3)) >> 3,
				(inputs & (1 << 4)) >> 4);

		if (spawnTimer < xTaskGetTickCount()) {
			spawnTimer = xTaskGetTickCount() + timeBetweenEnemySpawns;
			//remainingEnemies += entityManager->spawnEntities(0, 0, remainingEnemies);
			entityManager->spawnEntities(0, 0, 5);
			remainingEnemies -= 5;
			if (remainingEnemies < 0){
				remainingEnemies = 0;

			}
		}

		break;

	case MainMenu:
		currentState = Startup;
		break;
	default:

		break;
	}

	communication->sendBoth(levelManager.getMap(), entityManager->getEntities());
}
