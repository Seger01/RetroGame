#pragma once
#include "entity.h"
#include <vector>

class entityManager
{
private:
	entity *entities[50];
	//soundManager: SoundManager;
	std::vector<tile*> collidableTiles;
	std::vector<pointVector> spawnpoints;
public:
	entityManager(std::vector<tile*> collidableTiles);
	void updateTiles(std::vector<tile*> collidableTiles);
	entity** getEntities();
	void playerAction(bool movePlayerUp, bool movePlayerDown, bool movePlayerLeft, bool movePlayerRight,bool playerShoot);
	void spawnEntities(int currentLevel, int spawnDifficulty, int amountOfEnemies);
	void clear();
	void moveEntities();
	void moveEntity(int toBeMoved, int x, int y);
	void checkCollision();
};