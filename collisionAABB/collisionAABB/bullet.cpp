#include "bullet.h"
#include "enemy.h"
bullet::bullet(std::string name, int x, int y, int width, int height, int health, int speed, int strength) : entity(name, x, y, width, height, health, speed, strength) {
	
}
void bullet::onCollide(entity& object) {
	if(dynamic_cast<enemy*>(&object)) {
		object.setHealth(object.getHealth() - this->getStrength());
	}
}
void bullet::onCollideWall() {
}
void bullet::setTravelDirection(int direction) {
	this->travelDirection = direction;
}
int bullet::getTravelDirection() {
	return travelDirection;
}