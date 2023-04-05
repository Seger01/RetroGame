/*
 * LevelManager.h
 *
 *  Created on: 1 Mar 2023
 *      Author: coole
 */
			// 1   2   3   4   5   6   7   8   9  10  11  12  13  14  15

//			{ 18, 18, 18, 18, 18, 18,  9,  9,  9, 18, 18, 18, 18, 18, 18 },	//1
//			{ 18,  9,  9,  9,  9,  9,  9,  9,  9,  9,  9,  9,  9,  9, 18 },	//2
//			{ 18,  9,  9,  9,  9,  9,  9,  9,  9,  9,  9,  9,  9,  9, 18 },	//3
//			{ 18,  9,  9,  9,  9,  9,  9,  9,  9,  9,  9,  9,  9,  9, 18 },	//4
//			{ 18,  9,  9,  9,  9,  9,  9,  9,  9,  9,  9,  9,  9,  9, 18 },	//5
//			{ 18,  9,  9,  9,  9,  9,  9,  9,  9,  9,  9,  9,  9,  9, 18 },	//6
//			{  9,  9,  9,  9,  9,  9,  9,  9,  9,  9,  9,  9,  9,  9,  9 },		//7
//			{  9,  9,  9,  9,  9,  9,  9,  9,  9,  9,  9,  9,  9,  9,  9 },	//8
//			{  9,  9,  9,  9,  9,  9,  9,  9,  9,  9,  9,  9,  9,  9,  9 },		//9
//			{ 18,  9,  9,  9,  9,  9,  9,  9,  9,  9,  9,  9,  9,  9, 18 },	//10
//			{ 18,  9,  9,  9,  9,  9,  9,  9,  9,  9,  9,  9,  9,  9, 18 },	//11
//			{ 18,  9,  9,  9,  9,  9,  9,  9,  9,  9,  9,  9,  9,  9, 18 },	//12
//			{ 18,  9,  9,  9,  9,  9,  9,  9,  9,  9,  9,  9,  9,  9, 18 },	//13
//			{ 18,  9,  9,  9,  9,  9,  9,  9,  9,  9,  9,  9,  9,  9, 18 },	//14
//			{ 18, 18, 18, 18, 18, 18, 18, 18, 18, 18, 18, 18, 18, 18, 18 } };//15


#ifndef INC_LEVELMANAGER_H_
#define INC_LEVELMANAGER_H_

#include "main.h"
#include "cmsis_os.h"

#include "Tile.h"

#include "config.h"

#include <vector>

class LevelManager {
public:
	LevelManager();
	virtual ~LevelManager();

	uint8_t* getMap();

	void setLevel(uint8_t level);
	void switchLevel(uint8_t level);

	void getCollidables(std::vector<Tile*>* tileVector);

	void getSpawnpoints(std::vector<Tile*>* spawnpointVector);

private:

	void currentLevelToTileArray();

	//// levels

