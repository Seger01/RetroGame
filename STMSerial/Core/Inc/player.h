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
    bool invincible = false;
    pointVector direction = {0,0};
    uint8_t textureID = 1;
    uint8_t weapon = -1;
public:
    Player(uint8_t x, uint8_t y, uint8_t width, uint8_t height, uint8_t health, uint8_t speed, uint8_t strength);
    void onCollide(CollidableObject *object) override;
    void setTexture(uint8_t);
    pointVector getDirection();

    void setDirection(pointVector);
    void onDeath() override;

    int getTexture() override;
};

