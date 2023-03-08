#include "bullet.h"
#include "enemy.h"
Bullet::Bullet(std::string name, int x, int y, int width, int height, int health, int speed, int strength) : Entity(name, x, y, width, height, health, speed, strength) {
	
}
void Bullet::onCollide(Entity& object) {
	if(dynamic_cast<Enemy*>(&object)) {
		object.setHealth(object.getHealth() - this->getStrength());
	}
}
void Bullet::onCollideWall() {
}
void Bullet::setTravelDirection(int direction) {
	this->travelDirection = direction;
}
int Bullet::getTravelDirection() {
	return travelDirection;
}