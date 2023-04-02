#include "bullet.h"
#include "enemy.h"
Bullet::Bullet(uint8_t x, uint8_t y, uint8_t width, uint8_t height, uint8_t health, uint8_t speed, uint8_t strength) : Entity(x, y, width, height, health, speed, strength) {
	
}
void Bullet::onCollide(CollidableObject *object) {
	Entity *entityptr = dynamic_cast<Entity*>(object);
	if(dynamic_cast<Enemy*>(entityptr)) {
		if(this->getStrength() > entityptr->getHealth()){
			entityptr->setHealth(0);
		} else {
			entityptr->setHealth(entityptr->getHealth() - this->getStrength());

		}

	}
}
void Bullet::onCollideWall() {
}
void Bullet::setTravelDirection(pointVector direction) {
	this->travelDirection = direction;
}
pointVector Bullet::getTravelDirection() {
	return travelDirection;
}
