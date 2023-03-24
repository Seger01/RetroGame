/*
 * Game.cpp
 *
 *  Created on: 8 Mar 2023
 *      Author: coole
 */

#include "Game.h"


Game::Game() {
	// TODO Auto-generated constructor stub

}

Game::~Game() {
	// TODO Auto-generated destructor stub
}

Game::Game(SPI_HandleTypeDef *hspi1) {
	this->hspi1 = hspi1;

	communication = new Communication(hspi1);

	levelManager.getCollidables(&collidableTiles);

	entityManager = new EntityManager(&collidableTiles);
}




void Game::run(){
	communication->sendMap(levelManager.getMap());
}