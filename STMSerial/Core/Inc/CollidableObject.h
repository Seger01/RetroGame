
#ifndef INC_CollidableObject_H_
#define INC_CollidableObject_H_
#include <cstdint>
#include <vector>
#include <cstdlib>
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

#endif /* INC_CollidableObject_H_ */
