/*
 * Game.cpp
 *
 *  Created on: 8 Mar 2023
 *      Author: coole
 */

#include <cstring>
#include <cstdlib>

#include "config.h"

#include "Game.h"

#include "Converter.h"

#include "HighscoreManager.h"

#include "SoundManager.h"

#define joystickLeft   	0b00000100
#define joystickRight 	0b00001000
#define joystickUp 		0b00000010
#define joystickDown 	0b00000001

#define buttonB 		0b00010000
#define buttonA 		0b00100000

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
	//while(1){
//	{
//		uint8_t score[4] = { 23, 23, 23, 0 };
//
//		//for (int i = 0; i < 5; i++)
//		highscoreManager.setAllTimeHighscore(score);
//	}
//	{
//		uint8_t score[4] = { 21, 23, 23, 0 };
//
//		//for (int i = 0; i < 5; i++)
//		highscoreManager.setAllTimeHighscore(score);
//	}
//	{
//		uint8_t score[4] = { 0, 10, 7, 8 };
//
//		//for (int i = 0; i < 5; i++)
//		highscoreManager.setAllTimeHighscore(score);
//	}
//
//	//}
//	uint8_t* highscoresPointer = highscoreManager.getAllTimeHighscore();
//
//	uint8_t highscores[20] = {0};
//
//	for (int i = 0; i < 20; i++){
//		highscores[i] = highscoresPointer[i];
//	}

//	uint8_t *received = highscoreManager.getAllTimeHighscore();
//
//	uint8_t received1 = received[0];
//	uint8_t received2 = received[1];
//	uint8_t received3 = received[2];
//	uint8_t received4 = received[3];
	for (int i = 0; i < 50; i++) {
		emptyEntities[i] = nullptr;
	}

}

