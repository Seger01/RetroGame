#include "simulator.h"
#include <vector>
#include <iostream>
void Simulator::setup() {
	tile *wall1 = new tile(10, 20);
	tile *wall2 = new tile(40, 20);
	tiles.push_back(wall1);
	tiles.push_back(wall2);
	em = new EntityManager(tiles);
    em->spawnEntities(1, 1, 3);
    
    //drawField();
}
void Simulator::drawField() {
    std::string field = "";

    // Create empty field
    for (int i = 0; i < 50; i++) {
        for (int j = 0; j < 50; j++) {
            field += "-";
        }
        field += "\n";
    }

    // Add tiles to field
    for (tile* t : tiles) {
        int x = (int)t->getPosX();
        int y = (int)t->getPosY();
        int w = (int)t->getWidth();
        int h = (int)t->getHeight();
        for (int i = y; i < y + h; i++) {
            for (int j = x; j < x + w; j++) {
                field[(i * 50) + j] = '=';
            }
        }
    }

    // Add enemies to field
    Entity** entities = em->getEntities();
    for (int i = 1; i < 50; i++) {
        if (entities[i] != nullptr) {
            int x = entities[i]->getX();
            int y = entities[i]->getY();
            int w = entities[i]->getWidth();
            int h = entities[i]->getHeight();
            for (int j = y; j < y + h; j++) {
                for (int k = x; k < x + w; k++) {
                    field[(j * 50) + k] = '&';
                }
            }
        }
    }

    // Add Player to field
    if (entities[0] != nullptr) {
        int x = entities[0]->getX();
        int y = entities[0]->getY();
        int w = entities[0]->getWidth();
        int h = entities[0]->getHeight();
        for (int i = y; i < y + h; i++) {
            for (int j = x; j < x + w; j++) {
                field[(i * 100) + j] = '+';
            }
        }
    }
   

    // Print field to console
    std::cout << field << std::endl;
}
void Simulator::loop() {
  
    char input = '~';
    bool left = false;
    bool right = false;
    bool up = false;
    bool down = false;
    bool shoot = false;
        std::cout << "please input wsda key" << std::endl;
        std::cout << "key:";
        std::cin >> input;

    system("cls");
    switch(input) {
        case 'a':
            left = true;
        break;
        case 'd':
            right = true;
            break;
        case 'w':
            up = true;
            break;
        case 's':
            down = true;
            break;
        case 'q':
            shoot = true;
            break;
        default:
            break;
    }
    em->playerAction(up, down, left, right, shoot);
	// Update entities
	em->moveEntities();
    Entity** entityList = em->getEntities();
    for (int i = 0; i < 50; i++) {
        if (entityList[i] != nullptr) {
            std::cout << entityList[i]->getName() << std::endl;
            std::cout << "X: " << entityList[i]->getX() << " Y: " << entityList[i]->getY() << std::endl;
            std::cout << "health: " << entityList[i]->getHealth() << std::endl;
        }
    }

    for (int i = 0; i < tiles.size(); i++) {
        std::cout << "wall" << i << std::endl;
        std::cout << "X: " << tiles[i]->getPosX() << "Y: " << tiles[i]->getPosY() << std::endl;
    }
    
    //drawField();


}