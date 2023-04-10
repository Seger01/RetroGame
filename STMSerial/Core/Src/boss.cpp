#include "boss.h"
#include <cmath>
Boss::Boss(uint8_t x, uint8_t y) :
		Entity(x, y) {
	setWidth(16);
	setHeight(16);
	setTexture(8);
	setSpeed(15);
	setHealth(20);
	setDestination( { 120, 120 });
}
void Boss::onCollide(CollidableObject *object) {

}

void Boss::onDeath() {

}
void Boss::setDestination(pointVector point) {
	destination = point;
	travelling = true;
}
pointVector Boss::moveToPoint() {
	pointVector newMovement;
	pointVector enemyPos = getPosition();

	if ((enemyPos.X > destination.X - 5 && enemyPos.X < destination.X + 5)
			&& (enemyPos.Y > destination.Y - 5 && enemyPos.Y < destination.Y + 5)) {
		travelling = false;
	}
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
	pointVector bossPos = this->getPosition();
	int offsetX = rand() % 15 - 7; // Random number between -20 and 20
	int offsetY = rand() % 15 - 7;
	playerPos.X += offsetX;
	playerPos.Y += offsetY;
	if (playerPos.X < bossPos.X && bossPos.X < (10 * 16) - 8) {
		newMovement.X = 1;
	} else if (playerPos.X > bossPos.X && bossPos.X > (5 * 16) + 8) {
		newMovement.X = -1;
	}
	if (playerPos.Y < bossPos.Y && bossPos.Y < ((10 * 16) - 8)) {
		newMovement.Y = 1;
	} else if (playerPos.Y > bossPos.Y && bossPos.Y > ((5 * 16) + 8)) {
		newMovement.Y = -1;
	}
	return newMovement;
}
pointVector Boss::lerp(pointVector start, pointVector end, double t) {
  float x = (1.0f - t) * start.X + t * end.X;
  float y = (1.0f - t) * start.Y + t * end.Y;
  return { x, y };
}
pointVector Boss::followPlayer(pointVector playerPos) {
	pointVector newMovement;
	pointVector enemyPos = this->getPosition();
	int offsetX = rand() % 25 - 15; // Random number between -20 and 20
	int offsetY = rand() % 25 - 15;
	playerPos.X += offsetX;
	playerPos.Y += offsetY;
	if (playerPos.X < enemyPos.X) {
		newMovement.X = -1;
	} else if (playerPos.X > enemyPos.X) {
		newMovement.X = 1;
	}
	if (playerPos.Y < enemyPos.Y) {
		newMovement.Y = -1;
	} else if (playerPos.Y > enemyPos.Y) {
		newMovement.Y = 1;
	}
	return newMovement;
}
pointVector Boss::loop(pointVector playerPos) {

	pointVector newMovement;
//pointVector bossPos = this->getPosition();
	int deltaX = playerPos.X - this->getPosX();
	int deltaY = playerPos.Y - this->getPosY();
	int radius = sqrt(deltaX * deltaX + deltaY * deltaY);

	switch (stage) {
	case 0:
		if (travelling) {
			return moveToPoint();
		}
		stage = 2;
		break;
	case 1:
		//int fleeDistance = (rand() % 15) + 30;
		if (radius < 75) {
			return flee(playerPos);
		} else if(radius > 80){
			return followPlayer(playerPos);
		}else {
			//const float smoothingFactor = 0.2f;
				//const pointVector targetPos = lerp(centerPos, playerPos, lerpValue);
			//pointVector smoothedPos = lerp(getPosition(), {120,120}, smoothingFactor);
			//setDestination({120,120});
			return moveToPoint();
		}
		//return flee(playerPos);
		break;
	default:
		break;
	}


	return newMovement;
}
pointVector Boss::shoot(pointVector playerPos) {
//	int offsetX = rand() % 15 - 7;
//	int offsetY = rand() % 15 - 7;
	int deltaX = playerPos.X - this->getPosX();
	int deltaY = playerPos.Y - this->getPosY();
	float angle = atan2(deltaY, deltaX);
	float angleDegrees = angle * 180.0f / M_PI;
	int angle45 = std::round(((static_cast<int>(angleDegrees) + 360) % 360) / 45);
	switch (angle45) {
	    case 0:
	        return { 1, 0 };
	    case 1:
	        return { 1, 1 };
	    case 2:
	        return { 0, 1 };
	    case 3:
	        return { -1, 1 };
	    case 4:
	        return { -1, 0 };
	    case 5:
	        return { -1, -1 };
	    case 6:
	        return { 0, -1 };
	    case 7:
	        return { 1, -1 };
	    default:
	        return { 1, 0 };
	}
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
