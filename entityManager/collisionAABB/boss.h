#pragma once
#include "entity.h"
#include "enemy.h"
class boss : public entity
{
	public:
		boss(std::string name, int x, int y, int width, int height, int health, int speed, int strength) : entity(name,x,y,width,height, health,speed,strength) {};
		void onCollide(entity& object) override;
		void onDeath() override;

};

