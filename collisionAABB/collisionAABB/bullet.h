#pragma once
#include "entity.h"
class bullet :
    public entity
{
private:
    int travelDirection = 0;
public:
    bullet(std::string name, int x, int y, int width, int height, int health, int speed, int strength);
    void onCollide(entity& object) override;
    void onCollideWall();
    void setTravelDirection(int);
    int getTravelDirection();
};

