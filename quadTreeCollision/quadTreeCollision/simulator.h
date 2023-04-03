#pragma once
#include "entityManager.h"
#include "LevelManager.h"
class Simulator
{
private:
	EntityManager *em;
	LevelManager *lm;
	std::vector<Tile*> tiles;
	std::vector<Tile*> spawns;
public:
	void setup();
	void loop();
	void drawField();
};

