#pragma once
#include "entity.h"
class Enemy : public Entity
{
private:
	bool elite = false;
	int directionX = 0;
	int directionY = 0;
	int stepsRemaining;

public:
	Enemy(std::string name, int x, int y, int width, int height, int health, int speed, int strength) : Entity(name, x, y, width, height, health, speed, strength) {};
	void onCollide(Entity& object) override;
	void onDeath() override;
	int getRemainingSteps();
	pointVector getDirection();
	void decrementRemainingSteps();
	bool checkEntities(Entity& object) override;

};

