#include "collision.h"
#include <iostream>
collision::collision() {
		entityList.push_back(new entity("cube 1",10,10, 10, 10));
		entityList.push_back(new entity("cube 2", 30, 10, 10, 10));
		entityList.push_back(new entity("cube 3", 30, 30, 10, 10));
}
void collision::checkAll() {
	for (int i = 0; i < entityList.size(); i++) {
		for (int j = 0; j < entityList.size(); j++) {
			if (i == j) {
				continue;
			}
			if (checkTwo(*entityList[i], *entityList[j])) {
				//entityList[i]->onCollide();
				std::cout << entityList[i]->getName() << " collides with " << entityList[j]->getName()<< std::endl;
			}
		}
	}
}
std::vector<entity*> collision::getCubes() {
	return entityList;
}
void collision::moveEntity(entity* sprite, int X, int Y) {
	sprite->moveX(X);
	sprite->moveY(Y);
	for (int j = 0; j < entityList.size(); j++) {
		if (sprite == entityList[j]) {
			continue;
		}
		if (checkTwo(*sprite, *entityList[j])) {
			sprite->onCollide();
			std::cout << sprite->getName() << " collides with " << entityList[j]->getName() << std::endl;
		}
	}

}
bool collision::checkTwo( entity &one,entity &two){
	float left = one.getX() - (two.getX() + two.getWidth());
	float right = one.getX() + one.getWidth() - two.getX();
	float bottom = one.getY() - (two.getY() + two.getHeight());
	float top = (one.getY() + one.getHeight()) - two.getY();
	one.setColLeft(left);
	one.setColRight(right);
	one.setColTop(top);
	one.setColBottom(bottom);
	//one.setColX(right);
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