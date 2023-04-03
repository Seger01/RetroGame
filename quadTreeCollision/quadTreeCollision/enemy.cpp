#include <cstdlib>
#include "enemy.h"
#include "player.h"

uint8_t Enemy::getRemainingSteps() {
	return stepsRemaining;
}
void Enemy::onCollide(CollidableObject *object) {
	Entity* entityptr = dynamic_cast<Player*>(object);
	if (dynamic_cast<Player*>(entityptr)) {
		entityptr->setHealth(entityptr->getHealth() - this->getStrength());

	}
	else if (dynamic_cast<Enemy*>(object)) {
		/*if (stepsRemaining <= 0) { // Need to generate a new random direction
			// Generate a random direction
			directionX = rand() % 3 - 1; // Random integer between -1 and 1
			directionY = rand() % 3 - 1; // Random integer between -1 and 1
			stepsRemaining = 10; // Move in this direction for 2 steps
		}*/
	}
}
void Enemy::onDeath() {

}
pointVector Enemy::getDirection() {
	pointVector pos;
	pos.X = directionX;
	pos.Y = directionY;
	return pos;
}
void Enemy::decrementRemainingSteps() {
	stepsRemaining--;
}
bool Enemy::checkEntities(CollidableObject *object) {
	if (dynamic_cast<Item*>(object)) {
		return false;
	}
	pointVector otherPosition;
	otherPosition.X = object->getPosX();
	otherPosition.Y = object->getPosY();
	pointVector otherHalfsize = object->getHalfSize();
	pointVector thisPosition = this->getPosition();
	pointVector thisHalfsize = this->getHalfSize();
	int8_t deltaX = otherPosition.X - thisPosition.X;
	int8_t deltaY = otherPosition.Y - thisPosition.Y;
	int8_t intersectX = abs(deltaX) - (otherHalfsize.X + thisHalfsize.X);
	int8_t intersectY = abs(deltaY) - (otherHalfsize.Y + thisHalfsize.Y);
	if (intersectX < 0 && intersectY < 0) {
		if (intersectX > intersectY) {
			if (deltaX > 0) {
				moveX(intersectX);
			}
			else {
				moveX(-intersectX);
			}
		}
		else {
			if (deltaY > 0) {
				moveY(intersectY);
			}
			else {
				moveY(-intersectY);
			}
		}
		return true;
	}
	return false;
}
