#pragma once
#include "entity.h"
class Item :
    public Entity
{
private:
    int itemType;
public:
    Item(int x,int y);
    void onCollide(CollidableObject *object) override;
};

