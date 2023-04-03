
#include "Quad.h"
#include "entityManager.h"
#include "entity.h"
#include <vector> 
#include "Rectangle.h"
#include "LevelManager.h"
#include "simulator.h"
#include <iostream>

int main() {
    /*
    Rectangle* mainSquare = new Rectangle(120, 120, 120, 120);
    Quad center(mainSquare);
    Entity a(1, 1, 16, 16, 1, 1, 1);
    Entity b(20, 20, 16, 16, 2, 1, 1);
    Entity* entities[120];
    //Entity c(100, 100, 16, 16, 3, 1, 1);
    for (int k = 0; k < 120; k++) {
       entities[k] = new Entity(rand() % 240, rand() % 240, 16, 16, 3, 1, 1);
       
    }
    for (int k = 0; k < 120; k++) {
        center.insert(entities[k]);
    }
    for (int k = 0; k < 120; k++) {
        center.remove(entities[k]);
    }
    
//    center.remove(&c);
    Rectangle range(101, 101, 1, 1);

    std::vector<Entity*>* found  = center.query(range, NULL);
    //for(int i = 0; i < found->size())
    for (auto p : *found) {
        std::cout << "node: " << (int)p->getHealth() << std::endl;
    }
    */
    Simulator simulator;
    simulator.setup();
    while (1) {
        simulator.loop();
    }
    return 0;
}