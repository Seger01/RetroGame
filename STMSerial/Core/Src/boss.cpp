#include "boss.h"
#include <cmath>
Boss::Boss(uint8_t x, uint8_t y) :
		Entity(x, y) {
	setWidth(16);
	setHeight(16);
	setTexture(8);
	setSpeed(15);
	setHealth(20);
}
void Boss::onCollide(CollidableObject *object) {

}

void Boss::onDeath() {

}
pointVector Boss::moveToPoint(pointVector point) {
	pointVector newMovement;
	pointVector enemyPos = getPosition();
	destination = point;

	if (destination.X < enemyPos.X) {
		newMovement.X = -1;
	} else if (destination.X > enemyPos.X) {
		newMovement.X = 1;
	}
	if (destination.Y < enemyPos.Y) {
		newMovement.Y = -1;
	} else if (destination.Y > enemyPos.Y) {
		newMovement.Y = 1;
	}
return newMovement;
}

void Boss::setRemainingSteps(uint8_t steps) {
this->stepsRemaining = steps;
}
pointVector Boss::flee(pointVector playerPos) {
pointVector newMovement;
pointVector bossPos = this->position;
int offsetX = rand() % 15 - 7; // Random number between -20 and 20
int offsetY = rand() % 15 - 7;
playerPos.X += offsetX;
playerPos.Y += offsetY;
if (playerPos.X < bossPos.X) {
	newMovement.X = 1;
} else if (playerPos.X > bossPos.X) {
	newMovement.X = -1;
}
if (playerPos.Y < bossPos.Y) {
	newMovement.Y = 1;
} else if (playerPos.Y > bossPos.Y) {
	newMovement.Y = -1;
}
return newMovement;
}
pointVector Boss::loop(pointVector playerPos) {
pointVector newMovement;
pointVector bossPos = this->position;
int deltaX = playerPos.X - this->position.X;
int deltaY = playerPos.Y - this->position.Y;
int radius = sqrt(abs(deltaX)) * sqrt(abs(deltaY));
switch (stage) {
case 0:
	if (radius < 70) {
		flee(playerPos);
	} else {
		if (abs(deltaX) > 70) {
			newMovement.Y = rand() % 3 - 1;
		}
	}
	break;
}

return newMovement;
}
pointVector Boss::shoot(pointVector playerPos) {
//	int offsetX = rand() % 15 - 7;
//	int offsetY = rand() % 15 - 7;
pointVector shotDirection;
int deltaX = playerPos.X - this->position.X;
int deltaY = playerPos.Y - this->position.Y;
int angle = atan2(deltaY, deltaX);
int angleDegrees = std::round((angle * 180) / M_PI);
angleDegrees = (angleDegrees + 360) % 360;
int angle45 = std::round(angleDegrees / 45);
switch (angle45) {
case 0:
	this->shotDirection = { 1, 0 };
	break;
case 1:
	this->shotDirection = { 1, 1 };
	break;
case 2:
	this->shotDirection = { 0, 1 };
	break;
case 3:
	this->shotDirection = { -1, 1 };
	break;
case 4:
	this->shotDirection = { -1, 0 };
	break;
case 5:
	this->shotDirection = { -1, -1 };
	break;
case 6:
	this->shotDirection = { 0, -1 };
	break;
case 7:
	this->shotDirection = { 1, -1 };
	break;
case 8:
	this->shotDirection = { 1, 0 };
	break;
}
return shotDirection;
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
