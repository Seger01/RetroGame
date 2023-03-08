/*
 * Entity.cpp
 *
 *  Created on: Feb 22, 2023
 */

#include "Entity.h"

Entity::Entity() {
	// TODO Auto-generated constructor stub

}

Entity::~Entity() {
	// TODO Auto-generated destructor stub
}

uint8_t Entity::getXPos(){
	return xPos;
}
uint8_t Entity::getYPos(){
	return yPos;
}

void Entity::setXPos(uint8_t newPos){
	this->xPos = newPos;
}

void Entity::setYPos(uint8_t newPos){
	this->yPos = newPos;
}

uint8_t Entity::getSpriteId(){
	return spriteId;
}


