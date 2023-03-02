/*
 * Communication.cpp
 *
 *  Created on: 2 Mar 2023
 *      Author: coole
 */

#include "config.h"

#include "Communication.h"
#include "Entity.h"
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
			buffer[((i * 15) + j) +1] = map[(i * 15) + j];
		}
	}
}

void Communication::sendEntities(Entity *entities) {

}

void Communication::sendBoth(int *map, Entity *entities) {
	sendMap(map);

	sendEntities(entities);
}
