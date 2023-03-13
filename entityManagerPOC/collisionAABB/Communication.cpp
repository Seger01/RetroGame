/*
 * Communication.cpp
 *
 *  Created on: 2 Mar 2023
 *      Author: coole
 */

#include "config.h"

#include "Communication.h"
#include "Entity.h"
/*
Communication::Communication() {
	// TODO Auto-generated constructor stub

}

Communication::~Communication() {
	// TODO Auto-generated destructor stub
}

Communication::Communication(SPI_HandleTypeDef *hspi1) {
	this->hspi1 = hspi1;
}

void Communication::sendMap(uint8_t *map) {

	uint8_t buffer[226] = { 0 };
	buffer[0] = 0xFF;

	for (int i = 0; i < mapSizeTilesX; i++) {
		for (int j = 0; j < 15; j++) {
			buffer[((i * 15) + j) + 1] = map[(i * 15) + j];
		}
	}

	HAL_SPI_Transmit(hspi1, (uint8_t*) buffer, 226, 100);

}

void Communication::sendEntities(Entity **entities) {
	static uint8_t buffer[226] = { 0 };

	buffer[1] = 100;
	buffer[2] = 100;
	buffer[3] = 3;

	buffer[4] = 200;
	buffer[5] = 200;
	buffer[6] = 2;

	//for (int j = 0; j < maxAmountOfEntities; j++) {
	// if (&entities[j] == nullptr)
	 //continue;
	 //buffer[(j * 3) + 0 + 1] = entities[j]->getXPos();
	 //buffer[(j * 3) + 1 + 1] = entities[j]->getYPos();
	 //buffer[(j * 3) + 2 + 1] = entities[j]->getSpriteId();
	 //}
	HAL_SPI_Transmit(hspi1, (uint8_t*) buffer, 226, 100);
}

void Communication::sendBoth(uint8_t *map, Entity **entities) {
	sendMap(map);

	sendEntities(entities);
}
*/