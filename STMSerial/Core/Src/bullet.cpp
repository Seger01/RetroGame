#include "bullet.h"
#include "enemy.h"
Bullet::Bullet(uint8_t x, uint8_t y,uint8_t strength) : Entity(x, y) {
	setSpeed(5);
	setWidth(4);
	setHeight(4);
	setStrength(strength);
}
void Bullet::onCollide(CollidableObject *object) {
	Entity *entityptr = dynamic_cast<Entity*>(object);
	this->setHealth(0);
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
void Bullet::stepX(int direction) {
	travelDistance += speed;
	if (travelDistance > 240) {
		this->setHealth(0);
	}
	if (direction == 1 && (this->position.X + this->speed < 240)) {
		this->position.X += (int)speed;
	}
	else if (direction == 1 && (this->position.X + this->speed >= 240))
	{
		this->position.X = 0;
	}
	else if (direction == -1 && (this->position.X - this->speed > 0)) {
		this->position.X -= (int)speed;
	}
	else if (direction == -1 && (this->position.X - this->speed <= 0)) {
		this->position.X = 240;
	}
}
void Bullet::stepY(int direction) {
	travelDistance += speed;
	if (travelDistance > 240) {
		this->setHealth(0);
	}
	switch (direction) {
	case 1:
		position.Y += this->speed;
		if (this->position.Y > 240) {
			this->position.Y = 0;
		}
		break;
	case -1:
		this->position.Y -= this->speed;
		if (this->position.Y > 240) {
			position.Y = 240;
		}
		break;
	}
}
