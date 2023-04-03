#include "Rectangle.h"
Rectangle::Rectangle(int x, int y, int w, int h) {
	this->x = x;
	this->y = y;
	this->w = w;
	this->h = h;
}
int Rectangle::getX() {
	return x;
}
int Rectangle::getY() {
	return y;
}
int Rectangle::getW() {
	return w;
}
int Rectangle::getH() {
	return h;
}
bool Rectangle::contains(CollidableObject* node) {
	int x = node->getPosX();
	int y = node->getPosY();
	return (x >= this->x - this->w &&
		x < this->x + this->w &&
		y >= this->y - this->h &&
		y < this->y + this->h);
}
bool Rectangle::intersects(Rectangle range) {
	return !(range.x - range.w > this->x + this->w ||
		range.x + range.w < this->x - this->w ||
		range.y - range.h > this->y + this->h ||
		range.y + range.h < this->y - this->h);
}