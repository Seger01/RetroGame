#include "item.h"
#include <cmath>
Item::Item(int x,int y) : Entity(x,y){
	// 8 - 9 - 10 - 11 - 12
	// bullets 13

	int randomType = rand() % 4;
	setTexture(randomType + 8);
	setWidth(16);
	setHeight(16);
	itemType = randomType;
}
void Item::onCollide(CollidableObject *object) {

}
bool Item::checkEntities(CollidableObject *object) {
	if (dynamic_cast<Bullet*>(object)) {
		return false;
	}
	pointVector otherPosition;
	otherPosition.X = object->getPosX();
	otherPosition.Y = object->getPosY();
	pointVector otherHalfsize = object->getHalfSize();
	pointVector thisPosition;
	thisPosition.X = this->getPosX();
	thisPosition.Y = this->getPosY();
	pointVector thisHalfsize = this->getHalfSize();
	int deltaX = otherPosition.X - thisPosition.X;
	int deltaY = otherPosition.Y - thisPosition.Y;
	int intersectX = abs(deltaX) - (otherHalfsize.X + thisHalfsize.X);
	int intersectY = abs(deltaY) - (otherHalfsize.Y + thisHalfsize.Y);
	if (intersectX < 0 && intersectY < 0) {
		if (intersectX > intersectY) {
			if (deltaX > 0) {
				moveX(intersectX);
			} else {
				moveX(-intersectX);
			}
		} else {
			if (deltaY > 0) {
				moveY(intersectY);
			} else {
				moveY(-intersectY);
			}
		}
		return true;
	}
	return false;
}
