#ifndef INC_Rectangle_H_
#define INC_Rectangle_H_
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
#endif /* Inc_Rectangle_H_ */
