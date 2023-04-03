

#ifndef INC_Quad_H_
#define INC_Quad_H_
#include "Rectangle.h"
class Quad {
    // Hold details of the boundary of this node
    Rectangle boundary;

    // Contains details of node
    uint8_t size = 0;
    CollidableObject* n[4];
    bool divided = false;
    // Children of this tree
    Quad* topLeftTree;
    Quad* topRightTree;
    Quad* botLeftTree;
    Quad* botRightTree;

public:
    Quad(Rectangle boundary);
    virtual ~Quad();
    std::vector<CollidableObject*>* query(Rectangle range, std::vector<CollidableObject*> *found);
    bool insert(CollidableObject*);
    void remove(CollidableObject*);
    void subdivide();
};
#endif /* INC_Quad_H_ */

