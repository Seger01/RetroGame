#pragma once
#include <string>
class tile {
private:
	int posY = 0;
	int posX = 0;
	int width = 16;
	int height = 16;
public:
	tile(int x, int y) { this->posX = x; this->posY = y; };
	int getPosX() { return posX; };
	int getPosY() { return posY; };
	int getWidth() {
		return width;
	}
	int getHeight() {
		return height;
	}
};
struct pointVector {
	int X;
	int Y;
	
};
class entity
{
private:
	std::string name;
	int health = 1;
	int strength = 0;
	int speed = 0;
	int textureID = 0;
	pointVector position;
	int width = 16;
	int height = 16;
public: 
	void setTexture(int texture);
	entity(std::string name,int x,int y,int width,int height,int health,int speed, int strength);
	pointVector getHalfSize();
	void stepX(int);
	void stepY(int);
	void moveX(int);
	void moveY(int);
	void newLocation(int, int);
	pointVector getStart();
	std::string getName();
	int getX();
	int getY();
	int getWidth();
	int getHeight();
	int getSpeed();
	int getStrength();
	void setHealth(int);
	int getHealth();
	pointVector getPosition();
	virtual bool checkEntities(entity& object);
	virtual bool checkTiles(tile& object);
	virtual void onCollide(entity& object);
	virtual void onDeath();

};
