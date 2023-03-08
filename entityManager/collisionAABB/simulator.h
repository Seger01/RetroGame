#pragma once
#include "entityManager.h"
class Simulator
{
private:
	EntityManager *em;
	std::vector<tile*> tiles;
public:
	void setup();
	void loop();
	void drawField();
};

