/*
 * PowerupManager.cpp
 *
 *  Created on: 8 Apr 2023
 *      Author: coole
 */

#include "PowerupManager.h"



#define nukeIndex 0
#define coffeeIndex 2
#define heartIndex 3

PowerupManager::PowerupManager(Entity **entities) {
	this->entities = entities;
	//this->entityManager = entityManager;
}

PowerupManager::~PowerupManager() {

}

void PowerupManager::setPowerup(uint8_t index) {
	if (index > 3)
		return;
	timers[index] = xTaskGetTickCount();
	updatePowerups();
}

void PowerupManager::updatePowerups() {

	if (timers[nukeIndex] + 100 > xTaskGetTickCount()) {
		for (int i = 2; i < 50; i++){
			if (entities[i] != nullptr){
				entities[i]->setHealth(0);
			}
		}
		timers[nukeIndex] = 0;
	}
	if (timers[coffeeIndex] + coffeePowerupDuration > xTaskGetTickCount()) {
		entities[0]->setSpeed(playerCoffeeSpeed);
	} else {
		entities[0]->setSpeed(playerSpeed);
	}

	if (timers[heartIndex] + 100 > xTaskGetTickCount()) {
		entities[0]->setHealth(entities[0]->getHealth() + 1);
		timers[heartIndex] = 0;
	}

}