void Game::run() {

	static long long lastShot = 0;
	static long long lastLevelSwitch = 0;

	static long long timeOfDeath = 0;

	bool playerShoot = false;
	static bool entityUpdate = false;

	static int lastPlayerHealth = 0;

	Entity **entities;

	entities = entityManager->getEntities();

	uint8_t inputs = inputManager.readInput();

	Converter converter;

	switch (currentState) {
	case Reset:
		entities[0]->setHealth(startingHp);
		lastPlayerHealth = entities[0]->getHealth();

		highscoreManager.setCurrentScore(0);

		currentLevel = 1;
		levelManager.switchLevel(currentLevel);

		remainingEnemies = ((currentLevel - 2) * 15) + 10;

		entityManager->removeTiles();
		levelManager.getCollidables(&collidableTiles);
		entityManager->addTiles();
		levelManager.getSpawnpoints(&spawnPoints);

		currentState = MainMenu;
		break;
	case Startup:
		entityManager->spawnPlayer(120, 120);
		currentLevel = 1;
		levelManager.setLevel(currentLevel);
		currentState = Reset;
		break;
	case SwitchingLevels:
//		entities = entityManager->getEntities();
		if (currentLevel < 2) {
			levelManager.switchLevel(currentLevel);
		} else {
			levelManager.switchLevel(((currentLevel - 2) % 6) + 2);
		}
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

		if (xTaskGetTickCount() > timeOfDeath + 2000) {
			if (entities[0]->getHealth() <= 0) {
				if (highscoreManager.getCurrentScore() > highscoreManager.getAllTimeHighscore()[3]) {
					currentState = GivingNameForHighscore;
				} else {
					currentState = Reset;
				}
				entityManager->clear();	///////////////////////////////////////----------------------------------------------------------------------
			} else {
				currentState = SwitchingLevels;
				lastLevelSwitch = xTaskGetTickCount();
				entityManager->clear();

			}
		}
		{
			Entity *entitiesCopy[50];
			for (int i = 0; i < 50; i++) {
				entitiesCopy[i] = entities[i];
			}

			if (xTaskGetTickCount() % 200 > 100) {
				entitiesCopy[0] = nullptr;
			}

			communication->sendBoth(levelManager.getMap(), entitiesCopy);
		}
		return;
	case GivingNameForHighscore: {
		static uint8_t screen[15][15] = { 0 };

		static uint8_t chars[3] = { 0 };

		static int gunIndex = 0;

		static uint8_t lastInputs = 0;

		std::memcpy(screen, highscoreScreen, 225 * sizeof(uint8_t));

		if (inputs != lastInputs) {
			if ((inputs & (1 << 0)) >> 0) {
				if (gunIndex < 2) {
					gunIndex++;
				}
			} else if ((inputs & (1 << 1)) >> 1) {
				if (gunIndex > 0) {
					gunIndex--;
				}
			} else if ((inputs & (1 << 4)) >> 4) {
				chars[gunIndex]++;

				if (chars[gunIndex] > 25) {
					chars[gunIndex] = 0;
				}
			} else if ((inputs & (1 << 5)) >> 5) {
				uint8_t score[4] = { chars[0], chars[1], chars[2], (uint8_t) highscoreManager.getCurrentScore() };

				highscoreManager.setAllTimeHighscore(score);
				currentState = Reset;
				while (inputManager.readInput() != 0) {

				}
			}
		}
		lastInputs = inputs;

		screen[9][7] = converter.characterToIndex(chars[0] + 'a');
		screen[10][7] = converter.characterToIndex(chars[1] + 'a');
		screen[11][7] = converter.characterToIndex(chars[2] + 'a');

		if ((xTaskGetTickCount() % 400) > 200) {
			screen[gunIndex + 9][6] = 69;
		}

		communication->sendBoth(screen[0], emptyEntities);
	}
		return;
	case PlayingLevel:
		static long long spawnTimer = 0;

		inputs = inputManager.readInput();

		checkForCheats(inputs);

		if ((inputs & (1 << 4)) >> 4) {
			if (xTaskGetTickCount() >= lastShot + timeBetweenShots) {
				playerShoot = true;
				lastShot = xTaskGetTickCount();
				//entities[0]->setHealth(entities[0]->getHealth() - 1);
			}
		} else if ((inputs & (1 << 5)) >> 5) {
			if (xTaskGetTickCount() >= lastLevelSwitch + 50) {
//				if (currentLevel == 2) {
//					currentLevel = 3;
//				} else if (currentLevel == 3) {
//					currentLevel = 2;
//				}
//
//				//entities[1] = new Boss(40, 40, 16, 16, 10, 1, 1);
//				//entityManager->spawnEntities(1, 1, 1);
//				currentState = SwitchingLevels;
//
//				lastLevelSwitch = xTaskGetTickCount();
			}
		}

		entityManager->playerAction((inputs & (1 << 0)) >> 0, (inputs & (1 << 1)) >> 1, (inputs & (1 << 2)) >> 2, (inputs & (1 << 3)) >> 3,
				playerShoot);
		entityManager->updateEntities();
		/*if (entityUpdate) {

		 //entityManager->spawnBoss();
		 entityUpdate = !entityUpdate;
		 } else {
		 entityUpdate = !entityUpdate;
		 }*/

		static bool bossSpawnEnemies = false;

		if (spawnTimer < xTaskGetTickCount()) {
			spawnTimer = xTaskGetTickCount() + timeBetweenEnemySpawns;
			if (remainingEnemies > 0) {
				if ((currentLevel - 2) % 6 == 0) {
					//entityManager.spawnboss ofzo
					if(entityManager->getEntities()[1]->getHealth() % 5 == 0 && bossSpawnEnemies == false){
						bossSpawnEnemies = true;
						entityManager->spawnEntities(1,8);
					} else if (entityManager->getEntities()[1]->getHealth() % 5 != 0){
						bossSpawnEnemies = false;
					}
				} else {
					int amountOfEnemies = ((std::rand() % 5) + (currentLevel - 2));

					if (amountOfEnemies > remainingEnemies)
						amountOfEnemies = remainingEnemies;

					entityManager->spawnEntities(1, amountOfEnemies);

					remainingEnemies -= amountOfEnemies;
				}

			}
		}

		if (remainingEnemies <= 0 && entityManager->countEnemies() == 0) {
			currentLevel++;

			currentState = SwitchingLevels;
			remainingEnemies = ((currentLevel - 2) * 15) + 10;

			lastLevelSwitch = xTaskGetTickCount();
		}

		if (entities[0]->getHealth() < lastPlayerHealth) {
			currentState = ShowDeath;
			timeOfDeath = xTaskGetTickCount();
		}
		lastPlayerHealth = entities[0]->getHealth();

		break;
	case MainMenu:
		static uint8_t lastInputs = 0;
		static int gunIndex = 0;

		inputs = inputManager.readInput();

//		if ((inputs & (1 << 5)) >> 5) {
//			currentState = SwitchingLevels;
//			currentLevel = 2;
//			levelManager.switchLevel(currentLevel);
//			entityManager->removeTiles();
//			levelManager.getCollidables(&collidableTiles);
//			entityManager->addTiles();
//			levelManager.getSpawnpoints(&spawnPoints);
//			lastLevelSwitch = xTaskGetTickCount();
//
//		} else if ((inputs & (1 << 4)) >> 4 && xTaskGetTickCount() > lastLevelSwitch + timeBetweenMenuSwitch) {
//			currentState = Credits;
//			currentLevel = 0;
//
//			levelManager.setLevel(currentLevel);
//
//			soundManager.setSoundActive(0);
//			//levelManager.getCollidables(&collidableTiles);
//			//levelManager.getSpawnpoints(&spawnPoints);
//			//entitymanager.updateTiles ofzxo
//
//			lastLevelSwitch = xTaskGetTickCount();
//		}

		static uint8_t menuScreen[15][15] = { 0 };

		std::memcpy(menuScreen, levelManager.getMap(), 225 * sizeof(uint8_t));

		if (inputs != lastInputs) {
			if ((inputs & (1 << 0)) >> 0) {
				if (gunIndex < 2) {
					gunIndex++;
				}
			} else if ((inputs & (1 << 1)) >> 1) {
				if (gunIndex > 0) {
					gunIndex--;
				}
			}
		} else if ((inputs & (1 << 5)) >> 5 && xTaskGetTickCount() > lastLevelSwitch + timeBetweenMenuSwitch) {
			if (gunIndex == 0) {
				currentState = SwitchingLevels;
				currentLevel = 2;
				levelManager.switchLevel(currentLevel);
				entityManager->removeTiles();
				levelManager.getCollidables(&collidableTiles);
				entityManager->addTiles();
				levelManager.getSpawnpoints(&spawnPoints);
				lastLevelSwitch = xTaskGetTickCount();
			} else if (gunIndex == 1) {
				currentState = Credits;
				currentLevel = 0;

				levelManager.setLevel(currentLevel);

				soundManager.setSoundActive(0);
				//levelManager.getCollidables(&collidableTiles);
				//levelManager.getSpawnpoints(&spawnPoints);
				//entitymanager.updateTiles ofzxo

				lastLevelSwitch = xTaskGetTickCount();
			} else if (gunIndex == 2) {
				showAllHighscores();
			}
		}

		if ((xTaskGetTickCount() % 400) > 200) {
			menuScreen[(gunIndex * 2) + 6][2] = 69;
		}

		communication->sendBoth(menuScreen[0], emptyEntities);

		lastInputs = inputs;

		return;
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

void Game::checkForCheats(uint8_t inputs) {
	static uint8_t lastInputsBuffer[8] = { 0 };
	static uint8_t lastInputs = 0;

	uint8_t healthCheat[8] = { buttonB, buttonA, joystickLeft, joystickRight, joystickUp, joystickDown };

	if (inputs != 0) {
		if (inputs != lastInputs) {
			for (int i = 7; i > 0; i--) {
				lastInputsBuffer[i] = lastInputsBuffer[i - 1];
			}

			lastInputsBuffer[0] = inputs;

			for (int i = 0; i < 4; i++) {
				if (healthCheat[i] == lastInputsBuffer[i]) {
					if (i == 3) {
						entityManager->getEntities()[0]->setHealth(entityManager->getEntities()[0]->getHealth() + 10);
					}
				} else {
					break;
				}
			}
		}
		lastInputs = inputs;
	}

}

void Game::showAllHighscores() {
	uint8_t highscoresScreen[15][15] = { 0 };
	Converter converter;
	for (int i = 0; i < 15; i++) {
		for (int j = 0; j < 15; j++) {
			highscoresScreen[i][j] = 73;
		}
	}

	uint8_t *highscores = highscoreManager.getAllTimeHighscore();

	for (int i = 0; i < 5; i++) {
		highscoresScreen[(i * 2) + 1][2] = converter.intToIndex(i + 1);

		highscoresScreen[(i * 2) + 1][4] = converter.characterToIndex(highscores[(i * 4)] + 'a');
		highscoresScreen[(i * 2) + 1][5] = converter.characterToIndex(highscores[(i * 4) + 1] + 'a');
		highscoresScreen[(i * 2) + 1][6] = converter.characterToIndex(highscores[(i * 4) + 2] + 'a');

		int d1 = highscores[(i * 4) + 3] % 10;
		int d2 = ((highscores[(i * 4) + 3] % 100) / 10);
		int d3 = ((highscores[(i * 4) + 3] % 1000) / 100);

		highscoresScreen[(i * 2) + 1][8] = 69;

		highscoresScreen[(i * 2) + 1][10] = converter.intToIndex(d3);
		highscoresScreen[(i * 2) + 1][11] = converter.intToIndex(d2);
		highscoresScreen[(i * 2) + 1][12] = converter.intToIndex(d1);
	}

	communication->sendBoth(highscoresScreen[0], emptyEntities);

	HAL_Delay(500);

	while (inputManager.readInput() != buttonA) {

	}
	HAL_Delay(100);
}

