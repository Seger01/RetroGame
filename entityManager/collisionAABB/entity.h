#pragma once
#include <string>
#include "Tile.h"
//class tile {
//private:
//	uint8_t posY = 0;
//	uint8_t posX = 0;
//	uint8_t width = 16;
//	uint8_t height = 16;
//public:
//	tile(uint8_t x, uint8_t y) { this->posX = x; this->posY = y; };
//	uint8_t getPosX() { return posX; };
//	uint8_t getPosY() { return posY; };
//	uint8_t getWidth() {
//		return width;
//	}
//	uint8_t getHeight() {
//		return height;
//	}
//};
struct pointVector {
	uint8_t X;
	uint8_t Y;

};
class Entity
{
private:
	std::string name;
	uint8_t health = 1;
	uint8_t strength = 0;
	uint8_t speed = 0;
	uint8_t textureID = 0;
	pointVector position;
	uint8_t width = 16;
	uint8_t height = 16;
public: 
	void setTexture(uint8_t texture);
	int getTexture();
	Entity(std::string name,uint8_t x,uint8_t y,uint8_t width,uint8_t height,uint8_t health,uint8_t speed, uint8_t strength);
	pointVector getHalfSize();
	void stepX(int);
	void stepY(int);
	void moveX(int);
	void moveY(int);
	void newLocation(uint8_t, uint8_t);
	pointVector getStart();
	std::string getName();
	uint8_t getX();
	uint8_t getY();
	uint8_t getWidth();
	uint8_t getHeight();
	uint8_t getSpeed();
	uint8_t getStrength();
	void setHealth(uint8_t);
	uint8_t getHealth();
	pointVector getPosition();
	virtual bool checkEntities(Entity *object);
	virtual bool checkTiles(Tile *object);
	virtual void onCollide(Entity *object);
	virtual void onDeath();

};

