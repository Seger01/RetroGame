#pragma once
#include "entity.h"
class Enemy : public Entity
{
private:
	bool elite = false;
	uint8_t type = 0;
	pointVector direction = {0,0};
	uint8_t stepsRemaining = 0;
	pointVector locationLoc = {0,0};

public:
	Enemy(uint8_t x, uint8_t y,uint8_t type);
	void onCollide(CollidableObject*object) override;
	pointVector Update(pointVector playerPos);
	void onDeath() override;
	uint8_t getRemainingSteps();
	pointVector getDirection();
	void setDirection(pointVector);
	void decrementRemainingSteps();
	void setRemainingSteps(uint8_t steps);
	bool checkEntities(CollidableObject *object) override;
	pointVector update(pointVector playerPos);
	pointVector followPlayer(pointVector playerPos);
	void randomSteps();
};

