#pragma once
#include "entity.h"
#include "enemy.h"

extern "C" {
#include "FreeRTOS.h"
#include "task.h"
}
class Boss : public Entity
{
	public:
		Boss(int x, int y, int width, int height, int health, int speed, int strength) : Entity(x,y,width,height, health,speed,strength) {};
		void onCollide(CollidableObject *object) override;
		void onDeath() override;
	    int getTexture() override;
};

