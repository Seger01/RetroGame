#pragma once
#include "entity.h"
#include <vector>
class collision
{
public:
	collision();
	std::vector<entity*> getCubes();
	void checkAll();
	void checkMoved();
	bool checkTwo(entity &one, entity &two);
private:
	std::vector<entity*> entityList;

};