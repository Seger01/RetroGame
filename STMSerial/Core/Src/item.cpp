#include "item.h"
#include <cmath>
Item::Item(int x,int y) : Entity(x,y){
	// 8 - 9 - 10 - 11 - 12
	// bullets 13

	int randomType = rand() % 4;
	texture = randomType + 10;
	setWidth(16);
	setHeight(16);
	itemType = randomType;
}
void Item::onCollide(CollidableObject *object) {

}

int Item::getTexture(){
	return texture;
}
