#include "entity.h"
#include <iostream>

entity::entity(std::string name, int x, int y, int width,int height, int health, int speed, int strength) {
	this->speed = speed;
	this->health = health;
	this->strength = strength;
	this->name = name;
	this->position.X = x;
	this->position.Y = y;
	this->width = width;
	this->height = height;
}
pointVector entity::getStart() {
	pointVector start;
	pointVector half = getHalfSize();
	start.X = this->position.X + half.X;
	start.Y = this->position.Y + half.Y;
	return start;
}
void entity::setHealth(int health) {
	this->health = health;

}
int entity::getHealth() {
	return health;
}
pointVector entity::getHalfSize(){
	pointVector halfsize;
	halfsize.X = width / 2;
	halfsize.Y = height / 2;
	return halfsize;
}
std::string entity::getName() {
	return name;
}
void entity::moveX(int shift) {
	this->position.X += shift;
}
void entity::moveY(int shift) {
	this->position.Y += shift;
}


int entity::getWidth() {
	return width;
}
int entity::getHeight() {
	return height;
}
int entity::getX() {
	return position.X;
}
int entity::getY() 
{
	return position.Y;
}
pointVector entity::getPosition() {
	
	return position;
}

int entity::getSpeed() {
	return speed;
}

int entity::getStrength() {
	return strength;
}
void entity::stepX(int direction) {
	if (direction == 1) {
		this->position.X += speed;
	}
	else if(direction == -1) {
		this->position.X -= speed;
	}
}
void entity::stepY(int direction) {
	if (direction == 1) {
		this->position.Y += speed;
	}
	else if (direction == -1) {
		this->position.Y -= speed;
	}
}
void entity::setTexture(int texture) {
	textureID = texture;
}
void entity::onCollide(entity& object) {
}
bool entity::checkTiles(tile& object) {
	pointVector otherPosition;
	otherPosition.X = object.getPosX();
	otherPosition.Y = object.getPosY();
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
void entity::onDeath() {

}
bool entity::checkEntities(entity& object) {
	pointVector otherPosition = object.getPosition();
	pointVector otherHalfsize = object.getHalfSize();
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