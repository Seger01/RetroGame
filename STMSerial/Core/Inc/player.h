#pragma once
#include "entity.h"
#include "enemy.h"
#include "item.h"
#include "boss.h"

class powerUpHandler {
};
class Player :
    public Entity
{
private:
    powerUpHandler PowerUpHandler;
    bool invincible = false;
    pointVector direction = {1,0};
    uint8_t textureID = 2;
    uint8_t weapon = -1;
public:
    Player(uint8_t x, uint8_t y);
    void onCollide(CollidableObject *object) override;
    void setTexture(uint8_t);
    pointVector getDirection();

    void setDirection(pointVector);
    void onDeath() override;
};

