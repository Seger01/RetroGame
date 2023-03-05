#pragma once
#include "entity.h"
#include "enemy.h"
#include "item.h"
#include "boss.h"
class player :
    public entity
{
private:
    int textureID = 1;
    int weapon = -1;
public:
    player(std::string name, int x, int y, int width, int height);
    void onCollide(entity& object) override;
    void onDeath() override;
};

