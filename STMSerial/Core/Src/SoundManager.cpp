/*
 * SoundManager.cpp
 *
 *  Created on: Mar 8, 2023
 *      Author: coole
 */

#include "SoundManager.h"

SoundManager::SoundManager() {
	// TODO Auto-generated constructor stub

}

SoundManager::~SoundManager() {
	// TODO Auto-generated destructor stub
}

void SoundManager::setSoundActive(int soundIndex){
	if(soundIndex > 7) return;
	activeSounds |= (1<<soundIndex);
}

uint8_t SoundManager::getActiveSounds(){
	uint8_t temp = activeSounds;

	activeSounds = 0;

	return temp;
}
