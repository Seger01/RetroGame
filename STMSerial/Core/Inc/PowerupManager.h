
#pragma once
#ifndef SRC_POWERUPMANAGER_H_
#define SRC_POWERUPMANAGER_H_


#include "main.h"
#include "cmsis_os.h"

extern "C" {
#include "FreeRTOS.h"
#include "task.h"
}

//#include "entityManager.h"

#include "Entity.h"
//#include "player.h"
#include "config.h"

class PowerupManager {
public:
	PowerupManager(Entity** entities);
	virtual ~PowerupManager();

	void setPowerup(uint8_t index);
	void updatePowerups();


private:
	//EntityManager* entityManager;
	Entity** entities;

	long long timers[4] = {0};
};

#endif

