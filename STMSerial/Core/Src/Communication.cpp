/*
 * Communication.cpp
 *
 *  Created on: 2 Mar 2023
 *      Author: coole
 */

#include "config.h"

#include "Communication.h"
#include "Entity.h"

#include "HighscoreManager.h"

#include "Converter.h"

#include "entityManager.h"
#include "Player.h"
#include "enemy.h"
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
	uint8_t buffer[300] = { 0 };
	buffer[0] = 0xFF;

	for (int i = 0; i < mapSizeTilesX; i++) {
		for (int j = 0; j < 15; j++) {
			buffer[((i * 20) + j + 3) + 1] = map[(i * 15) + j];
		}
	}

	HAL_SPI_Transmit(hspi1, (uint8_t*) buffer, 226, 100);
}

void Communication::sendEntities(Entity **entities) {
	uint8_t buffer[1240 / 8] = { 0 };

	for (int j = 0; j < maxAmountOfEntities; j++) {
		if (entities[j] == nullptr) {
			buffer[(j * 3) + 2 + 1] = 15;
			continue;
		}

		buffer[(j * 3) + 0 + 1] = entities[j]->getStart().X;
		buffer[(j * 3) + 1 + 1] = entities[j]->getStart().Y;
		buffer[(j * 3) + 2 + 1] = entities[j]->getTexture();
	}

	HAL_SPI_Transmit(hspi1, (uint8_t*) buffer, 226, 100);
}

//int charToIndex(uint8_t character){
//	return (int)character  - 'a' + 31 + 10 + 2;
//}

void Communication::sendBoth(uint8_t *map, Entity **entities) {
//	sendMap(map);
//
//	sendEntities(entities);
	Converter converter;
	uint8_t buffer[456] = { 0 };

	for (int i = 0; i < 301; i++) {
		buffer[i] = 73;
	}
//
	for (int i = 0; i < mapSizeTilesX; i++) {
		for (int j = 0; j < 15; j++) {
			buffer[((i * 20) + j + 3) + 1] = map[(i * 15) + j];
		}
	}

//	buffer[1] = converter.characterToIndex('s');
//	buffer[21] = converter.characterToIndex('c');
//	buffer[41] = converter.characterToIndex('o');
//	buffer[61] = converter.characterToIndex('r');
//	buffer[81] = converter.characterToIndex('e');

	buffer[1] = converter.characterToIndex('l');
	buffer[2] = converter.characterToIndex('v');
	buffer[3] = converter.characterToIndex('l');

	int score = highscoreManager.getCurrentScore();

	int d1 = score % 10;
	int d2 = ((score % 100) /10);
	int d3 = ((score % 1000)/ 100);

	buffer[21] = converter.intToIndex(d3);
	buffer[22] = converter.intToIndex(d2);
	buffer[23] = converter.intToIndex(d1);


	for (int j = 0; j < maxAmountOfEntities; j++) {
		if (entities[j] == nullptr) {
			//buffer[(j * 3) + 2 + 1 + 300] = 15;
			continue;
		}

		buffer[(j * 3) + 0 + 1 + 300] = entities[j]->getStart().X;
		buffer[(j * 3) + 1 + 1 + 300] = entities[j]->getStart().Y;
		buffer[(j * 3) + 2 + 1 + 300] = entities[j]->getTexture();
	}

//	buffer[301] = 20;
//	buffer[302] = 10;
//	buffer[303] = 3;
//	buffer[(1 * 3) + 0 + 1 + 300] = entities[1]->getStart().X;
//	buffer[(1 * 3) + 1 + 1 + 300] = entities[1]->getStart().Y;
//	buffer[(1 * 3) + 2 + 1 + 300] = entities[1]->getTexture();

	buffer[0] = 0xFF;

	HAL_SPI_Transmit(hspi1, (uint8_t*) buffer, 455, 100);

}
