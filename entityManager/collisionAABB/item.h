#pragma once
#include "entity.h"
class item :
    public entity
{
private:
    int itemType;
public:

    void onCollide(entity& object) override;
};

