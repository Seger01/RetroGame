#include "entity.h"
#include <iostream>

Entity::Entity(std::string name, uint8_t x, uint8_t y, uint8_t width,uint8_t height, uint8_t health, uint8_t speed,uint8_t strength) {
	this->speed = speed;
	this->health = health;
	this->strength = strength;
	this->name = name;
	this->position.X = x;
	this->position.Y = y;
	this->width = width;
	this->height = height;
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
std::string Entity::getName() {
	return name;
}
void Entity::moveX(int shift) {
	this->position.X += (int)shift;
}
void Entity::moveY(int shift) {
	this->position.Y += (int)shift;
}
int Entity::getTexture() {
	return textureID;
}

uint8_t Entity::getWidth() {
	return width;
}
uint8_t Entity::getHeight() {
	return height;
}
uint8_t Entity::getX() {
	return position.X;
}
uint8_t Entity::getY()
{
	return position.Y;
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
	if (direction == 1) {
		this->position.X += (int)speed;
	}
	else if(direction == -1) {
		this->position.X -= (int)speed;
	}
}
void Entity::stepY(int direction) {
	if (direction == 1) {
		this->position.Y += (int)speed;
	}
	else if (direction == -1) {
		this->position.Y -= (int)speed;
	}
}
void Entity::setTexture(uint8_t texture) {
	textureID = texture;
}
void Entity::onCollide(Entity *object) {
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
			std::cout << "intersect X: " << intersectX << std::endl;
			if (deltaX > 0) {
				moveX(intersectX);
			}
			else {
				moveX(-intersectX);
			}
		}
		else {
			std::cout << "intersect Y: " << intersectY << std::endl;
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
bool Entity::checkEntities(Entity *object) {
	pointVector otherPosition = object->getPosition();
	pointVector otherHalfsize = object->getHalfSize();
	pointVector thisPosition = this->getPosition();
	pointVector thisHalfsize = this->getHalfSize();
	int8_t deltaX = otherPosition.X - thisPosition.X;
	int8_t deltaY = otherPosition.Y - thisPosition.Y;
	int8_t intersectX = abs(deltaX) - (otherHalfsize.X + thisHalfsize.X);
	int8_t intersectY = abs(deltaY) - (otherHalfsize.Y + thisHalfsize.Y);
	if (intersectX < 0 && intersectY < 0) {
		if (intersectX > intersectY) {
			std::cout << "intersect X: " << intersectX << std::endl;
			if (deltaX > 0) {
				moveX(intersectX);
			}
			else {
				moveX(-intersectX);
			}
		}
		else {
			std::cout << "intersect Y: " << intersectY << std::endl;
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
