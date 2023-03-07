#pragma once
#include "entity.h"
#include "enemy.h"
#include "item.h"
#include "boss.h"
#define down 0;
#define right 1;
#define up 2;
#define left 3;

class powerUpHandler {
};
class player :
    public entity
{
private:
    powerUpHandler PowerUpHandler;
    bool invincible = false;
    int direction = down;
    int textureID = 1;
    int weapon = -1;
public:
    player(std::string name, int x, int y, int width, int height, int health, int speed, int strength);
    void onCollide(entity& object) override;
    void setTexture(int);
    void setDirection(int);
    void onDeath() override;
};

