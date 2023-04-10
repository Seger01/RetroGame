#include "entity.h"


Entity::Entity(){

}
uint16_t Entity::getPosX() {
	return position.X / 10;
}
uint16_t Entity::getPosY() {
	return position.Y / 10;
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
	this->position.X = x * 10;
	this->position.Y = y * 10;
	this->width = 0;
	this->height = 0;
}
pointVector Entity::getStart() {
	pointVector start;
	pointVector half = getHalfSize();
	start.X = (this->getPosX() - half.X);
	start.Y = (this->getPosY() - half.Y);
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
	static int offset;
	static long long lastOffsetUpdate = 0;

	if(xTaskGetTickCount() > lastOffsetUpdate + 150){
		lastOffsetUpdate = xTaskGetTickCount();
		offset = !offset;
	}
	return textureID + offset;
}
void Entity::moveX(int shift) {
	int X = this->getPosX();
	if((X + shift) < 224 || (X + shift) > -10){
		this->position.X += shift * 10;
	}else if((X + shift) > 224){
		this->position.X  = 800;
	}else if((X + shift) < -1){
		this->position.X  = 2300;
	}
}

void Entity::moveY(int shift) {
	int Y = this->getPosY();
	if((Y + shift) < 224 || (Y + shift) > -10){
			this->position.Y += shift * 10;
		}else if((Y + shift) > 224){
			this->position.Y = 800;
		}else if((Y + shift) < -1){
			this->position.Y = 2300;
		}
}


uint8_t Entity::getWidth() {
	return width;
}
uint8_t Entity::getHeight() {
	return height;
}
pointVector Entity::getPosition() {
	pointVector returnPos;
	returnPos.X  = position.X / 10;
	returnPos.Y  = position.Y / 10;
	return returnPos;
}

uint8_t Entity::getSpeed() {
	return speed;
}

uint8_t Entity::getStrength() {
	return strength;
}
void Entity::stepX(int direction) {
		int X = this->getStart().X;
		if (direction == 1 && (X + this->speed < 235)) {
			this->position.X += (int) speed;
		} else if (direction == 1 && (X + this->speed >= 235)) {
			this->position.X = 80;
		} else if (direction == -1 && (X -  this->speed <= -10)) {
			this->position.X = 2320;
		} else if (direction == -1 && (X - this->speed > -10)) {
			this->position.X -= (int) speed;
		}
}

void Entity::setX(int newX){
	this->position.X = newX * 10;
}

void Entity::setY(int newY){
	this->position.Y = newY * 10;
}

void Entity::stepY(int direction) {

	int Y = this->getStart().Y;
	if (direction == 1 && (Y + this->speed < 235)) {
		this->position.Y += (int) speed;
	} else if (direction == 1 && (Y + this->speed >= 235)) {
		this->position.Y = 80;
	} else if (direction == -1 && (Y -  this->speed <= -11)) {
		this->position.Y = 2300;
	} else if (direction == -1 && (Y - this->speed > -11)) {
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
