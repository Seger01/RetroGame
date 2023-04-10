#pragma once
#include "entity.h"
class Bullet :
    public Entity
{
private:
    pointVector travelDirection = {0,0};
    int travelDistance = 0;
    Entity* owner = nullptr;
public:
    Bullet(uint8_t x, uint8_t y,uint8_t strenght);
    void stepX(int) override;
    void stepY(int) override;
    void onCollide(CollidableObject*object) override;
    void onCollideWall();
    bool checkEntities(CollidableObject *object);
    void setTravelDirection(pointVector);
    pointVector getTravelDirection();
    int getTexture() override;
};

