#pragma once
#include "entity.h"
#include "enemy.h"
class boss : public entity
{
	public:
		boss(std::string name, int x, int y, int width, int height) : entity(name, x, y, width, height) {};
		void onCollide(entity& object) override;
		void onDeath() override;

};

