#include "item.h"
#include <cmath>
Item::Item(int x,int y) : Entity(x,y){
	// 8 - 9 - 10 - 11 - 12
	// bullets 13

	int randomType = rand() % 4;
	setTexture(randomType + 8);
	itemType = randomType;
}
void Item::onCollide(CollidableObject *object) {

}
