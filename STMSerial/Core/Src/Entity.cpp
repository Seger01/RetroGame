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
uint8_t Entity::getSpriteId(){
	return spriteId;
}


