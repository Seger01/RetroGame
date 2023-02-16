#pragma once
#include <string>
class entity
{
private:
	std::string name;
	int colY = 0;
	int colX = 0;
	int x = 0;
	int y = 0;
	int width=0;
	int height = 0;
public: 
	entity(std::string name,int x,int y,int width,int height);
	void moveX(int);
	void moveY(int);
	//void isColliding(entity& object);
	void newLocation(int, int);
	std::string getName();
	void setColX(int);
	void setColY(int);
	int getX();
	int getY();
	int getWidth();
	int getHeight();
	void getPosition();
	void onCollide();

};

