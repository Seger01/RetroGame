#include "entity.h"
#include <iostream>
entity::entity(std::string name, int x, int y, int width, int height) {
	this->name = name;
	this->position.X = x;
	this->position.Y = y;
	this->width = width;
	this->height = height;
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
	
	std::cout << "X: " << position.X << " Y: " << position.Y;
	return position;
}
bool entity::checkCollision(entity& object) {
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
void entity::onCollide(entity& object) {

	/*
	std::cout << "left: " << colLeft << std::endl;
	std::cout << "right: " << colRight << std::endl;
	std::cout << "top: " << colTop << std::endl;
	std::cout << "bottom " << colBottom << std::endl;
	*/

	/*
	if (colLeft < -10) {
		moveX(-(20+colLeft));
	}else if(colLeft >= -10){
		moveX(-colLeft);
	}else if(colTop > 10){
		moveY(20 - colBottom);
	}else {
		moveY(-(20 + colBottom));
	}*/
	/*
	if (colLeft <= 0) {
		moveX(colLeft);
	}
	else if (colRight > 0) {
		moveX(colRight);
	}
	else if (colTop > 0) {
		moveY(colTop);
	}
	else if (colBottom < 0) {
		moveY(colBottom);
	}*/
	//x = x + colX;
	//y = y + colY;
}