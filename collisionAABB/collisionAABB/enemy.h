#pragma once
#include "entity.h"
class enemy : public entity
{
private:
	bool elite = false;
public:
	enemy(std::string name, int x, int y, int width, int height) : entity(name, x, y, width, height) {};
	void onCollide(entity& object) override;
	void onDeath() override;

};
