/*
 * Entity.h
 *
 *  Created on: Feb 22, 2023
 */

#ifndef SRC_ENTITY_H_
#define SRC_ENTITY_H_

#include "main.h"
#include "cmsis_os.h"

class Entity {
private:

	uint8_t xPos = 123;
	uint8_t yPos = 213;

	uint8_t spriteId = 2;


public:
	Entity();
	virtual ~Entity();

	void setXPos(uint8_t newPos);
	void setYPos(uint8_t newPos);

	uint8_t getXPos();
	uint8_t getYPos();
	uint8_t getSpriteId();

};

#endif /* SRC_ENTITY_H_ */
