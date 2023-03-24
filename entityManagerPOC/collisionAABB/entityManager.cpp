#include "entityManager.h"

#include <iostream>
#include "enemy.h"
#include "player.h"
#include "bullet.h"
#include "entity.h"

#include <vector>
EntityManager::EntityManager(std::vector<Tile*>* collidableTiles, std::vector<Tile*>* spawnpoints){
	this->collidableTiles = collidableTiles;
	this->spawnpoints = spawnpoints;
	for (uint8_t i = 1; i < 50; i++) {
		entities[i] = nullptr;
	}

	entities[0] = new Player("player1", 60, 60, 16, 16, 20, 2, 1);
	/*entities[1] = new Enemy("mob1", 0, 0, 16, 16, 2, 2, 1);
	 entities[2] = new Enemy("mob2", 20, 20, 16, 16, 2, 2, 1);
	 entities[3] = new Enemy("mob3", 100, 100, 16, 16, 2, 2, 1);
	 */


}
void EntityManager::spawnPlayer(int x, int y, int speed, int health, int strength) {
	entities[0] = new Player("player1", x,y, 16, 16, health, speed, strength);
}
EntityManager::~EntityManager() {
	for (uint8_t i = 0; i < 50; i++) {
		delete entities[i];
	}
	delete spawnpoints;
	delete collidableTiles;
}
Entity** EntityManager::getEntities() {
	return entities;
}
void EntityManager::updateTiles(std::vector<Tile*> *collidableTiles) {
	this->collidableTiles = collidableTiles;
}
void EntityManager::playerAction(bool movePlayerUp, bool movePlayerDown,
		bool movePlayerLeft, bool movePlayerRight, bool playerShoot) {
	int x = 0;
	int y = 0;
	Player *playerPtr = dynamic_cast<Player*>(entities[0]);
	if (movePlayerUp) {
		y = 1;
		playerPtr->setDirection(2);
	} else if (movePlayerDown) {
		y = -1;
		playerPtr->setDirection(0);
	}
	if (movePlayerRight) {
		x = 1;
		playerPtr->setDirection(1);
	} else if (movePlayerLeft) {
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
		for (uint8_t i = 45; i < 50; i++) {
			if (entities[i] == NULL) {

				entities[i] = new Bullet("pew pew", bulletStart.X,
						bulletStart.Y, 4, 4, 1, 5, playerPtr->getStrength());
				Bullet *bulletPtr = dynamic_cast<Bullet*>(entities[i]);
				bulletPtr->setTravelDirection(playerPtr->getDirection());
				break;
			}
		}
	}
}
void EntityManager::clear() {
	for (uint8_t i = 1; i < 50; i++) {
		delete entities[i];
		entities[i] = nullptr;
	}
}
void EntityManager::spawnEntities(uint8_t currentLevel, uint8_t spawnDifficulty,
		uint8_t amountOfEnemies) {
	std::vector<int> used_indices;
	int spawned = 0;
	int num_spawnpoints = spawnpoints->size();
	while (spawned < amountOfEnemies && used_indices.size() < num_spawnpoints) {
		int random_index = rand() % num_spawnpoints;
		bool index_used = false;
		for (int i = 0; i < used_indices.size(); i++) {
			if (used_indices[i] == random_index) {
				index_used = true;
				break;
			}
		}
		if (!index_used) {
			used_indices.push_back(random_index);
			pointVector p;
			p.X = spawnpoints->at(random_index)->getPosX();
			p.Y = spawnpoints->at(random_index)->getPosY();
			bool spawn_occupied = false;
			for (Entity* e : entities) {
				if (e != nullptr && e->getX() == p.X && e->getY() == p.Y) {
					spawn_occupied = true;
					break;
				}
			}
			if (!spawn_occupied) {
				Entity* e = new Enemy("mob", p.X, p.Y, 16, 16, 1, 1, 1);
				for (uint8_t i = 1; i < 45; i++) {
					if (entities[i] == nullptr) {
						entities[i] = e;
						spawned++;
						break;
					}
				}
			}
		}
	}

}
void EntityManager::updateEntities() {

	pointVector playerPos = entities[0]->getPosition();
	for (uint8_t i = 1; i < 50; i++) {
		if (entities[i] != nullptr) {
			if (entities[i]->getHealth() <= 0) {
				delete entities[i];
				entities[i] = nullptr;
			}
		}
		int x = 0;
		int y = 0;
		if (dynamic_cast<Enemy*>(entities[i])) {
			Enemy *enemyPtr = dynamic_cast<Enemy*>(entities[i]);
			if (enemyPtr->getRemainingSteps() > 0) {
				pointVector direction = enemyPtr->getDirection();
				enemyPtr->stepX(direction.X);
				enemyPtr->stepY(direction.Y);
				enemyPtr->decrementRemainingSteps();
				break;
			}
			pointVector enemyPos = enemyPtr->getPosition();
			if (playerPos.X < enemyPos.X) {
				x = -1;
			} else if (playerPos.X > enemyPos.X) {
				x = 1;
			} 
			if (playerPos.Y < enemyPos.Y) {
				y = -1;
			} else if (playerPos.Y > enemyPos.Y) {
				y = 1;
			}

		} else if (dynamic_cast<Bullet*>(entities[i])) {

			Bullet *bulletPtr = dynamic_cast<Bullet*>(entities[i]);
			uint8_t direction = bulletPtr->getTravelDirection();

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
void EntityManager::moveEntity(uint8_t toBeMoved, int x, int y) {
	entities[toBeMoved]->stepX(x);
	entities[toBeMoved]->stepY(y);
	for (uint8_t j = 0; j < 50; j++) {
		if (entities[toBeMoved]
				== entities[j]|| entities[j] == NULL || entities[toBeMoved] == NULL) {
			continue;
		}
		if (entities[toBeMoved]->checkEntities(entities[j])) {
			if (dynamic_cast<Bullet*>(entities[toBeMoved])) {
				Bullet *bulletPtr = dynamic_cast<Bullet*>(entities[toBeMoved]);
				bulletPtr->onCollideWall();
				bulletPtr->onCollide(entities[j]);
				entities[toBeMoved] = nullptr;
				delete entities[toBeMoved];
				break;
			}
			entities[toBeMoved]->onCollide(entities[j]);
			std::cout << entities[toBeMoved]->getName() << " collides with "
					<< entities[j]->getName() << std::endl;
		}
	}
	for (uint8_t j = 0; j < collidableTiles->size(); j++) {
		if (entities[toBeMoved] == NULL) {
			continue;
		}
		if (entities[toBeMoved]->checkTiles(collidableTiles->at(j))) {
			std::cout << entities[toBeMoved]->getName() << " collides with wall" << std::endl;
			if (dynamic_cast<Bullet*>(entities[toBeMoved])) {
				Bullet *bulletPtr = dynamic_cast<Bullet*>(entities[toBeMoved]);
				
				bulletPtr->onCollideWall();
				delete entities[toBeMoved];
				entities[toBeMoved] = nullptr;
				
			}
			
		}

	}
}
void EntityManager::checkCollision() {

}
