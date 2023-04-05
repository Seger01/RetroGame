#pragma once
#include "CollidableObject.h"
class Rectangle
{
	private:
		int x;
		int y;
		int w;
		int h;
	public:
		Rectangle(int x = 0, int y = 0,int w = 0, int h = 0);
		bool contains(CollidableObject* node);
		bool intersects(Rectangle range);
		int getX();
		int getY();
		int getW();
		int getH();


};