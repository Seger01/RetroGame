#include "bullet.h"
#include "enemy.h"
#include "player.h"

#include "SoundManager.h"
Bullet::Bullet(uint8_t x, uint8_t y,uint8_t strength) : Entity(x, y) {
	setSpeed(70);
	setWidth(4);
	setHeight(4);
	setTexture(13);
	setStrength(strength);
}
void Bullet::onCollide(CollidableObject *object) {
	Entity *entityptr = dynamic_cast<Entity*>(object);
	this->setHealth(0);
	soundManager.setSoundActive(5);
if(dynamic_cast<Enemy*>(entityptr) || dynamic_cast<Boss*>(entityptr)) {
		if(this->getStrength() > entityptr->getHealth()){
			entityptr->setHealth(0);
		} else {
			entityptr->setHealth(entityptr->getHealth() - this->getStrength());
		}

	}else if(dynamic_cast<Player*>(entityptr)){
		entityptr->setHealth(entityptr->getHealth() - 1);
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
	if (travelDistance >= 2900) {
		this->setHealth(0);
	}
	int X = this->getStart().X;
			if (direction == 1 && (X + this->speed / 10 < 235)) {
				this->position.X += (int) speed;
			} else if (direction == 1 && (X + this->speed / 10 >= 235)) {
				this->position.X = 80;
			} else if (direction == -1 && (X -  this->speed / 10 <= -1)) {
				this->position.X = 2320;
			} else if (direction == -1 && (X - this->speed / 10 > -1)) {
				this->position.X -= (int) speed;
			}
}
void Bullet::stepY(int direction) {
	travelDistance += speed;
	if (travelDistance >= 2900) {
		this->setHealth(0);
	}
	int Y = this->getStart().Y;
		if (direction == 1 && (Y + (this->speed / 10) < 235)) {
			this->position.Y += (int) speed;
		} else if (direction == 1 && (Y + (this->speed / 10) >= 235)) {
			this->position.Y = 80;
		} else if (direction == -1 && (Y -  (this->speed / 10) <= -1)) {
			this->position.Y = 2320;
		} else if (direction == -1 && (Y - (this->speed / 10) > -1)) {
			this->position.Y -= (int) speed;
		}
}
bool Bullet::checkEntities(CollidableObject *object) {
	if (dynamic_cast<Item*>(object)) {
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
int Bullet::getTexture(){
	return 15;
}
