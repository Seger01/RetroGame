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

void HighscoreManager::setCurrentScore(int amount) {
	currentScore = amount;
}

uint8_t* HighscoreManager::getAllTimeHighscore() {
	getHighscoreInFlash();
	return allHighscores;
}

void HighscoreManager::setAllTimeHighscore(uint8_t score[4]) {

	for (int i = 0; i < 4; i++) {
		allTimeHighscore[i] = score[i];
	}
	saveHighscoreInFlash();
}

bool HighscoreManager::saveHighscoreInFlash() {
	getHighscoreInFlash();

	for (int j = 0; j < 4; j++)
		for (int i = 19; i > 0; i--) {
			allHighscores[i] = allHighscores[i - 1];
		}

	allHighscores[0] = allTimeHighscore[0];
	allHighscores[1] = allTimeHighscore[1];
	allHighscores[2] = allTimeHighscore[2];
	allHighscores[3] = allTimeHighscore[3];
	HAL_FLASH_Unlock();

	FLASH_EraseInitTypeDef config;

	config.PageAddress = FlashAddr;
	config.NbPages = 1;
	config.TypeErase = FLASH_TYPEERASE_PAGES;

	uint32_t errorStatus;

	HAL_FLASHEx_Erase(&config, &errorStatus);

	for (int i = 0; i < 20; i++) {
		HAL_FLASH_Program(FLASH_TYPEPROGRAM_WORD, FlashAddr + (i * 4), (uint16_t) (allHighscores[i]));
	}

	HAL_FLASH_Lock();

	return true;
}

void HighscoreManager::getHighscoreInFlash() {
	HAL_FLASH_Unlock();


	for (int i = 0; i < 20; i++) {
		allHighscores[i] = *(__IO uint8_t*) (FlashAddr + (i * 4));
	}

	HAL_FLASH_Lock();
}

