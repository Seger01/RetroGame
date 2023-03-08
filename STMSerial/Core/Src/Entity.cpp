#include "entity.h"
#include <iostream>

Entity::Entity(std::string name, int x, int y, int width,int height, int health, int speed, int strength) {
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
	start.X = this->position.X + half.X;
	start.Y = this->position.Y + half.Y;
	return start;
}
void Entity::setHealth(int health) {
	this->health = health;

}
int Entity::getHealth() {
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
	this->position.X += shift;
}
void Entity::moveY(int shift) {
	this->position.Y += shift;
}


int Entity::getWidth() {
	return width;
}
int Entity::getHeight() {
	return height;
}
int Entity::getX() {
	return position.X;
}
int Entity::getY() 
{
	return position.Y;
}
pointVector Entity::getPosition() {
	
	return position;
}

int Entity::getSpeed() {
	return speed;
}

int Entity::getStrength() {
	return strength;
}
void Entity::stepX(int direction) {
	if (direction == 1) {
		this->position.X += speed;
	}
	else if(direction == -1) {
		this->position.X -= speed;
	}
}
void Entity::stepY(int direction) {
	if (direction == 1) {
		this->position.Y += speed;
	}
	else if (direction == -1) {
		this->position.Y -= speed;
	}
}
void Entity::setTexture(int texture) {
	textureID = texture;
}
void Entity::onCollide(Entity& object) {
}
bool Entity::checkTiles(tile& object) {
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
void Entity::onDeath() {

}
bool Entity::checkEntities(Entity& object) {
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