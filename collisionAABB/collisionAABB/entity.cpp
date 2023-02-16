#include "entity.h"
#include <iostream>
entity::entity(std::string name, int x, int y, int width, int height) {
	this->name = name;
	this->x = x;
	this->y = y;
	this->width = width;
	this->height = height;
}
std::string entity::getName() {
	return name;
}
void entity::moveX(int shift) {
	this->x += shift;
}
void entity::moveY(int shift) {
	this->y += shift;
}
void entity::newLocation(int x, int y) {
	this->x = x;
	this->y = y;
}
void entity::setColTop(int colX) {
	this->colTop= colX;
}
void entity::setColBottom(int colX) {
	this->colBottom = colX;
}
void entity::setColRight(int colX) {
	this->colRight = colX;
}
void entity::setColLeft(int colX) {
	this->colLeft = colX;
}

int entity::getWidth() {
	return width;
}
int entity::getHeight() {
	return height;
}
int entity::getX() {
	return x;
}
int entity::getY() 
{
	return y;
}
void entity::getPosition() {
	std::cout << "X: " << x << " Y: " << y << std::endl;
}
void entity::onCollide() {
	 
	std::cout << "left: " << colLeft << std::endl;
	std::cout << "right: " << colRight << std::endl;
	std::cout << "top: " << colTop << std::endl;
	std::cout << "bottom " << colBottom << std::endl;
	
	//x = x + colX;
	//y = y + colY;
}