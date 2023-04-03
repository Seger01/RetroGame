/*
 * Tile.h
 *
 *  Created on: 1 Mar 2023
 *      Author: coole
 */

#ifndef SRC_TILE_H_
#define SRC_TILE_H_
#include "CollidableObject.h"
//#include "cmsis_os.h"

class Tile : public CollidableObject {
public:
	Tile();
	Tile(uint8_t posX, uint8_t posY, uint8_t tileType, bool isCollidable, bool isSpawnpoint);
	virtual ~Tile();
	void setTileType(uint8_t type);
	void setIsCollidable (bool isCollidable);
	bool isCollidable() override;
	uint8_t getPosX() override;
	uint8_t getPosY() override;
	pointVector getHalfSize() override;
	uint8_t getTileType();
	bool getIsCollidable();
	bool getIsSpawnpoint();

private:
	uint8_t posX = 0;
	uint8_t posY = 0;

	uint8_t tileType = 0;

	bool isCollidable_ = false;
	bool isSpawnpoint = false;
};

#endif /* SRC_TILE_H_ */
