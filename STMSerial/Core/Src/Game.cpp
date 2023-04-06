/*
 * Game.cpp
 *
 *  Created on: 8 Mar 2023
 *      Author: coole
 */

#include "config.h"

#include "Game.h"

#include "HighscoreManager.h"

HighscoreManager highscoreManager;

Game::Game() {
	// TODO Auto-generated constructor stub

}

Game::~Game() {
	// TODO Auto-generated destructor stub
}

Game::Game(SPI_HandleTypeDef *hspi1) {
	this->hspi1 = hspi1;

	communication = new Communication(hspi1);

	entityManager = new EntityManager(&collidableTiles, &spawnPoints);

}

void Game::setup() {
	entityManager->spawnPlayer(112, 100);

	entityManager->spawnEntities(1, 1, 2);
	entityManager->getEntities()[0]->setTexture(2);

	//currentLevel = highscoreManager.getAllTimeHighscore();
	currentLevel = 1;
	levelManager.setLevel(1);
}

void Game::run() {

	static long long lastShot = 0;
	static long long lastLevelSwitch = 0;

	bool playerShoot = false;
	static bool entityUpdate = false;

	static int remainingEnemies = 0;

	Entity **entities;

	Entity *entitiesArray[50];

	uint8_t inputs = 0;

	switch (currentState) {
	case Reset:
		currentState = Startup;
		break;
	case Startup:
		currentState = MainMenu;
		break;
	case SwitchingLevels:
		entities = entityManager->getEntities();

		entities[0]->moveY(1);

		if (xTaskGetTickCount() > timeForLevelSwitch + lastLevelSwitch) {
			currentState = PlayingLevel;
			levelManager.getCollidables(&collidableTiles);
			levelManager.getSpawnpoints(&spawnPoints);
			entityManager->updateTiles(&collidableTiles);
		}
		currentState = PlayingLevel;
		levelManager.getCollidables(&collidableTiles);
		levelManager.getSpawnpoints(&spawnPoints);
		entityManager->updateTiles(&collidableTiles);

		break;
	case PlayingLevel:

		static long long spawnTimer = 0;
//
		inputs = inputManager.readInput();
//
		if ((inputs & (1 << 4)) >> 4) {
			if (xTaskGetTickCount() >= lastShot + timeBetweenShots) {
				playerShoot = true;
				lastShot = xTaskGetTickCount();
			}
		}
//
		if ((inputs & (1 << 5)) >> 5) {
			if (xTaskGetTickCount() >= lastLevelSwitch + 50) {
				currentLevel = !currentLevel;

				lastLevelSwitch = xTaskGetTickCount();
				highscoreManager.setAllTimeHighscore(currentLevel);
			}
		}

		entityManager->playerAction((inputs & (1 << 0)) >> 0, (inputs & (1 << 1)) >> 1, (inputs & (1 << 2)) >> 2, (inputs & (1 << 3)) >> 3,playerShoot);

		if (entityUpdate) {
			entityManager->updateEntities();
			entityUpdate = !entityUpdate;
		} else {
			entityUpdate = !entityUpdate;
		}

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
		lastLevelSwitch = xTaskGetTickCount();

		currentState = SwitchingLevels;
		currentLevel = 1;
		levelManager.switchLevel(currentLevel);
		levelManager.getCollidables(&collidableTiles);
		levelManager.getSpawnpoints(&spawnPoints);
		break;
	default:

		break;
	}

	communication->sendBoth(levelManager.getMap(), entityManager->getEntities());

	//levelManager.switchLevel(currentLevel);

}
