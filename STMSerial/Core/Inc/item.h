#pragma once
#include "entity.h"
class Item :
    public Entity
{
private:
    int itemType;
public:

    void onCollide(CollidableObject *object) override;
};

