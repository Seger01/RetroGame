#pragma once
#ifndef SRC_ENTITYMANAGER_H_
#define SRC_ENTITYMANAGER_H_
#include "entity.h"
#include "Quad.h"
#include "enemy.h"
#include "player.h"
#include "bullet.h"
extern "C" {
#include "FreeRTOS.h"
#include "task.h"
}
class EntityManager
{
private:

	Entity *entities[50];
	//soundManager: SoundManager;
	Quad* center;
	std::vector<Tile*> *collidableTiles;
	uint8_t difficulty = 0;
	std::vector<Tile*> *spawnpoints;
public:
	EntityManager(std::vector<Tile*> *collidableTiles,std::vector<Tile*> *spawnpoints);
	virtual ~EntityManager();
	void removeTiles();
	void addTiles();
	Entity** getEntities();
	uint8_t countEnemies();
	void setDifficulty(uint8_t);
	uint8_t getDifficulty();
	void playerAction(bool movePlayerUp, bool movePlayerDown, bool movePlayerLeft, bool movePlayerRight,bool playerShoot);
	void spawnEntities(uint8_t enemyType, uint8_t amountOfEnemies);
	void updateBoss(pointVector);
	void spawnBoss();
	void clear();
	void updateEntities();
	void moveEntity(int toBeMoved, int x, int y);
	void spawnPlayer(int x,int y);
	void checkCollision();
};

#endif
