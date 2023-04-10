#pragma once
#include "entity.h"
class Bullet :
    public Entity
{
private:
    pointVector travelDirection = {0,0};
    uint8_t travelDistance = 0;
public:
    Bullet(uint8_t x, uint8_t y,uint8_t strenght);
    void stepX(int) override;
    void stepY(int) override;
    void onCollide(CollidableObject*object) override;
    void onCollideWall();
    void setTravelDirection(pointVector);
    pointVector getTravelDirection();
    int getTexture() override;
};

