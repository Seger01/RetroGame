#include "enemy.h"

enemy::enemy() {

}

enemy::enemy(const int& x, const int& y) {
	this->enemyXcoord = x;
	this->enemyYcoord = y;
}

enemy::~enemy() {

}

void enemy::setEnemyXcoord(const int& x) {
	this->enemyXcoord = x;
}

void enemy::setEnemyYcoord(const int& y) {
	this->enemyYcoord = y;
}

int enemy::getEnemyXcoord() {
	return enemyXcoord;
}

int enemy::getEnemyYcoord() {
	return enemyYcoord;
}