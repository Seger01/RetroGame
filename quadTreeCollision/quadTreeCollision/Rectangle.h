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
		Rectangle(int x, int y,int w, int h);
		bool contains(CollidableObject* node);
		bool intersects(Rectangle range);
		int getX();
		int getY();
		int getW();
		int getH();


};