#include "entityManager.h"
#include <cstdlib>
#include "enemy.h"
#include "player.h"
#include "boss.h"
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
	removeTiles();
	addTiles();
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
void EntityManager::removeTiles() {
	center->removeTiles();
}
void EntityManager::addTiles() {
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
		pointVector direction = { x, y };
		playerPtr->setDirection(direction);
	}

	moveEntity(0, x, y);
	if (playerShoot) {
		pointVector playerPosition = playerPtr->getPosition();
		pointVector playerHalf = playerPtr->getHalfSize();
		pointVector bulletStart;
		pointVector playerDirection = playerPtr->getDirection();
		bulletStart.X = (playerPosition.X + playerDirection.X * 9);
		bulletStart.Y = (playerPosition.Y + playerDirection.Y * 9);
		uint8_t bullets = 5;
		//if(entities[1] != nullptr)
		for (uint8_t i = 37; i < 42; i++) {
			if (entities[i] == NULL) {
				entities[i] = new Bullet(bulletStart.X, bulletStart.Y, playerPtr->getStrength());
				Bullet *bulletPtr = dynamic_cast<Bullet*>(entities[i]);
				center->insert(bulletPtr);
				bulletPtr->setTravelDirection(playerPtr->getDirection());
				break;
			}
		}
	}
}
void EntityManager::clear() {
	for (uint8_t i = 1; i < 50; i++) {
		if (entities[i] == nullptr) {
			continue;
		}
		center->remove(entities[i]);
		delete entities[i];
		entities[i] = nullptr;
	}
}
void EntityManager::spawnPlayer(int x, int y) {
	entities[0] = new Player(x, y);
	center->insert(entities[0]);
}

void EntityManager::spawnEntities(uint8_t enemyType, uint8_t amountOfEnemies) {
	std::vector<int> used_indices;
	int spawned = 0;
	int num_spawnpoints = spawnpoints->size();
	while (spawned < amountOfEnemies && used_indices.size() < num_spawnpoints) {
		int random_index = rand() % num_spawnpoints;
		bool index_used = false;
		for (size_t i = 0; i < used_indices.size(); i++) {
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
				Enemy *e = new Enemy(p.X, p.Y, enemyType);

				for (uint8_t i = 2; i < 35; i++) {
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
void EntityManager::updateBoss(pointVector playerPos) {
	bool bossShoot = false;
	if(entities[1] == NULL){
		return;
	}
	Boss *bossPtr = dynamic_cast<Boss*>(entities[1]);
	pointVector movement =  bossPtr->loop(playerPos);

	if(bossShoot){
	pointVector shootDirection = bossPtr->shoot(playerPos);
	pointVector bossPosition = bossPtr->getPosition();
	pointVector bossHalf = bossPtr->getHalfSize();
	pointVector bulletStart;
	bulletStart.X = (shootDirection.X + shootDirection.X * 7);
	bulletStart.Y = (shootDirection.Y + shootDirection.Y * 7);
	//uint8_t bullets = 5;
	//if(entities[1] != nullptr)
	for (uint8_t i = 43; i < 50; i++) {
		if (entities[i] == NULL) {
			entities[i] = new Bullet(bulletStart.X, bulletStart.Y, 1);
			Bullet *bulletPtr = dynamic_cast<Bullet*>(entities[i]);
			center->insert(bulletPtr);
			bulletPtr->setTravelDirection(shootDirection);
			break;
		}
	}
	}
	moveEntity(1,movement.X,movement.Y);
}
void EntityManager::spawnBoss(){
	entities[1] = new Boss(112,8);
	center->insert(entities[1]);
}
void EntityManager::updateEntities() {

	pointVector playerPos = entities[0]->getPosition();
	updateBoss(playerPos);
	for (uint8_t i = 1; i < 50; i++) {
		int x = 0;
		int y = 0;
		if (entities[i] == nullptr) {
			continue;
		}
		if (entities[i]->getHealth() <= 0) {
			center->remove(entities[i]);
			delete entities[i];
			entities[i] = nullptr;
			continue;
		}

		if (dynamic_cast<Enemy*>(entities[i])) {
			Enemy *enemyPtr = dynamic_cast<Enemy*>(entities[i]);
			pointVector newMovement = enemyPtr->update(playerPos);
			x = newMovement.X;
			y = newMovement.Y;
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
	Rectangle box(entities[toBeMoved]->getPosX(), entities[toBeMoved]->getPosY(), 20, 20);
	std::vector<CollidableObject*> *found = new std::vector<CollidableObject*>;
	center->query(box, found);
//	for(int i = 0; i < found->size();i++){
//		if(Tile* wall = dynamic_cast<Tile*>(found->at(i))){
//
//		}
//	}
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
