/*
 * Tile.h
 *
 *  Created on: 1 Mar 2023
 *      Author: coole
 */

#ifndef SRC_TILE_H_
#define SRC_TILE_H_

#include "main.h"
#include "cmsis_os.h"

class Tile {
public:
	Tile();
	Tile(uint8_t posX, uint8_t posY, uint8_t tileType, bool isCollidable, bool isSpawnpoint);
	virtual ~Tile();

	void setTileType(uint8_t type);
	void setIsCollidable (bool isCollidable);

	uint8_t getTileType();
	bool getIsCollidable();
	bool getIsSpawnpoint();

	uint8_t getPosX();
	uint8_t getPosY();


private:
	uint8_t posX = 0;
	uint8_t posY = 0;

	uint8_t tileType = 0;

	bool isCollidable = false;
	bool isSpawnpoint = false;
};

#endif /* SRC_TILE_H_ */