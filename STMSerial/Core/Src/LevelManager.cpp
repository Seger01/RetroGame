#include <LevelManager.h>

#include "main.h"
#include "cmsis_os.h"
extern "C" {
#include "FreeRTOS.h"
#include "task.h"
}

#include <cstring>


LevelManager::LevelManager() {
	// TODO Auto-generated constructor stub
}

LevelManager::~LevelManager() {
	// TODO Auto-generated destructor stub
}

uint8_t* LevelManager::getMap() {
	uint8_t tileOrder[225] = {0,1,2,3,4,5,6,7,8,9,10,11,12,13,14,29,44,59,74,89,104,119,134,149,164,179,194,209,224,223,222,221,220,219,218,217,216,215,214,213,212,211,210,195,180,165,150,135,120,105,90,75,60,45,30,15,16,17,18,19,20,21,22,23,24,25,26,27,28,43,58,73,88,103,118,133,148,163,178,193,208,207,206,205,204,203,202,201,200,199,198,197,196,181,166,151,136,121,106,91,76,61,46,31,32,33,34,35,36,37,38,39,40,41,42,57,72,87,102,117,132,147,162,177,192,191,190,189,188,187,186,185,184,183,182,167,152,137,122,107,92,77,62,47,48,49,50,51,52,53,54,55,56,71,86,101,116,131,146,161,176,175,174,173,172,171,170,169,168,153,138,123,108,93,78,63,64,65,66,67,68,69,70,85,100,115,130,145,160,159,158,157,156,155,154,139,124,109,94,79,80,81,82,83,84,99,114,129,144,143,142,141,140,125,110,95,96,97,98,113,128, 127,126,111,112};

	if (currentMapNumber != lastMapNumber && xTaskGetTickCount() <= lastLevelSwitch + timeForLevelSwitch) {
		bool frameSelect = ((xTaskGetTickCount() % (timeBetweenLevelAnimationsMs * 2)) / timeBetweenLevelAnimationsMs);
		std::memcpy(templevel, levels[(lastMapNumber * 2) + frameSelect], 225 * sizeof(uint8_t));

		float deltaTime = xTaskGetTickCount() - lastLevelSwitch;

		int amountOfTiles = ((deltaTime / timeForLevelSwitch) * 225.0);

		for (int i = 0; i < amountOfTiles; i++){
			templevel[tileOrder[i] / 15][tileOrder[i] % 15] = levels[(currentMapNumber * 2) + frameSelect][tileOrder[i] / 15][tileOrder[i] % 15];
		}
		return templevel[0];
	} else {
		if (xTaskGetTickCount() % (timeBetweenLevelAnimationsMs * 2) >= timeBetweenLevelAnimationsMs) {
			return levels[(currentMapNumber * 2) + 1][0];
		} else {
			return levels[(currentMapNumber * 2) + 0][0];
		}
	}

	return levels[(currentMapNumber * 2) + 0][0];
}

void LevelManager::setLevel(uint8_t level) {
	if(level == currentMapNumber) return;
	lastMapNumber = level;
	this->currentMapNumber = level;


}

void LevelManager::switchLevel(uint8_t level) {
	if(level == currentMapNumber) return;

	lastMapNumber = currentMapNumber;
	currentMapNumber = level;

	lastLevelSwitch = xTaskGetTickCount();
}

void LevelManager::getCollidables(std::vector<Tile*> *tileVector) {
	tileVector->resize(0);

	for (int i = 0; i < mapSizeTilesX; i++) {
		for (int j = 0; j < mapSizeTilesY; j++) {
			if (levels[currentMapNumber * 2][i][j] >= 15) {
				tileVector->push_back(new Tile((i * 16) + 8, (j * 16) + 8, levels[currentMapNumber * 2][i][j], true, false));
			}
		}
	}

}

void LevelManager::getSpawnpoints(std::vector<Tile*> *spawnpointVector) {
	spawnpointVector->resize(0);

	for (int i = 0; i < mapSizeTilesX; i++) {
		for (int j = 0; j < mapSizeTilesY; j++) {
			if (levels[currentMapNumber * 2][i][j] <= 6 || levels[currentMapNumber * 2][i][j] == 12) {
				spawnpointVector->push_back(new Tile((i * 16) + 8, (j * 16) + 8, levels[currentMapNumber * 2][i][j], false, true));
			}
		}
	}
}

