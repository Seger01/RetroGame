#pragma once
#include "entity.h"
class Bullet :
    public Entity
{
private:
    int travelDirection = 0;
public:
    Bullet(std::string name, int x, int y, int width, int height, int health, int speed, int strength);
    void onCollide(Entity& object) override;
    void onCollideWall();
    void setTravelDirection(int);
    int getTravelDirection();
};

