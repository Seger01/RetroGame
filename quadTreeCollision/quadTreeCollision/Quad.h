#pragma once
#include "entity.h"
#include "CollidableObject.h"
#include "Rectangle.h"
#include <vector>

class Quad {
    // Hold details of the boundary of this node
    Rectangle* boundary = nullptr;

    // Contains details of node
    uint16_t size = 0;
    CollidableObject* n[4];
    bool divided = false;
    // Children of this tree
    Quad* topLeftTree;
    Quad* topRightTree;
    Quad* botLeftTree;
    Quad* botRightTree;

public:
    Quad(Rectangle *boundary);
    std::vector<CollidableObject*>* query(Rectangle range, std::vector<CollidableObject*> *found);
    bool insert(CollidableObject*);
    void remove(CollidableObject*);
    void subdivide();
};


