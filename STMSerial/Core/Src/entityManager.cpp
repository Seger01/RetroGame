#include "entityManager.h"
#include <cstdlib>
#include "enemy.h"
#include "player.h"
#include "bullet.h"
#include "entity.h"
#include "Rectangle.h"
#include <vector>
EntityManager::EntityManager(std::vector<Tile*> *collidableTiles, std::vector<Tile*> *spawnpoints) {
	//collidableTiles->clear();
	//collidableTiles->push_back(new	Tile(50, 50, 3, true, false));
	//collidableTiles->push_back(new	Tile(100,20, 3, false, true));
	this->collidableTiles = collidableTiles;
	this->spawnpoints = spawnpoints;
	for (uint8_t i = 1; i < 50; i++) {
		entities[i] = nullptr;
	}

	Rectangle map(120, 120, 120, 120);
	center = new Quad(map);
	for (int i = 0; i < collidableTiles->size(); i++) {
		center->insert(collidableTiles->at(i));
	}
}
EntityManager::~EntityManager() {
	for (uint8_t i = 0; i < 50; i++) {
		delete entities[i];
	}
	delete center;
	delete spawnpoints;
	delete collidableTiles;
}
Entity** EntityManager::getEntities() {
	return entities;
}
void EntityManager::updateTiles(std::vector<Tile*> *collidableTiles) {
	this->spawnpoints = spawnpoints;
	for (int i = 0; i < collidableTiles->size(); i++) {
			center->remove(collidableTiles->at(i));
		}
		this->collidableTiles = collidableTiles;
		for (int i = 0; i < collidableTiles->size(); i++) {
			center->insert(collidableTiles->at(i));
		}
}
void EntityManager::playerAction(bool movePlayerUp, bool movePlayerDown, bool movePlayerLeft, bool movePlayerRight, bool playerShoot) {
	int x = 0;
	int y = 0;
	Player *playerPtr = dynamic_cast<Player*>(entities[0]);
	if (movePlayerUp) {
		y = 1;
	} else if (movePlayerDown) {
		y = -1;

	}
	if (movePlayerRight) {
		x = 1;


	} else if (movePlayerLeft) {
		x = -1;

	}
	if (x != 0 || y != 0) {
		pointVector direction = { x,y };
		playerPtr->setDirection(direction);
	}
	
	moveEntity(0, x, y);
	if (playerShoot) {
		pointVector playerPosition = entities[0]->getPosition();
		pointVector playerHalf = entities[0]->getHalfSize();
		pointVector bulletStart;
		pointVector playerDirection = playerPtr->getDirection();
		bulletStart.X = (playerPosition.X + playerDirection.X * 9);
		bulletStart.Y = (playerPosition.Y + playerDirection.Y * 9);
		for (uint8_t i = 45; i < 50; i++) {
			if (entities[i] == NULL) {

				entities[i] = new Bullet(bulletStart.X, bulletStart.Y, 4, 4, 1, 5, playerPtr->getStrength());
				Bullet *bulletPtr = dynamic_cast<Bullet*>(entities[i]);
				bulletPtr->setTexture(7);
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

void EntityManager::spawnPlayer(int x, int y, int speed, int health, int strength) {
	entities[0] = new Player(x, y, 16, 16, health, speed, strength);
	center->insert(entities[0]);
}

void EntityManager::spawnEntities(uint8_t currentLevel, uint8_t spawnDifficulty, uint8_t amountOfEnemies) {

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

			for (Entity *e : entities) {
				if (e != nullptr && e->getPosX() == p.X && e->getPosY() == p.Y) {
					spawn_occupied = true;
					break;
				}
			}
			if (!spawn_occupied) {
				Entity *e = new Enemy(p.X, p.Y, 16, 16, 2, 1, 1);
				for (uint8_t i = 1; i < 45; i++) {
					if (entities[i] == nullptr) {
						entities[i] = e;
						center->insert(entities[i]);
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
		if (entities[i] == nullptr) {
			continue;
		}
			if (entities[i]->getHealth() <= 0) {
				center->remove(entities[i]);
				delete entities[i];
				entities[i] = nullptr;
				continue;
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
			pointVector direction = bulletPtr->getTravelDirection();

			x = direction.X;
			y = direction.Y;

		}
		moveEntity(i, x, y);
	}
}
void EntityManager::moveEntity(int toBeMoved, int x, int y) {
	center->remove(entities[toBeMoved]);
	entities[toBeMoved]->stepX(x);
	entities[toBeMoved]->stepY(y);
	Rectangle box(entities[toBeMoved]->getPosX(), entities[toBeMoved]->getPosY(), 15, 15);
	std::vector<CollidableObject*>* found = new std::vector<CollidableObject*>;
	center->query(box, found);
	for (uint8_t j = 0; j < found->size(); j++) {
		if (found->at(j) == entities[toBeMoved]) {
			continue;
		}
		if (entities[toBeMoved]->checkEntities(found->at(j))) {
			if (dynamic_cast<Bullet*>(entities[toBeMoved])) {
				Bullet *bulletPtr = dynamic_cast<Bullet*>(entities[toBeMoved]);
				bulletPtr->onCollide(found->at(j));
				break;
			}

			entities[toBeMoved]->onCollide(found->at(j));
		}

	}
	center->insert(entities[toBeMoved]);
	delete found;

}
void EntityManager::checkCollision() {

}
