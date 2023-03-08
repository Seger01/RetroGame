#include "entityManager.h"

#include <iostream>
#include "enemy.h"
#include "player.h"
#include "bullet.h"
#include <vector>
entityManager::entityManager(std::vector<tile*> collidableTiles) {
	int tile_size = 16;
	int map_width = 15 * tile_size;
	int map_height = 16 * tile_size;

	std::vector<pointVector> plus_points;



	// Calculate top row plusses
	int top_row_y = tile_size / 2;
	int top_row_x_start = (map_width - 3 * tile_size) / 2;
	for (int i = 0; i < 3; i++) {
		int x = top_row_x_start + i * tile_size;
		pointVector spawnpoint;
		spawnpoint.X = x;
		spawnpoint.Y = top_row_y;
		spawnpoints.push_back(spawnpoint);
	}

	// Calculate bottom row plusses
	int bottom_row_y = map_height - tile_size / 2;
	int bottom_row_x_start = (map_width - 3 * tile_size) / 2;
	for (int i = 0; i < 3; i++) {
		int x = bottom_row_x_start + i * tile_size;
		pointVector spawnpoint;
		spawnpoint.X = x;
		spawnpoint.Y = bottom_row_y;
		spawnpoints.push_back(spawnpoint);
	}

	// Calculate left column plusses
	int left_col_x = tile_size / 2;
	int left_col_y_start = (map_height - 4 * tile_size) / 2;
	for (int i = 0; i < 4; i++) {
		int y = left_col_y_start + i * tile_size;
		pointVector spawnpoint;
		spawnpoint.X = left_col_x;
		spawnpoint.Y = y;
		spawnpoints.push_back(spawnpoint);
	}

	// Calculate right column plusses
	int right_col_x = map_width - tile_size / 2;
	int right_col_y_start = (map_height - 4 * tile_size) / 2;
	for (int i = 0; i < 4; i++) {
		int y = right_col_y_start + i * tile_size;
		pointVector spawnpoint;
		spawnpoint.X = right_col_x;
		spawnpoint.Y = y;
		spawnpoints.push_back(spawnpoint);
	}
	for (int i = 1; i < 50; i++) {
		entities[i] = nullptr;
	}
	
	entities[0] = new player("player1", 60, 60, 16, 16, 20, 2, 1);
	/*entities[1] = new enemy("mob1", 0, 0, 16, 16, 2, 2, 1);
	entities[2] = new enemy("mob2", 20, 20, 16, 16, 2, 2, 1);
	entities[3] = new enemy("mob3", 100, 100, 16, 16, 2, 2, 1);
	*/
	this->collidableTiles = collidableTiles;
	
}
entityManager::~entityManager() {
	for (int i = 0; i < 50; i++) {
		delete entities[i];
	}
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
	player* playerPtr = dynamic_cast<player*>(entities[0]);
	if (movePlayerUp) {
		y = 1;
		playerPtr->setDirection(2);
	}
	else if (movePlayerDown) {
		y = -1;
		playerPtr->setDirection(0);
	}
	if (movePlayerRight) {
		x = 1;
		playerPtr->setDirection(1);
	}
	else if (movePlayerLeft) {
		x = -1;
		playerPtr->setDirection(3);
	}
	moveEntity(0, x, y);
	if (playerShoot) {
		pointVector playerPosition = entities[0]->getPosition();
		pointVector playerHalf = entities[0]->getHalfSize();
		pointVector bulletStart;
		
		
		switch (playerPtr->getDirection()) {
		case 0:
			bulletStart.X = playerPosition.X;
			bulletStart.Y = playerPosition.Y - playerHalf.Y - 5;
			break;
		case 1:
			bulletStart.X = playerPosition.X + playerHalf.X + 5;
			bulletStart.Y = playerPosition.Y;
			break;
		case 2:
			bulletStart.X = playerPosition.X;
			bulletStart.Y = playerPosition.Y + playerHalf.Y + 5;
			break;
		case 3:
			bulletStart.X = playerPosition.X - playerHalf.X - 5;
			bulletStart.Y = playerPosition.Y;
			break;
		default:
				bulletStart.X = 0;
				bulletStart.Y = 0;
			break;
		}
		for (int i = 45; i < 50; i++) {
			if (entities[i] == NULL) {
				
				entities[i] = new bullet("pew pew", bulletStart.X, bulletStart.Y, 4, 4, 1, 5, playerPtr->getStrength());
				bullet* bulletPtr = dynamic_cast<bullet*>(entities[i]);
				bulletPtr->setTravelDirection(playerPtr->getDirection());
				break;
			}
		}
	}
}
void entityManager::clear() {
	for (int i = 1; i < 50; i++) {
		delete entities[i];
		entities[i] = nullptr;
	}
}
void entityManager::spawnEntities(int currentLevel, int spawnDifficulty, int amountOfEnemies) {
	int openSpawns = 3;
	if (currentLevel > 15) {
		openSpawns = 14;
	}
	else if (currentLevel > 10) {
		openSpawns = 10;
	}
	else if (currentLevel > 5) {
		openSpawns = 7;
	}
	int spawned = 0;
	std::vector<int> used_indices;
	while (spawned < amountOfEnemies) {
		int random_index = rand() % openSpawns;
		if (std::find(used_indices.begin(), used_indices.end(), random_index) == used_indices.end()) {
			used_indices.push_back(random_index);
			pointVector p = spawnpoints[random_index];
			enemy *e = new enemy("mob",p.X,p.Y,16,16,1,1,1);
			for (int i = 2; i < 45; i++) {
				if (entities[i] == nullptr) {
					entities[i] = e;
					spawned++;
					break;
				}

			}
			
		}
	}
}
void entityManager::moveEntities() {
	
	pointVector playerPos = entities[0]->getPosition();
	for (int i = 1; i < 50; i++) {
		int x = 0;
		int y = 0;
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
			
		}
		else if (dynamic_cast<bullet*>(entities[i]))
		{

			bullet* bulletPtr = dynamic_cast<bullet*>(entities[i]);
			int direction = bulletPtr->getTravelDirection();
			
			switch (direction) {
			case 0:
				y = -1;
				break;
			case 1:
				x = 1;
				break;
			case 2:
				y = 1;
				break;
			case 3:
				x = -1;
				break;
			}
			
		}
		moveEntity(i, x, y);
	}
}
void entityManager::moveEntity(int toBeMoved,int x,int y) {
	entities[toBeMoved]->stepX(x);
	entities[toBeMoved]->stepY(y);
	for (int j = 0; j < 50; j++) {
		if (entities[toBeMoved] == entities[j] || entities[j] == NULL || entities[toBeMoved] == NULL) {
			continue;
		}
		if (entities[toBeMoved]->checkEntities(*entities[j])) {
			if (dynamic_cast<bullet*>(entities[toBeMoved])) {
				bullet* bulletPtr = dynamic_cast<bullet*>(entities[toBeMoved]);
				bulletPtr->onCollideWall();
				bulletPtr->onCollide(*entities[j]);
				entities[toBeMoved] = nullptr;
				delete bulletPtr;
				break;
			}
			entities[toBeMoved]->onCollide(*entities[j]);
			std::cout << entities[toBeMoved]->getName() << " collides with " << entities[j]->getName() << std::endl;
		}
	}
	for (int j = 0; j < collidableTiles.size(); j++) {
		if (entities[toBeMoved] == NULL) {
			continue;
		}
		if (entities[toBeMoved]->checkTiles(*collidableTiles[j])) {
			if (dynamic_cast<bullet*>(entities[toBeMoved])) {
				bullet* bulletPtr = dynamic_cast<bullet*>(entities[toBeMoved]);
				bulletPtr->onCollideWall();
				
				entities[toBeMoved] = nullptr;
				delete bulletPtr;
			}
			std::cout << entities[toBeMoved]->getName() << " collides with wall" << std::endl;
		}
		
	}
}
void entityManager::checkCollision() {

}