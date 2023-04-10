/*
 * PowerupManager.h
 *
 *  Created on: 8 Apr 2023
 *      Author: coole
 */

#ifndef SRC_POWERUPMANAGER_H_
#define SRC_POWERUPMANAGER_H_

#include "main.h"
#include "cmsis_os.h"

#include "Entity.h"

class PowerupManager {
public:
	PowerupManager(Entity** entities);
	virtual ~PowerupManager();

	void setPowerup(uint8_t index);
	void updatePowerups();


private:
	Entity** entities;
};

#endif /* SRC_POWERUPMANAGER_H_ */
