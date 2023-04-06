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
		Boss(int x, int y) : Entity(x,y) {};
		void onCollide(CollidableObject *object) override;
		void onDeath() override;
	    int getTexture() override;
};

