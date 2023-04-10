#include "boss.h"
void Boss::onCollide(CollidableObject *object) {

}

void Boss::onDeath() {

}

int Boss::getTexture() {
	static int offset = 0;
	int baseSprite = 0;
	static pointVector lastPosition;
	static pointVector lastSpriteUpdate;
	static long long lastFrameUpdate = 0;

	if (this->position.X == lastPosition.X && this->position.Y == lastPosition.Y) {
		offset = 1;
	} else if (abs(lastSpriteUpdate.X - position.X) >= 1 || abs(lastSpriteUpdate.Y - position.Y) >= 1) {
		if (xTaskGetTickCount() > lastFrameUpdate + 100) {
			lastFrameUpdate = xTaskGetTickCount();

			lastSpriteUpdate = position;

			if (offset == 1) {
				offset = 2;
			} else if (offset == 2) {
				offset = 0;
			} else if (offset == 0) {
				offset = 2;
			}
		}

	}

//		if(direction.X == -1){
//			baseSprite = 9;
//		} else if(direction.X == 1){
//			baseSprite = 3;
//		} else if(direction.Y == 1){
//			baseSprite = 6;
//		} else {
//			baseSprite = 0;
//		}

	lastPosition = this->position;
	return 0;
}
