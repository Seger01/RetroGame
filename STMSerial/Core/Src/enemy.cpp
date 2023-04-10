#include <cstdlib>
#include "enemy.h"
#include "player.h"
extern "C" {
#include "FreeRTOS.h"
#include "task.h"
}
Enemy::Enemy(uint8_t x, uint8_t y, uint8_t type) :
		Entity(x, y) {
	setWidth(16);
	setHeight(16);
	this->type = type;
	uint8_t posX = this->getPosX();
	uint8_t posY = this->getPosY();
	if (posX < 25) {
		direction.X = 1;
	} else if (posX > 220) {
		direction.X = -1;
	} else if (posY < 25) {
		direction.Y = 1;
	} else if(posY > 220){
		direction.Y = -1;
	}
	stepsRemaining = 15;
	switch (type) {
	case 1:
		//regular enemy
		setSpeed(10);
		setHealth(2);
		setTexture(0);
		break;
	case 2:
		// butterfly
		setSpeed(5);
		setHealth(1);
		setTexture(2);
		stepsRemaining = 5;
		break;
	case 3:
		// butterfly
		setSpeed(10);
		setHealth(1);
		setTexture(4);
		break;
	case 4:
		//heavy boi
		setSpeed(10);
		setHealth(4);
		setTexture(6);
		break;
	}

}
;
uint8_t Enemy::getType(){
	return type;
}
pointVector Enemy::update(pointVector playerPos) {
	pointVector newMovement;
	pointVector enemyPos = this->getPosition();
	int deltaX = playerPos.Y - this->getPosX();
	int deltaY = playerPos.Y - this->getPosY();
	if (stepsRemaining > 0) {
			newMovement.X = direction.X;
			newMovement.Y = direction.Y;
			stepsRemaining--;
			return newMovement;
	}
	else{
		newMovement = followPlayer(playerPos);
	}
//	if (abs(deltaX) < 140 && abs(deltaY) < 140) {
//		newMovement = followPlayer(playerPos);
//	}
//	else {
//		switch (type) {
//		case 1:
//			randomSteps();
//			stepsRemaining = 10;
//			break;
//		case 2:
//			randomSteps();
//			stepsRemaining = 15;
//			break;
//		case 3:
//
//			break;
//		case 4:
//			if (locationLoc.X != 0 && locationLoc.Y != 0) {
//				if (locationLoc.X == enemyPos.X && locationLoc.Y == enemyPos.Y) {
//					locationLoc = playerPos;
//				}
//				if (locationLoc.X < enemyPos.X) {
//					newMovement.X = -1;
//				} else if (locationLoc.X > enemyPos.X) {
//					newMovement.X = 1;
//				}
//				if (locationLoc.Y < enemyPos.Y) {
//					newMovement.Y = -1;
//				} else if (locationLoc.Y > enemyPos.Y) {
//					newMovement.Y = 1;
//				}
//			} else {
//				locationLoc = playerPos;
//			}
//			break;
//		}
//	}

	return newMovement;
	//return followPlayer(playerPos);

}
pointVector Enemy::followPlayer(pointVector playerPos) {
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
pointVector moveNear(pointVector playerPos) {
}
void Enemy::randomSteps() {
	srand(xTaskGetTickCount());
	direction.X = rand() % 3 - 1; // Random integer between -1 and 1
	direction.Y = rand() % 3 - 1; // Random integer between -1 and 1
}

void Enemy::setRemainingSteps(uint8_t steps) {
	this->stepsRemaining = steps;
}
void Enemy::setDirection(pointVector direction) {
	this->direction = direction;
}

uint8_t Enemy::getRemainingSteps() {
	return stepsRemaining;
}
void Enemy::onCollide(CollidableObject *object) {
	if (dynamic_cast<Player*>(object)) {
		Player *entityptr = dynamic_cast<Player*>(object);
		entityptr->setHealth(entityptr->getHealth() - 1);
		entityptr->setStar(true);
	} else if (dynamic_cast<Enemy*>(object) || dynamic_cast<Tile*>(object)) {
		// Generate a random direction
		Enemy *entityptr = dynamic_cast<Enemy*>(object);
		if (stepsRemaining == 0 && type != 4) {
			randomSteps();
			entityptr->setRemainingSteps(10);
		}
	}
}
void Enemy::onDeath() {

}
pointVector Enemy::getDirection() {
	pointVector pos;
	pos.X = direction.X;
	pos.Y = direction.Y;
	return pos;
}
void Enemy::decrementRemainingSteps() {
	stepsRemaining--;
}
bool Enemy::checkEntities(CollidableObject *object) {
	if (dynamic_cast<Item*>(object)) {
		return false;
	}
	if(dynamic_cast<Tile*>(object) && type == 2){
		return false;
	}
	pointVector otherPosition;
	otherPosition.X = object->getPosX();
	otherPosition.Y = object->getPosY();
	pointVector otherHalfsize = object->getHalfSize();
	pointVector thisPosition;
	thisPosition.X = this->getPosX();
	thisPosition.Y = this->getPosY();
	pointVector thisHalfsize = this->getHalfSize();
	int deltaX = otherPosition.X - thisPosition.X;
	int deltaY = otherPosition.Y - thisPosition.Y;
	int intersectX = abs(deltaX) - (otherHalfsize.X + thisHalfsize.X);
	int intersectY = abs(deltaY) - (otherHalfsize.Y + thisHalfsize.Y);
	if (intersectX < 0 && intersectY < 0) {
		if (intersectX > intersectY) {
			if (deltaX > 0) {
				moveX(intersectX);
			} else {
				moveX(-intersectX);
			}
		} else {
			if (deltaY > 0) {
				moveY(intersectY);
			} else {
				moveY(-intersectY);
			}
		}
		return true;
	}
	return false;
}
