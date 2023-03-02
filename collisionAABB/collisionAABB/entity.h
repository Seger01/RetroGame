#pragma once
#include <string>
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
	int width=0;
	int height = 0;
public: 

	entity(std::string name,int x,int y,int width,int height);
	pointVector getHalfSize();
	void stepX();
	void stepY();
	void moveX(int);
	void moveY(int);
	void newLocation(int, int);
	std::string getName();
	int getX();
	int getY();
	int getWidth();
	int getHeight();
	pointVector getPosition();
	bool checkCollision(entity& object);
	void onCollide(entity& object);
	void onDeath();

};

