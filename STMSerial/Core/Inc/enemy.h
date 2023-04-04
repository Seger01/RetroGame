#pragma once
#include "entity.h"
class Enemy : public Entity
{
private:
	bool elite = false;
	pointVector direction = {0,0};
	uint8_t stepsRemaining = 0;

public:
	Enemy(uint8_t x, uint8_t y, uint8_t width, uint8_t height, uint8_t health, uint8_t speed, uint8_t strength) : Entity(x, y, width, height, health, speed, strength) {};
	void onCollide(CollidableObject*object) override;
	void onDeath() override;
	uint8_t getRemainingSteps();
	pointVector getDirection();
	void setDirection(pointVector);
	void decrementRemainingSteps();
	void setRemainingSteps(uint8_t steps);
	bool checkEntities(CollidableObject *object) override;

};

