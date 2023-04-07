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

	currentLevel = 1;
	levelManager.setLevel(currentLevel);
	levelManager.getCollidables(&collidableTiles);
	levelManager.getSpawnpoints(&spawnPoints);
	entityManager = new EntityManager(&collidableTiles, &spawnPoints);
}

void Game::setup() {
	entityManager->spawnPlayer(112, 100);


	//entityManager->spawnEntities(1, 1, 2);
	//entityManager->getEntities()[0]->setTexture(2);

	//currentLevel = highscoreManager.getAllTimeHighscore();
	currentLevel = 1;
	levelManager.setLevel(currentLevel);

	//entityManager->spawnEntities(1, 1, 2);

}

void Game::run() {

	static long long lastShot = 0;
	static long long lastLevelSwitch = 0;

	bool playerShoot = false;
	static bool entityUpdate = false;

	static int remainingEnemies = 0;

	Entity **entities = entityManager->getEntities();

	uint8_t inputs = 0;

	switch (currentState) {
	case Reset:
		currentState = Startup;
		break;
	case Startup:
		currentState = MainMenu;
		break;
	case SwitchingLevels:
//		entities = entityManager->getEntities();
//		levelManager.switchLevel(currentLevel);
//		if (entities[0]->getPosX() < 120) {
//			entities[0]->setX(entities[0]->getPosX() + 1);
//		} else if (entities[0]->getPosX() > 120) {
//			entities[0]->setX(entities[0]->getPosX() - 1);
//		}
//
//		if (entities[0]->getPosY() < 120) {
//			entities[0]->setY(entities[0]->getPosY() + 1);
//		} else if (entities[0]->getPosY() > 120) {
//			entities[0]->setY(entities[0]->getPosY() - 1);
//		}


		if (xTaskGetTickCount() > timeForLevelSwitch + lastLevelSwitch) {
			currentState = PlayingLevel;
			entityManager->removeTiles();
			levelManager.getCollidables(&collidableTiles);
			entityManager->addTiles();
			levelManager.getSpawnpoints(&spawnPoints);

		}
		break;
	case PlayingLevel:

		static long long spawnTimer = 0;

		inputs = inputManager.readInput();

		if ((inputs & (1 << 4)) >> 4) {
			if (xTaskGetTickCount() >= lastShot + timeBetweenShots) {
				playerShoot = true;
				lastShot = xTaskGetTickCount();
				highscoreManager.addToScore(1);
			}
		} else if ((inputs & (1 << 5)) >> 5) {
			if (xTaskGetTickCount() >= lastLevelSwitch + 50) {
				if (currentLevel == 2) {
					currentLevel = 3;
				} else if (currentLevel == 3) {
					currentLevel = 2;
				}

				//entities[1] = new Boss(40, 40, 16, 16, 10, 1, 1);
				//entityManager->spawnEntities(1, 1, 1);
				currentState = SwitchingLevels;

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
			//remainingEnemies += entityManager->spawnEntities(1, remainingEnemies);
			entityManager->spawnEntities(2, 1);
			remainingEnemies -= 5;
			if (remainingEnemies < 0) {
				remainingEnemies = 0;

			}
		}

		break;
	case MainMenu:
		inputs = inputManager.readInput();

		if ((inputs & (1 << 4)) >> 4) {
			currentState = SwitchingLevels;
			currentLevel = 2;
			levelManager.switchLevel(currentLevel);
			entityManager->removeTiles();
			levelManager.getCollidables(&collidableTiles);
			entityManager->addTiles();
			levelManager.getSpawnpoints(&spawnPoints);
			lastLevelSwitch = xTaskGetTickCount();

		} else if ((inputs & (1 << 5)) >> 5 && xTaskGetTickCount() > lastLevelSwitch + 100) {
			currentState = Credits;
			currentLevel = 0;

			levelManager.setLevel(currentLevel);
			//levelManager.getCollidables(&collidableTiles);
			//levelManager.getSpawnpoints(&spawnPoints);
			//entitymanager.updateTiles ofzxo

			lastLevelSwitch = xTaskGetTickCount();
		} else {
			entityManager->playerAction((inputs & (1 << 0)) >> 0, (inputs & (1 << 1)) >> 1, (inputs & (1 << 2)) >> 2,
					(inputs & (1 << 3)) >> 3, playerShoot);
		}

		break;

	case Credits:
		inputs = inputManager.readInput();
		if ((inputs & (1 << 5)) >> 5 && xTaskGetTickCount() > lastLevelSwitch + 100) {
			currentState = MainMenu;
			currentLevel = 1;
			levelManager.setLevel(currentLevel);
			//levelManager.getCollidables(&collidableTiles);
			//levelManager.getSpawnpoints(&spawnPoints);
			//entitymanager.updateTiles ofzxo

			lastLevelSwitch = xTaskGetTickCount();
		} else {
			entityManager->playerAction((inputs & (1 << 0)) >> 0, (inputs & (1 << 1)) >> 1, (inputs & (1 << 2)) >> 2,
					(inputs & (1 << 3)) >> 3, playerShoot);
		}

		break;
	default:

		break;
	}

	communication->sendBoth(levelManager.getMap(), entityManager->getEntities());

	//levelManager.switchLevel(currentLevel);

}
