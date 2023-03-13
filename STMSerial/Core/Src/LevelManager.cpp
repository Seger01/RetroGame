/*
 * LevelManager.cpp
 *
 *  Created on: 1 Mar 2023
 *      Author: coole
 */

#include <LevelManager.h>

#include "main.h"
#include "cmsis_os.h"
extern "C" {
#include "FreeRTOS.h"
#include "task.h"
}

LevelManager::LevelManager() {
	// TODO Auto-generated constructor stub
}

LevelManager::~LevelManager() {
	// TODO Auto-generated destructor stub
}

uint8_t* LevelManager::getMap() {
	if (xTaskGetTickCount() % (timeBetweenLevelAnimationsMs * 2) >= timeBetweenLevelAnimationsMs) {
		return levels[(currentMapNumber * 2) + 1][0];
	} else {
		return levels[(currentMapNumber * 2) + 0][0];
	}

	return levels[(currentMapNumber * 2) + 0][0];
}

void LevelManager::setLevel(uint8_t level) {
	this->currentMapNumber = level;
}

void LevelManager::getCollidables(std::vector<Tile*> *tileVector) {
	tileVector->resize(0);

	for (int i = 0; i < mapSizeTilesX; i++) {
		for (int j = 0; j < mapSizeTilesY; j++) {
			if (levels[currentMapNumber * 2][i][j] >= 15) {
				tileVector->push_back(new Tile(i * 16, j * 16, levels[currentMapNumber * 2][i][j], true, false));
			}
		}
	}
}

void LevelManager::getSpawnpoints(std::vector<Tile*> *spawnpointVector) {
	spawnpointVector->resize(0);

	for (int i = 0; i < mapSizeTilesX; i++) {
		for (int j = 0; j < mapSizeTilesY; j++) {
			if (levels[currentMapNumber * 2][i][j] < 6) {
				spawnpointVector->push_back(new Tile(i * 16, j * 16, levels[currentMapNumber * 2][i][j], false, true));
			}
		}
	}
}

