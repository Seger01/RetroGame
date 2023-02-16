#pragma once
#include <string>
class entity
{
private:
	std::string name;
	int colRight = 0;
	int colLeft = 0;
	int colTop = 0;
	int colBottom = 0;
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
	void setColLeft(int);
	void setColRight(int);
	void setColTop(int);
	void setColBottom(int);
	int getX();
	int getY();
	int getWidth();
	int getHeight();
	void getPosition();
	void onCollide();

};

