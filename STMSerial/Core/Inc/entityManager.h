#pragma once
#include "entity.h"
#include "Quad.h"
#include "enemy.h"
#include "player.h"
#include "bullet.h"
class EntityManager
{
private:
	Entity *entities[50];
	//soundManager: SoundManager;
	Quad* center;
	std::vector<Tile*> *collidableTiles;
	std::vector<Tile*> *spawnpoints;
public:
	EntityManager(std::vector<Tile*> *collidableTiles,std::vector<Tile*> *spawnpoints);
	virtual ~EntityManager();
	void updateTiles(std::vector<Tile*> *collidableTiles);
	Entity** getEntities();
	void playerAction(bool movePlayerUp, bool movePlayerDown, bool movePlayerLeft, bool movePlayerRight,bool playerShoot);
	void spawnEntities(uint8_t currentLevel, uint8_t spawnDifficulty, uint8_t amountOfEnemies);
	void clear();
	void updateEntities();
	void moveEntity(int toBeMoved, int x, int y);
	void spawnPlayer(int x,int y);
	void checkCollision();
};
