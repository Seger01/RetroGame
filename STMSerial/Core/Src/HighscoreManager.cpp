/*
 * HighscoreManager.cpp
 *
 *  Created on: Mar 8, 2023
 *      Author: coole
 */

#include "HighscoreManager.h"

uint32_t FlashAddr = 0x0803F800;

HighscoreManager::HighscoreManager() {
	// TODO Auto-generated constructor stub

}

HighscoreManager::~HighscoreManager() {
	// TODO Auto-generated destructor stub
}

void HighscoreManager::addToScore(int amount) {
	currentScore += amount;
}

int HighscoreManager::getCurrentScore() {
	return currentScore;
}

void HighscoreManager::setCurrentScore(int amount){
	currentScore = amount;
}

uint8_t* HighscoreManager::getAllTimeHighscore() {
	getHighscoreInFlash();
	return allTimeHighscore;
}

void HighscoreManager::setAllTimeHighscore(uint8_t score[4]) {
	for (int i = 0; i < 4; i++){
		allTimeHighscore[i] = score[i];
	}
	saveHighscoreInFlash();
}

bool HighscoreManager::saveHighscoreInFlash() {
	HAL_FLASH_Unlock();

	FLASH_EraseInitTypeDef config;

	config.PageAddress = FlashAddr;
	config.NbPages = 1;
	config.TypeErase = FLASH_TYPEERASE_PAGES;

	uint32_t errorStatus;

	HAL_FLASHEx_Erase(&config, &errorStatus);

	for(int i = 0; i < 4; i++){
		HAL_FLASH_Program(FLASH_TYPEPROGRAM_WORD, FlashAddr + (i * 4), (uint16_t)(allTimeHighscore[i]));
	}

	HAL_FLASH_Lock();

	return true;
}

void HighscoreManager::getHighscoreInFlash() {
	HAL_FLASH_Unlock();

	for (int i = 0; i < 4; i++){
		allTimeHighscore[i] = *(__IO uint8_t*) (FlashAddr + (i * 4));
	}

	HAL_FLASH_Lock();
}

