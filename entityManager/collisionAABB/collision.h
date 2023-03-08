#pragma once
#include "entity.h"
#include <vector>
class collider
{
public:
	collider();
	std::vector<Entity*> getCubes();
	void checkAll();
	void checkMoved();
	void moveEntity(Entity*, int X, int Y);
	bool checkTwo(Entity &one, Entity &two);
private:
	std::vector<Entity*> entityList;

};