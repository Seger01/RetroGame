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
class Player :
    public Entity
{
private:
    powerUpHandler PowerUpHandler;
    bool invincible = false;
    pointVector direction = {0,0};
    uint8_t textureID = 1;
    uint8_t weapon = -1;
public:
    Player(uint8_t x, uint8_t y, uint8_t width, uint8_t height, uint8_t health, uint8_t speed, uint8_t strength);
    void onCollide(Entity *object) override;
    void setTexture(uint8_t);
    pointVector getDirection();
    void setDirection(pointVector);
    void onDeath() override;
};

