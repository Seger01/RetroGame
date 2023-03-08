#pragma once
#include "entity.h"
class enemy : public entity
{
private:
	bool elite = false;
	int directionX = 0;
	int directionY = 0;
	int stepsRemaining;

public:
	enemy(std::string name, int x, int y, int width, int height, int health, int speed, int strength) : entity(name, x, y, width, height, health, speed, strength) {};
	void onCollide(entity& object) override;
	void onDeath() override;
	int getRemainingSteps();
	pointVector getDirection();
	void decrementRemainingSteps();
	bool checkEntities(entity& object) override;

};