	uint8_t levels[6][15][15] = {
			{
					// 1   2   3   4   5   6   7   8   9  10  11  12  13  14  15
				{  9,  9,  9,  9,  9,  9,  9,  9,  9,  9,  9,  9,  9,  9,  9 },	//1
				{  9,  9,  9,  9,  9,  9,  9,  9,  9,  9,  9,  9,  9,  9,  9 },	//2
				{  9,  9,  9,  9,  9,  9,  9,  9,  9,  9,  9,  9,  9,  9,  9 },	//3
				{  9,  9,  9,  9,  9,  9,  9,  9,  9,  9,  9,  9,  9,  9,  9 },	//4
				{  9,  9,  9,  9,  9,  9,  9,  9,  9,  9,  9,  9,  9,  9,  9 },	//5
				{  9,  9,  9,  9,  9,  9,  9,  9,  9,  9,  9,  9,  9,  9,  9 },	//6
				{  9,  9,  9,  9,  9,  9,  9,  9,  9,  9,  9,  9,  9,  9,  9 },	//7
				{  9,  9,  9,  9,  9,  9,  9,  9,  9,  9,  9,  9,  9,  9,  9 },	//8
				{  9,  9,  9,  9,  9,  9,  9,  9,  9,  9,  9,  9,  9,  9,  9 },	//9
				{  9,  9,  9,  9,  9,  9,  9,  9,  9,  9,  9,  9,  9,  9,  9 },	//10
				{  9,  9,  9,  9,  9,  9,  9,  9,  9,  9,  9,  9,  9,  9,  9 },	//11
				{  9,  9,  9,  9,  9,  9,  9,  9,  9,  9,  9,  9,  9,  9,  9 },	//12
				{  9,  9,  9,  9,  9,  9,  9,  9,  9,  9,  9,  9,  9,  9,  9 },	//13
				{  9,  9,  9,  9,  9,  9,  9,  9,  9,  9,  9,  9,  9,  9,  9 },	//14
				{  9,  9,  9,  9,  9,  9,  9,  9,  9,  9,  9,  9,  9,  9,  9 } //15
			},
			{
				// 1   2   3   4   5   6   7   8   9  10  11  12  13  14  15
				{  9,  9,  9,  9,  9,  9,  9,  9,  9,  9,  9,  9,  9,  9,  9 },	//1
				{  9,  9,  9,  9,  9,  9,  9,  9,  9,  9,  9,  9,  9,  9,  9 },	//2
				{  9,  9,  9,  9,  9,  9,  9,  9,  9,  9,  9,  9,  9,  9,  9 },	//3
				{  9,  9,  9,  9,  9,  9,  9,  9,  9,  9,  9,  9,  9,  9,  9 },	//4
				{  9,  9,  9,  9,  9,  9,  9,  9,  9,  9,  9,  9,  9,  9,  9 },	//5
				{  9,  9,  9,  9,  9,  9,  9,  9,  9,  9,  9,  9,  9,  9,  9 },	//6
				{  9,  9,  9,  9,  9,  9,  9,  9,  9,  9,  9,  9,  9,  9,  9 },	//7
				{  9,  9,  9,  9,  9,  9,  9,  9,  9,  9,  9,  9,  9,  9,  9 },	//8
				{  9,  9,  9,  9,  9,  9,  9,  9,  9,  9,  9,  9,  9,  9,  9 },	//9
				{  9,  9,  9,  9,  9,  9,  9,  9,  9,  9,  9,  9,  9,  9,  9 },	//10
				{  9,  9,  9,  9,  9,  9,  9,  9,  9,  9,  9,  9,  9,  9,  9 },	//11
				{  9,  9,  9,  9,  9,  9,  9,  9,  9,  9,  9,  9,  9,  9,  9 },	//12
				{  9,  9,  9,  9,  9,  9,  9,  9,  9,  9,  9,  9,  9,  9,  9 },	//13
				{  9,  9,  9,  9,  9,  9,  9,  9,  9,  9,  9,  9,  9,  9,  9 },	//14
				{  9,  9,  9,  9,  9,  9,  9,  9,  9,  9,  9,  9,  9,  9,  9 } //15
			},
			{
				// 1   2   3   4   5   6   7   8   9  10  11  12  13  14  15
				{ 18, 18, 18, 18, 18, 18, 12,  6,  6, 18, 18, 18, 18, 18, 18 },	//1
				{ 18,  9,  9,  9,  9,  9,  9,  9,  9,  9,  9,  9,  9,  9, 18 },	//2
				{ 18,  9,  9,  9,  9,  9,  9,  9,  9,  9,  9,  9,  9,  9, 18 },	//3
				{ 18,  9,  9,  9, 18,  9,  9,  9,  9,  9, 18,  9,  9,  9, 18 },	//4
				{ 18,  9,  9, 18, 18,  9,  9,  9,  9,  9, 18, 18,  9,  9, 18 },	//5
				{ 18,  9,  9,  9,  9,  9,  9,  9,  9,  9,  9,  9,  9,  9, 18 },	//6
				{  6,  9,  9,  9,  9,  9,  9,  9,  9,  9,  9,  9,  9,  9, 12 },	//7
				{ 12,  9,  9,  9,  9,  9,  9,  9,  9,  9,  9,  9,  9,  9, 12 },	//8
				{  6,  9,  9,  9,  9,  9,  9,  9,  9,  9,  9,  9,  9,  9,  6 },	//9
				{ 18,  9,  9,  9,  9,  9,  9,  9,  9,  9,  9,  9,  9,  9, 18 },	//10
				{ 18,  9,  9, 18, 18,  9,  9,  9,  9,  9, 18, 18,  9,  9, 18 },	//11
				{ 18,  9,  9,  9, 18,  9,  9,  9,  9,  9, 18,  9,  9,  9, 18 },	//12
				{ 18,  9,  9,  9,  9,  9,  9,  9,  9,  9,  9,  9,  9,  9, 18 },	//13
				{ 18,  9,  9,  9,  9,  9,  9,  9,  9,  9,  9,  9,  9,  9, 18 },	//14
				{ 18, 18, 18, 18, 18, 18, 12,  6,  6, 18, 18, 18, 18, 18, 18 } //15
			},
			{
					// 1   2   3   4   5   6   7   8   9  10  11  12  13  14  15
				{ 15, 15, 15, 15, 15, 15,  12,  6,  6, 15, 15, 15, 15, 15, 15 },	//1
				{ 15,  9,  9,  9,  9,  9,  9,  9,  9,  9,  9,  9,  9,  9, 15 },	//2
				{ 15,  9,  9,  9,  9,  9,  9,  9,  9,  9,  9,  9,  9,  9, 15 },	//3
				{ 15,  9,  9,  9, 15,  9,  9,  9,  9,  9, 15,  9,  9,  9, 15 },	//4
				{ 15,  9,  9, 15, 15,  9,  9,  9,  9,  9, 15, 15,  9,  9, 15 },	//5
				{ 15,  9,  9,  9,  9,  9,  9,  9,  9,  9,  9,  9,  9,  9, 15 },	//6
				{  6,  9,  9,  9,  9,  9,  9,  9,  9,  9,  9,  9,  9,  9, 12 },	//7
				{ 12,  9,  9,  9,  9,  9,  9,  9,  9,  9,  9,  9,  9,  9, 12 },	//8
				{  6,  9,  9,  9,  9,  9,  9,  9,  9,  9,  9,  9,  9,  9,  6 },	//9
				{ 15,  9,  9,  9,  9,  9,  9,  9,  9,  9,  9,  9,  9,  9, 15 },	//10
				{ 15,  9,  9, 15, 15,  9,  9,  9,  9,  9, 15, 15,  9,  9, 15 },	//11
				{ 15,  9,  9,  9, 15,  9,  9,  9,  9,  9, 15,  9,  9,  9, 15 },	//12
				{ 15,  9,  9,  9,  9,  9,  9,  9,  9,  9,  9,  9,  9,  9, 15 },	//13
				{ 15,  9,  9,  9,  9,  9,  9,  9,  9,  9,  9,  9,  9,  9, 15 },	//14
				{ 15, 15, 15, 15, 15, 15, 12,  6,  6, 15, 15, 15, 15, 15, 15 } //15
			},
			{
					// 1   2   3   4   5   6   7   8   9  10  11  12  13  14  15
				{ 20,  20,  20,  20,  20,  20,  14,   8,   8,  20,  20,  20,  20,  20, 20 },	//1
				{ 20,  11,  11,  11,  11,  11,  11,  11,  11,  11,  11,  11,  11,  11, 20 },	//2
				{ 20,  11,  11,  11,  11,  11,  11,  11,  11,  11,  11,  11,  11,  11, 20 },	//3
				{ 20,  11,  11,  11,  20,  11,  11,  11,  11,  11,  20,  11,  11,  11, 20 },	//4
				{ 20,  11,  11,  20,  20,  11,  11,  11,  11,  11,  20,  20,  11,  11, 20 },	//5
				{ 20,  11,  11,  11,  11,  11,  11,  11,  11,  11,  11,  11,  11,  11, 20 },	//8
				{  8,  11,  11,  11,  11,  11,  11,  11,  11,  11,  11,  11,  11,  11, 14 },	//7
				{ 14,  11,  11,  11,  11,  11,  11,  11,  11,  11,  11,  11,  11,  11, 14 },	//8
				{  8,  11,  11,  11,  11,  11,  11,  11,  11,  11,  11,  11,  11,  11,  8 },	//11
				{ 20,  11,  11,  11,  11,  11,  11,  11,  11,  11,  11,  11,  11,  11, 20 },	//10
				{ 20,  11,  11,  20,  20,  11,  11,  11,  11,  11,  20,  20,  11,  11, 20 },	//11
				{ 20,  11,  11,  11,  20,  11,  11,  11,  11,  11,  20,  11,  11,  11, 20 },	//12
				{ 20,  11,  11,  11,  11,  11,  11,  11,  11,  11,  11,  11,  11,  11, 20 },	//13
				{ 20,  11,  11,  11,  11,  11,  11,  11,  11,  11,  11,  11,  11,  11, 20 },	//14
				{ 20,  20,  20,  20,  20,  20,  14,   8,   8,  20,  20,  20,  20,  20, 20 } //15
			},
			{
				// 1   2   3   4   5   6   7   8   9  10  11  12  13  14  15
				{ 17,  17,  17,  17,  17,  17,  14,   8,   8,  17,  17,  17,  17,  17, 17 },	//1
				{ 17,  11,  11,  11,  11,  11,  11,  11,  11,  11,  11,  11,  11,  11, 17 },	//2
				{ 17,  11,  11,  11,  11,  11,  11,  11,  11,  11,  11,  11,  11,  11, 17 },	//3
				{ 17,  11,  11,  11,  17,  11,  11,  11,  11,  11,  17,  11,  11,  11, 17 },	//4
				{ 17,  11,  11,  17,  17,  11,  11,  11,  11,  11,  17,  17,  11,  11, 17 },	//5
				{ 17,  11,  11,  11,  11,  11,  11,  11,  11,  11,  11,  11,  11,  11, 17 },	//6
				{  8,  11,  11,  11,  11,  11,  11,  11,  11,  11,  11,  11,  11,  11, 14 },	//7
				{ 14,  11,  11,  11,  11,  11,  11,  11,  11,  11,  11,  11,  11,  11, 14 },	//8
				{  8,  11,  11,  11,  11,  11,  11,  11,  11,  11,  11,  11,  11,  11,  8 },	//11
				{ 17,  11,  11,  11,  11,  11,  11,  11,  11,  11,  11,  11,  11,  11, 17 },	//10
				{ 17,  11,  11,  17,  17,  11,  11,  11,  11,  11,  17,  17,  11,  11, 17 },	//11
				{ 17,  11,  11,  11,  17,  11,  11,  11,  11,  11,  17,  11,  11,  11, 17 },	//12
				{ 17,  11,  11,  11,  11,  11,  11,  11,  11,  11,  11,  11,  11,  11, 17 },	//13
				{ 17,  11,  11,  11,  11,  11,  11,  11,  11,  11,  11,  11,  11,  11, 17 },	//14
				{ 17,  17,  17,  17,  17,  17,  14,   8,   8,  17,  17,  17,  17,  17, 17 } //15
			}
		};


	// private variables

	bool frameSelect = false;

	unsigned long long lastLevelSwitch = 0;

	uint8_t templevel[15][15] = {0};

	uint8_t currentMapNumber = 0;
	uint8_t lastMapNumber = 0;

	//Tile currentLevel[224];
};

#endif /* INC_LEVELMANAGER_H_ */
