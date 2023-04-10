#include "bullet.h"
#include "enemy.h"
Bullet::Bullet(uint8_t x, uint8_t y,uint8_t strength) : Entity(x, y) {
	setSpeed(70);
	setWidth(4);
	setHeight(4);
	setTexture(8);
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
	if (travelDistance >= 3850) {
		this->setHealth(0);
	}
	int X = this->getStart().X;
			if (direction == 1 && (X + this->speed / 10 < 235)) {
				this->position.X += (int) speed;
			} else if (direction == 1 && (X + this->speed / 10 >= 235)) {
				this->position.X = 80;
			} else if (direction == -1 && (X -  this->speed / 10 <= -10)) {
				this->position.X = 2320;
			} else if (direction == -1 && (X - this->speed / 10 > -10)) {
				this->position.X -= (int) speed;
			}
}
void Bullet::stepY(int direction) {
	travelDistance += speed;
	if (travelDistance >= 3850) {
		this->setHealth(0);
	}
	int Y = this->getStart().Y;
		if (direction == 1 && (Y + (this->speed / 10) < 235)) {
			this->position.Y += (int) speed;
		} else if (direction == 1 && (Y + (this->speed / 10) >= 235)) {
			this->position.Y = 80;
		} else if (direction == -1 && (Y -  (this->speed / 10) <= -11)) {
			this->position.Y = 2300;
		} else if (direction == -1 && (Y - (this->speed / 10) > -11)) {
			this->position.Y -= (int) speed;
		}
}

int Bullet::getTexture(){
	return 8;
}
