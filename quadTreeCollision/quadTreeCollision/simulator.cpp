#include "simulator.h"
#include <vector>
#include <iostream>
void Simulator::setup() {
	//Tile *wall1 = new Tile(10, 20);
	//Tile *wall2 = new Tile(40, 20);
	//tiles.push_back(wall1);
	//tiles.push_back(wall2);
    lm = new LevelManager();
    lm->setLevel(0);
    lm->getSpawnpoints(&spawns);
    lm->getCollidables(&tiles);
	em = new EntityManager(&tiles,&spawns);
    //spawn player
    //blocked spawns
    //difficulty
    //niet door de spawnpoints heen lopen
    //powerup droppen
    //remove naam
    em->spawnEntities(1, 1, 40);
    em->spawnPlayer(10, 10, 1, 20, 1);
    //drawField();
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
	em->updateEntities();
    Entity** entityList = em->getEntities();
    for (int i = 0; i < 50; i++) {
        if (entityList[i] != nullptr) {
            std::cout << entityList[i]->getHealth() << std::endl;
            std::cout << "X: " << (int)entityList[i]->getPosX() << " Y: " << (int)entityList[i]->getPosY() << std::endl;
            std::cout << "health: " << (int)entityList[i]->getHealth() << std::endl;
        }
    }
    /*
    for (int i = 0; i < tiles.size(); i++) {
        std::cout << "wall" << i << std::endl;
        std::cout << "X: " << (int)tiles.at(i)->getPosX() << "Y: " << (int)tiles.at(i)->getPosY() << std::endl;
    }*/
    
    //drawField();

     
}