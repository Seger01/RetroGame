#pragma once
#include "entity.h"
class Bullet :
    public Entity
{
private:
    pointVector travelDirection = {0,0};
public:
    Bullet(uint8_t x, uint8_t y, uint8_t width, uint8_t height, uint8_t health, uint8_t speed, uint8_t strength);
    void onCollide(Entity *object) override;
    void onCollideWall();
    void setTravelDirection(pointVector);
    pointVector getTravelDirection();
};

