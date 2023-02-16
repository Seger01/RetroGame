#include "collision.h"
#include <iostream>
collision::collision() {
		entityList.push_back(new entity("cube 1",10,10, 10, 10));
		entityList.push_back(new entity("cube 2", 30, 10, 10, 10));
		entityList.push_back(new entity("cube 1", 10, 30, 10, 10));
}
void collision::checkAll() {
	for (int i = 0; i < entityList.size(); i++) {
		for (int j = 0; j < entityList.size(); j++) {
			if (i == j) {
				continue;
			}
			if (checkTwo(*entityList[i], *entityList[j])) {
				entityList[i]->onCollide();
				std::cout << entityList[i]->getName() << " collides with " << entityList[j]->getName()<< std::endl;
			}
		}
	}
}
std::vector<entity*> collision::getCubes() {
	return entityList;
}
bool collision::checkTwo( entity &one,entity &two){
	float left = one.getX() - (two.getX() + two.getWidth());
	float right = one.getX() + one.getWidth() - two.getX();
	float bottom = one.getY() - (two.getY() + two.getHeight());
	float top = (one.getY() + one.getHeight()) - two.getY();
	/*if (left < 0) {
		one.moveX(left);
	}
	else if(right > 0) {
		one.moveX(right);
		//one.setColX(right);
	}
	else if (top > 0) {
		one.moveX(top);
		//one.setColY(top);
	}
	else if (bottom < 0) {
		one.moveX(bottom);
		//one.setColY(-bottom);
	}*/
		return !(left > 0 || right < 0 || top < 0 || bottom > 0);
	/*if (one.getX() < two.getX() + two.getWidth() &&
		one.getX() + one.getWidth() > two.getX() &&
		one.getY() < two.getY() + two.getHeight() &&
		one.getY() + one.getHeight() > two.getY())
	{
		std::cout << one.getName() << " collides with " << two.getName() << std::endl;
		//one.onCollide(two);
		//two.onCollide(one);
	} */
}