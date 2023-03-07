#include "entityManager.h"

#include <iostream>
#include "enemy.h"
#include "player.h"
#include <vector>
entityManager::entityManager(std::vector<tile*> collidableTiles) {
	for (int i = 1; i < 50; i++) {
		entities[i] = nullptr;
	}
	entities[0] = new player("player1", 60, 60, 16, 16, 20, 2, 1);
	entities[1] = new enemy("mob1", 0, 0, 16, 16, 2, 2, 1);
	entities[2] = new enemy("mob2", 20, 20, 16, 16, 2, 2, 1);
	entities[3] = new enemy("mob3", 100, 100, 16, 16, 2, 2, 1);
	this->collidableTiles = collidableTiles;
	
}
entity** entityManager::getEntities() {
	return entities;
}
void entityManager::updateTiles(std::vector<tile*> collidableTiles) {
	this->collidableTiles = collidableTiles;
}
void entityManager::playerAction(bool movePlayerUp, bool movePlayerDown, bool movePlayerLeft, bool movePlayerRight, bool playerShoot) {
	int x = 0;
	int y = 0;
	if (movePlayerUp) {
		y = 1;
		entities[0]->setTexture(1);
	}
	else if (movePlayerDown) {
		y = -1;
		entities[0]->setTexture(2);
	}
	if (movePlayerRight) {
		x = 1;
		entities[0]->setTexture(3);
	}
	else if (movePlayerLeft) {
		x = -1;
		entities[0]->setTexture(4);
	}
	moveEntity(0, x, y);
}
void entityManager::clear() {
	for (int i = 1; i < 50; i++) {
		delete entities[i];
		entities[i] = nullptr;
	}
}
void entityManager::spawnEntities(int currentLevel, int spawnDifficulty, int amountOfEnemies) {

}
void entityManager::moveEntities() {
	int x = 0;
	int y = 0;
	pointVector playerPos = entities[0]->getPosition();
	for (int i = 1; i < 50; i++) {
		if (dynamic_cast<enemy*>(entities[i])) {
			enemy* enemyPtr = dynamic_cast<enemy*>(entities[i]);
			if (enemyPtr->getRemainingSteps() > 0) {
				pointVector direction = enemyPtr->getDirection();
				enemyPtr->stepX(direction.X);
				enemyPtr->stepY(direction.Y);
				enemyPtr->decrementRemainingSteps();
			}
			pointVector enemyPos = entities[i]->getPosition();
			
			if (playerPos.X < enemyPos.X) {
				x = -1;
			}
			else if (playerPos.X > enemyPos.X) {
				x = 1;
			}else if (playerPos.Y < enemyPos.Y) {
				y = -1;
			}
			else if (playerPos.Y > enemyPos.Y) {
				y = 1;
			}
			moveEntity(i, x, y);
		}
	}
}
void entityManager::moveEntity(int toBeMoved,int x,int y) {
	entities[toBeMoved]->stepX(x);
	entities[toBeMoved]->stepY(y);
	for (int j = 0; j < 50; j++) {
		if (entities[toBeMoved] == entities[j] || entities[j] == NULL) {
			continue;
		}
		if (entities[toBeMoved]->checkEntities(*entities[j])) {
			entities[toBeMoved]->onCollide(*entities[j]);
			std::cout << entities[toBeMoved]->getName() << " collides with " << entities[j]->getName() << std::endl;
		}
	}
	for (int j = 0; j < collidableTiles.size(); j++) {
		if (entities[toBeMoved]->checkTiles(*collidableTiles[j])) {
			std::cout << entities[toBeMoved]->getName() << " collides with wall" << std::endl;
		}
		
	}
}
void entityManager::checkCollision() {

}