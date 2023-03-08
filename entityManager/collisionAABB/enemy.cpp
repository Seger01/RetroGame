#include "enemy.h"
#include "player.h"
int enemy::getRemainingSteps() {
	return stepsRemaining;
}
void enemy::onCollide(entity& object) {
	if (dynamic_cast<player*>(&object)) {
		object.setHealth(object.getHealth() - this->getStrength());

	}
	else if (dynamic_cast<enemy*>(&object)) {
		if (stepsRemaining <= 0) { // Need to generate a new random direction
			// Generate a random direction
			directionX = rand() % 3 - 1; // Random integer between -1 and 1
			directionY = rand() % 3 - 1; // Random integer between -1 and 1
			stepsRemaining = 2; // Move in this direction for 2 steps
		}
	}
}
void enemy::onDeath() {

}
pointVector enemy::getDirection() {
	pointVector pos;
	pos.X = directionX;
	pos.Y = directionY;
	return pos;
}
void enemy::decrementRemainingSteps() {
	stepsRemaining--;
}
bool enemy::checkEntities(entity& object) {
	if (dynamic_cast<item*>(&object)) {
		return false;
	}
	pointVector otherPosition = object.getPosition();
	pointVector otherHalfsize = object.getHalfSize();
	pointVector thisPosition = this->getPosition();
	pointVector thisHalfsize = this->getHalfSize();
	int deltaX = otherPosition.X - thisPosition.X;
	int deltaY = otherPosition.Y - thisPosition.Y;
	int intersectX = abs(deltaX) - (otherHalfsize.X + thisHalfsize.X);
	int intersectY = abs(deltaY) - (otherHalfsize.Y + thisHalfsize.Y);
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