#include "entity.h"


Entity::Entity(){

}
uint8_t Entity::getPosX() {
	return position.X;
}
uint8_t Entity::getPosY() {
	return position.Y;
}
bool Entity::isCollidable() {
	return true;
}
void Entity::setWidth(uint8_t width){
	this->width = width;
}
void Entity::setHeight(uint8_t height){
	this->height = height;
}
void Entity::setSpeed(uint8_t speed){
	this->speed = speed;
}
void Entity::setStrength(uint8_t strength){
	this->strength = strength;
}
Entity::Entity( uint8_t x, uint8_t y) {
	this->speed = 0;
	this->strength = 0;
	this->position.X = x;
	this->position.Y = y;
	this->width = 0;
	this->height = 0;
}
pointVector Entity::getStart() {
	pointVector start;
	pointVector half = getHalfSize();
	start.X = this->position.X - half.X;
	start.Y = this->position.Y - half.Y;
	return start;
}
void Entity::setHealth(uint8_t health) {
	this->health = health;

}
uint8_t Entity::getHealth() {
	return health;
}
pointVector Entity::getHalfSize(){
	pointVector halfsize;
	halfsize.X = width / 2;
	halfsize.Y = height / 2;
	return halfsize;
}
int Entity::getTexture() {
	return textureID;
}
void Entity::moveX(int shift) {
	this->position.X += (int)shift;
	if (direction == 1 && (X + shift < 226)) {
		this->position.X += shift;
	} else if (direction == 1 && (X + shift >= 226)) {
				this->position.X = 8;
	} else if (direction == -1 && (X - shift <= -1)) {
				this->position.X = 232;
	} else if (direction == -1 && (X - shift > - 1)) {
				this->position.X -= shift;
	}
}
void Entity::moveY(int shift) {
	this->position.Y += (int)shift;
	int Y = this->getStart().Y;
		if (direction == 1 && (Y + shift < 224)) {
			this->position.Y += shift;
		} else if (direction == 1 && (Y + shift >= 224)) {
			this->position.Y = 8;
		} else if (direction == -1 && (Y -  shift <= -1)) {
			this->position.Y = 230;
		} else if (direction == -1 && (Y - shift > -1)) {
			this->position.Y -= shift;
		}
}


uint8_t Entity::getWidth() {
	return width;
}
uint8_t Entity::getHeight() {
	return height;
}
pointVector Entity::getPosition() {
	
	return position;
}

uint8_t Entity::getSpeed() {
	return speed;
}

uint8_t Entity::getStrength() {
	return strength;
}
void Entity::stepX(int direction) {
	int X = this->getStart().X;
		if (direction == 1 && (X + this->speed < 226)) {
			this->position.X += (int) speed;
		} else if (direction == 1 && (X + this->speed >= 226)) {
			this->position.X = 8;
		} else if (direction == -1 && (X -  this->speed <= -1)) {
			this->position.X = 232;
		} else if (direction == -1 && (X - this->speed > -1)) {
			this->position.X -= (int) speed;
		}
}
void Entity::stepY(int direction) {

	int Y = this->getStart().Y;
	if (direction == 1 && (Y + this->speed < 224)) {
		this->position.Y += (int) speed;
	} else if (direction == 1 && (Y + this->speed >= 224)) {
		this->position.Y = 8;
	} else if (direction == -1 && (Y -  this->speed <= -1)) {
		this->position.Y = 230;
	} else if (direction == -1 && (Y - this->speed > -1)) {
		this->position.Y -= (int) speed;
	}
}
void Entity::setTexture(uint8_t texture) {
	textureID = texture;
}
void Entity::onCollide(CollidableObject*object) {
}
bool Entity::checkTiles(Tile *object) {
	pointVector otherPosition;
	otherPosition.X = object->getPosX();
	otherPosition.Y = object->getPosY();
	pointVector otherHalfsize;
	otherHalfsize.X = 8;
	otherHalfsize.Y = 8;
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
void Entity::onDeath() {

}
bool Entity::checkEntities(CollidableObject *object) {
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
