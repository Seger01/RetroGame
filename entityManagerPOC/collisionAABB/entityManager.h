#pragma once
#include "entity.h"
#include <vector>

class EntityManager
{
private:
	Entity *entities[50];
	//soundManager: SoundManager;
	std::vector<Tile*> *collidableTiles;
	std::vector<Tile*> *spawnpoints;
public:
	EntityManager(std::vector<Tile*> *collidableTiles,std::vector<Tile*> *spawnpoints);
	virtual ~EntityManager();
	void updateTiles(std::vector<Tile*> *collidableTiles);
	void spawnPlayer(int x,int Y,int speed,int health,int strength);
	Entity** getEntities();
	void playerAction(bool movePlayerUp, bool movePlayerDown, bool movePlayerLeft, bool movePlayerRight,bool playerShoot);
	void spawnEntities(uint8_t currentLevel, uint8_t spawnDifficulty, uint8_t amountOfEnemies);
	void clear();
	void updateEntities();
	void moveEntity(uint8_t toBeMoved, int x, int y);
	void checkCollision();
};
