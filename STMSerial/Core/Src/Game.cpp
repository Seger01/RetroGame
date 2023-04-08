/*
 * Game.cpp
 *
 *  Created on: 8 Mar 2023
 *      Author: coole
 */

#include "config.h"

#include "Game.h"

#include "HighscoreManager.h"

#include "SoundManager.h"

SoundManager soundManager;

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

	//entityManager->spawnEntities(1, 1, 2);
	//entityManager->getEntities()[0]->setTexture(2);

	//currentLevel = highscoreManager.getAllTimeHighscore();

	//entityManager->spawnEntities(1, 1, 2);

}

void Game::run() {

	static long long lastShot = 0;
	static long long lastLevelSwitch = 0;

	static long long timeOfDeath = 0;

	bool playerShoot = false;
	static bool entityUpdate = false;

	static int remainingEnemies = 0;

	static int lastPlayerHealth = 0;

	Entity **entities;

	entities = entityManager->getEntities();

	uint8_t inputs = 0;

	switch (currentState) {
	case Reset:
		entities[0]->setHealth(5);
		lastPlayerHealth = entities[0]->getHealth();

		highscoreManager.setCurrentScore(0);

		currentLevel = 1;
		levelManager.switchLevel(currentLevel);
		entityManager->removeTiles();
		levelManager.getCollidables(&collidableTiles);
		entityManager->addTiles();
		levelManager.getSpawnpoints(&spawnPoints);




		currentState = MainMenu;
		break;
	case Startup:
		entityManager->spawnPlayer(112, 100);
		currentLevel = 1;
		levelManager.setLevel(currentLevel);
		currentState = Reset;
		break;
	case SwitchingLevels:
//		entities = entityManager->getEntities();
		levelManager.switchLevel(currentLevel);
		if (entities[0]->getPosX() < 120) {
			entities[0]->moveX(1);
		} else if (entities[0]->getPosX() > 120) {
			entities[0]->moveX(-1);
		}

		if (entities[0]->getPosY() < 120) {
			entities[0]->moveY(1);
		} else if (entities[0]->getPosY() > 120) {
			entities[0]->moveY(-1);
		}

		if (xTaskGetTickCount() > timeForLevelSwitch + lastLevelSwitch) {
			currentState = PlayingLevel;
			entityManager->removeTiles();
			levelManager.getCollidables(&collidableTiles);
			entityManager->addTiles();
			levelManager.getSpawnpoints(&spawnPoints);
		}
		break;
	case ShowDeath:
		static long long flashTimer = 0;
		static bool flashState = false;

		static long long currentTime = 0;

		currentTime = xTaskGetTickCount();

		if (xTaskGetTickCount() > timeOfDeath + 2000) {
			if (entities[0]->getHealth() == 0) {
				currentState = Reset;
				//entityManager->clear();
			} else {
				currentState = SwitchingLevels;
				lastLevelSwitch = xTaskGetTickCount();
				//entityManager->clear();

			}
		}

		if (xTaskGetTickCount() > flashTimer + 100) {
			Entity *entitiesCopy[50];
			for (int i = 0; i < 50; i++) {
				entitiesCopy[i] = entities[i];

			}
			flashTimer = xTaskGetTickCount();
			if (flashState == false) {
				flashState = true;
				entitiesCopy[0] = nullptr;
			} else {
				flashState = false;
			}
			communication->sendBoth(levelManager.getMap(), entitiesCopy);

		}
		return;
	case PlayingLevel:

		static long long spawnTimer = 0;

		inputs = inputManager.readInput();

		if ((inputs & (1 << 4)) >> 4) {
			if (xTaskGetTickCount() >= lastShot + timeBetweenShots) {
				//playerShoot = true;
				lastShot = xTaskGetTickCount();
				entities[0]->setHealth(entities[0]->getHealth() - 1);
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
			}
		}

		entityManager->playerAction((inputs & (1 << 0)) >> 0, (inputs & (1 << 1)) >> 1, (inputs & (1 << 2)) >> 2, (inputs & (1 << 3)) >> 3,
				playerShoot);

		if (entityUpdate) {
			entityManager->updateEntities();
			entityUpdate = !entityUpdate;
		} else {
			entityUpdate = !entityUpdate;
		}

		if (spawnTimer < xTaskGetTickCount()) {
			spawnTimer = xTaskGetTickCount() + timeBetweenEnemySpawns;
			//remainingEnemies += entityManager->spawnEntities(0, 0, remainingEnemies);
			//entityManager->spawnEntities(1, 1, 2);
			remainingEnemies -= 5;
			if (remainingEnemies < 0) {
				remainingEnemies = 0;

			}
		}

		if (entities[0]->getHealth() != lastPlayerHealth) {
			currentState = ShowDeath;
			timeOfDeath = xTaskGetTickCount();
		}
		lastPlayerHealth = entities[0]->getHealth();

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

		} else if ((inputs & (1 << 5)) >> 5 && xTaskGetTickCount() > lastLevelSwitch + timeBetweenMenuSwitch) {
			currentState = Credits;
			currentLevel = 0;

			levelManager.setLevel(currentLevel);

			soundManager.setSoundActive(1);
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
		if ((inputs & (1 << 5)) >> 5 && xTaskGetTickCount() > lastLevelSwitch + timeBetweenMenuSwitch) {
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
