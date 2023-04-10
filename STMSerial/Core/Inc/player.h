#pragma once
#include "entity.h"
#include "enemy.h"
#include "item.h"
#include "boss.h"

extern "C" {
#include "FreeRTOS.h"
#include "task.h"
}

class powerUpHandler {
};
class Player :
    public Entity
{
private:
    powerUpHandler PowerUpHandler;
    bool hit = false;
    pointVector direction = {1,0};
    bool star = false;
    uint8_t textureID = 2;
    uint8_t weapon = -1;
public:
    Player(uint8_t x, uint8_t y);
    void setStar(bool);
    void setHealth(uint8_t) override;
    void onCollide(CollidableObject *object) override;
    void setTexture(uint8_t);
    pointVector getDirection();

    void setDirection(pointVector);
    void onDeath() override;

    int getTexture() override;
};

