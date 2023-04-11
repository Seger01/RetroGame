#pragma once
#include "entity.h"
#include "enemy.h"

extern "C" {
#include "FreeRTOS.h"
#include "task.h"
}
class Boss: public Entity {
private:

	pointVector walkDirection = {1,0};
	uint8_t stepsRemaining = 0;
	uint8_t stage = 0;
	bool travelling = false;
	pointVector destination;
public:
	Boss(uint8_t x, uint8_t y);
	pointVector shoot(pointVector playerPos);
	void onCollide(CollidableObject *object) override;
	void onDeath() override;
	pointVector lerp(pointVector start, pointVector end, double t);
	int getTexture() override;
	void setRemainingSteps(uint8_t steps);
	void setDestination(pointVector point);
	pointVector followPlayer(pointVector playerPos);
	pointVector moveToPoint();
	pointVector loop(pointVector playerPos);
	pointVector flee(pointVector playerPos);
};

