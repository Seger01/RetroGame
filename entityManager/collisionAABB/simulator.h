#pragma once
#include "entityManager.h"
class simulator
{
private:
	entityManager *em;
	std::vector<tile*> tiles;
public:
	void setup();
	void loop();
	void drawField();
};

