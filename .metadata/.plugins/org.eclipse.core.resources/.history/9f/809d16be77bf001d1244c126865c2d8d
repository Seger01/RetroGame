/*
 * Tile.cpp
 *
 *  Created on: 1 Mar 2023
 *      Author: coole
 */

#include "Tile.h"

Tile::Tile() {
	// TODO Auto-generated constructor stub

}

Tile::~Tile() {
	// TODO Auto-generated destructor stub
	// do nothing
}

Tile::Tile(uint8_t posX, uint8_t posY, uint8_t tileType, bool isCollidable, bool isSpawnpoint) {
	this->posX = posX;
	this->posY = posY;

	this->tileType = tileType;

	this->isCollidable = isCollidable;
	this->isSpawnpoint = isSpawnpoint;
}

void Tile::setTileType(uint8_t type) {
	this->tileType = type;
}
void Tile::setIsCollidable(bool isCollidable) {
	this->isCollidable = isCollidable;
}

uint8_t Tile::getTileType(){
	return this->tileType;
}

bool Tile::getIsCollidable(){
	return this->isCollidable;
}

bool Tile::getIsSpawnpoint(){
	return this->isSpawnpoint;
}

uint8_t Tile::getPosX(){
	return posX;
}
uint8_t Tile::getPosY(){
	return posY;
}

