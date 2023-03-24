#include "bullet.h"
#include "enemy.h"
Bullet::Bullet(std::string name, uint8_t x, uint8_t y, uint8_t width, uint8_t height, uint8_t health, uint8_t speed, uint8_t strength) : Entity(name, x, y, width, height, health, speed, strength) {
	
}
void Bullet::onCollide(Entity *object) {
	if(dynamic_cast<Enemy*>(object)) {
		object->setHealth(object->getHealth() - this->getStrength());
	}
}
void Bullet::onCollideWall() {
}
void Bullet::setTravelDirection(uint8_t direction) {
	this->travelDirection = direction;
}
uint8_t Bullet::getTravelDirection() {
	return travelDirection;
}