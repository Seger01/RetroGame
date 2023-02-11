#include "hero.h"

hero::hero() {

}

hero::hero(const int& x, const int& y) {
	this->heroXcoord = x;
	this->heroYcoord = y;
}

hero::~hero() {

}

void hero::setHeroXcoord(const int& x) {
	this->heroXcoord = x;
}

void hero::setHeroYcoord(const int& y) {
	this->heroYcoord = y;
}

int hero::getHeroXcoord() {
	return heroXcoord;
}

int hero::getHeroYcoord() {
	return heroYcoord;
}