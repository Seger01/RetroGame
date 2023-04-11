/*
 * Game.h
 *
 *  Created on: 8 Mar 2023
 *      Author: coole
 */
#pragma once
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
	Reset, Startup, SwitchingLevels, PlayingLevel, ShowDeath, MainMenu, Credits, GivingNameForHighscore
};

class Game {
public:
	Game();
	Game(SPI_HandleTypeDef *hspi1);
	virtual ~Game();

	void setup();

	void run();

	void checkForCheats(uint8_t inputs);
	void showAllHighscores();

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

	long long lastLevelSwitch = 0;

	int currentLevel = 0;

	int remainingEnemies = 10;

	uint8_t highscoreScreen[15][15]  = {
			///////////////////////////main menu frame 0////////////////////////////
			// 1   2   3   4   5   6   7   8   9  10  11  12  13  14  15
			{ 73, 73, 73, 73, 73, 73, 73, 73, 73, 73, 73, 73, 73, 73, 73 },	//1	//2
			{ 73, 73, 49, 51, 64, 47, 73, 43, 73, 56, 43, 55, 47, 73, 73 }, //3
			{ 73, 73, 73, 73, 48, 57, 60, 73, 62, 50, 47, 73, 73, 73, 73 },	//4
			{ 73, 73, 73, 50, 51, 49, 50, 61, 45, 57, 60, 47, 73, 73, 73 },	//5
			{ 73, 73, 73, 73, 73, 73, 73, 73, 73, 73, 73, 73, 73, 73, 73 },	//6
			{ 73, 73, 73, 73, 73, 58, 60, 47, 61, 61, 73, 73, 73, 73, 73 },
			{ 73, 73, 43, 73, 62, 57, 73, 45, 57, 56, 48, 51, 60, 55, 73 },	//7
			{ 73, 73, 44, 73, 48, 57, 60, 73, 54, 47, 62, 62, 47, 60, 73 },	//8
			{ 73, 73, 73, 73, 73, 73, 73, 73, 73, 73, 73, 73, 73, 73, 73 },	//9
			{ 73, 73, 73, 73, 73, 73, 73, 73, 73, 73, 73, 73, 73, 73, 73 },	//10
			{ 73, 73, 73, 73, 73, 73, 73, 73, 73, 73, 73, 73, 73, 73, 73 },	//11
			{ 73, 73, 73, 73, 73, 73, 73, 73, 73, 73, 73, 73, 73, 73, 73 },	//12
			{ 73, 73, 73, 73, 73, 73, 73, 73, 73, 73, 73, 73, 73, 73, 73 },	//13
			{ 73, 73, 73, 73, 73, 73, 73, 73, 73, 73, 73, 73, 73, 73, 73 },	//14
			{ 73, 73, 73, 73, 73, 73, 73, 73, 73, 73, 73, 73, 73, 73, 73 } //15
		};

	Entity* emptyEntities[50];
};

#endif /* SRC_GAME_H_ */
