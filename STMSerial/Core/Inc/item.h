#pragma once
#include "entity.h"
class Item :
    public Entity
{
private:
    int itemType;

    uint8_t texture;
public:
    Item(int x,int y);
    void onCollide(CollidableObject *object) override;

    int getTexture() override;
};

