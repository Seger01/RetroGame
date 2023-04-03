#pragma once
#include <cstdlib>
#include <cstdint>
struct pointVector {
    int X = 0;
    int Y = 0;

};
class CollidableObject
{
public:
    virtual uint8_t getPosX() = 0;
    virtual uint8_t getPosY() = 0;
    virtual bool isCollidable() = 0;
    virtual pointVector getHalfSize() = 0;
};

