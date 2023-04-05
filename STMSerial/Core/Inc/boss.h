#pragma once
#include "entity.h"
#include "enemy.h"
class Boss : public Entity
{
	public:
		Boss(int x, int y) : Entity(x,y) {};
		void onCollide(CollidableObject *object) override;
		void onDeath() override;

};

