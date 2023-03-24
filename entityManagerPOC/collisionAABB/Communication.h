/*
 * Communication.h
 *
 *  Created on: 2 Mar 2023
 *      Author: coole
 */
/*
#ifndef SRC_COMMUNICATION_H_
#define SRC_COMMUNICATION_H_

#include "Tile.h"

#include "Entity.h"

class Communication {
public:
	Communication();
	virtual ~Communication();

	Communication(SPI_HandleTypeDef *hspi1);

	void sendEntities(Entity **entities);

	void sendMap(uint8_t *map);

	void sendBoth(uint8_t *map, Entity **entities);

private:
	SPI_HandleTypeDef *hspi1;
};
*/
//#endif /* SRC_COMMUNICATION_H_ */
