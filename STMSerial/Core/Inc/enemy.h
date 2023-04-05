#pragma once
#include "entity.h"
class Enemy : public Entity
{
private:
	bool elite = false;
	uint8_t type = 0;
	uint8_t directionX = 0;
	uint8_t directionY = 0;
	uint8_t stepsRemaining = 0;

public:
	Enemy(uint8_t x, uint8_t y,uint8_t type);
	void onCollide(CollidableObject*object) override;
	void onDeath() override;
	uint8_t getRemainingSteps();
	pointVector getDirection();
	void decrementRemainingSteps();
	bool checkEntities(CollidableObject *object) override;

};

