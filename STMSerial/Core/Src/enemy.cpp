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
	switch (type) {
	case 1:
		//regular enemy
		setSpeed(2);
		setHealth(1);
		setTexture(3);
		break;
	case 2:
		// speedy boi
		setSpeed(3);
		setHealth(1);
		setTexture(4);
		break;
	case 3:
		// butterfly
		setSpeed(1);
		setHealth(1);
		setTexture(6);
		break;
	case 4:
		//heavy boi
		setSpeed(1);
		setHealth(4);
		setTexture(5);
		break;
	}

}
;
pointVector Enemy::update(pointVector playerPos) {
	pointVector newMovement;
	pointVector enemyPos = this->getDirection();
	int deltaX = playerPos.X - enemyPos.X;
	int deltaY = playerPos.Y - enemyPos.Y;
	if(abs(deltaX) < 150 && abs(deltaY) < 150){
		followPlayer(playerPos);
	}else if (stepsRemaining > 0) {
		newMovement.X = direction.X;
		newMovement.Y = direction.Y;
		stepsRemaining--;
		return newMovement;
	}else{
		randomSteps();
	}
	/*
	switch (type) {
	case 1:
		if (abs(deltaX) < 150 && abs(deltaY) < 150) {
			newMovement = followPlayer(playerPos);
		} else {
			randomSteps();
		}
		break;
	case 2:
		if (locationLoc.X != 0 && locationLoc.Y != 0) {
			if (locationLoc.X == enemyPos.X && locationLoc.Y == enemyPos.Y) {
				locationLoc = playerPos;
			}
			if (locationLoc.X < enemyPos.X) {
				newMovement.X = -1;
			} else if (locationLoc.X > enemyPos.X) {
				newMovement.X = 1;
			}
			if (locationLoc.Y < enemyPos.Y) {
				newMovement.Y = -1;
			} else if (locationLoc.Y > enemyPos.Y) {
				newMovement.Y = 1;
			}

		} else {
			locationLoc = playerPos;
		}
		break;
	case 3:

		break;
	case 4:

		break;
	}*/
	return newMovement;

}
pointVector Enemy::followPlayer(pointVector playerPos) {
	pointVector newMovement;
	pointVector enemyPos = this->getDirection();
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
};
void Enemy::randomSteps() {
	srand(xTaskGetTickCount());
	direction.X = rand() % 3 - 1; // Random integer between -1 and 1
	direction.Y = rand() % 3 - 1; // Random integer between -1 and 1
	stepsRemaining = 5; // Move in this direction for 2 steps
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
	Entity *entityptr = dynamic_cast<Player*>(object);
	if (dynamic_cast<Player*>(entityptr)) {
		entityptr->setHealth(entityptr->getHealth() - this->getStrength());
	} else if (dynamic_cast<Enemy*>(object)) {
		// Generate a random direction
		randomSteps();
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
	pointVector otherPosition;
	otherPosition.X = object->getPosX();
	otherPosition.Y = object->getPosY();
	pointVector otherHalfsize = object->getHalfSize();
	pointVector thisPosition = this->getPosition();
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
