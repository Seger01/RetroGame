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

int HighscoreManager::getAllTimeHighscore() {
	allTimeHighscore = getHighscoreInFlash();
	return allTimeHighscore;
}

void HighscoreManager::setAllTimeHighscore(int score) {
	allTimeHighscore = score;
	saveHighscoreInFlash();
}

bool HighscoreManager::saveHighscoreInFlash() {
	if (allTimeHighscore == -1)
		return false;
	HAL_FLASH_Unlock();

	FLASH_EraseInitTypeDef config;

	config.PageAddress = FlashAddr;
	config.NbPages = 1;
	config.TypeErase = 0x00U;

	uint32_t errorStatus;

	HAL_FLASHEx_Erase(&config, &errorStatus);

	HAL_FLASH_Program(FLASH_TYPEPROGRAM_HALFWORD, FlashAddr, (uint8_t)allTimeHighscore);

	HAL_FLASH_Lock();

	return true;
}

int HighscoreManager::getHighscoreInFlash() {
	HAL_FLASH_Unlock();

	allTimeHighscore = *(__IO uint8_t*) FlashAddr;

	HAL_FLASH_Lock();
	return allTimeHighscore;
}

