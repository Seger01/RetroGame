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

	entityManager->spawnPlayer(112, 100, 3, 20, 10);

	entityManager->spawnEntities(1, 1, 2);
	entityManager->getEntities()[0]->setTexture(2);
}

void Game::run() {
	static int currentLevel = 0;
	static long long lastShot = 0;
	static long long lastLevelSwitch = 0;

	bool playerShoot = false;

	static int remainingEnemies = 0;

	Entity **entities;

	Entity *entitiesArray[50];

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

		if ((inputs & (1 << 4)) >> 4) {
			if (xTaskGetTickCount() >= lastShot + timeBetweenShots) {
				playerShoot = true;
				lastShot = xTaskGetTickCount();
			}
		}

		if ((inputs & (1 << 5)) >> 5) {
			if (xTaskGetTickCount() >= lastLevelSwitch + timeBetweenShots) {
				currentLevel = !currentLevel;
				lastLevelSwitch = xTaskGetTickCount();
			}
		}

		entityManager->playerAction((inputs & (1 << 0)) >> 0, (inputs & (1 << 1)) >> 1, (inputs & (1 << 2)) >> 2, (inputs & (1 << 3)) >> 3,
				playerShoot);
		//entityManager->playerAction(0, 0, !(HAL_GPIO_ReadPin(GPIOC, GPIO_PIN_13)), 0, 0);

//		entities = entityManager->getEntities();
//
//		for (int i = 0; i < 50; i++){
//			//if(entities[i] == nullptr) continue;
//			entitiesArray[i] = entities[i];
//		}
//
		entityManager->updateEntities();

		if (spawnTimer < xTaskGetTickCount()) {
			spawnTimer = xTaskGetTickCount() + timeBetweenEnemySpawns;
			//remainingEnemies += entityManager->spawnEntities(0, 0, remainingEnemies);
			entityManager->spawnEntities(1, 1, 2);
			remainingEnemies -= 5;
			if (remainingEnemies < 0) {
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

	levelManager.setLevel(currentLevel);

}
