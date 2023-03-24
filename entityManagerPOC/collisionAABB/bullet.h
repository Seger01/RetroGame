#pragma once
#include "entity.h"
class Bullet :
    public Entity
{
private:
    uint8_t travelDirection = 0;
public:
    Bullet(std::string name, uint8_t x, uint8_t y, uint8_t width, uint8_t height, uint8_t health, uint8_t speed, uint8_t strength);
    void onCollide(Entity *object) override;
    void onCollideWall();
    void setTravelDirection(uint8_t);
    uint8_t getTravelDirection();
};
