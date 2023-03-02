// collisionAABB.cpp : This file contains the 'main' function. Program execution begins and ends there.
//

#include <iostream>
#include "collision.h"
int main()
{
    collider cubes;
    while (true) {
        int option1 = -1;
        int XY = -1;
        int cube = -1;
        int amount = -1;
        std::cout << "select cube: " << std::endl;
 
            
            for (int i = 0; i < cubes.getCubes().size(); i++) {
                std::cout << i << ": " << cubes.getCubes().at(i)->getName() << std::endl;
            }
            while (cube == -1 || cube > cubes.getCubes().size()) {
                std::cout << "number of cube: ";
                std::cin >> cube;
            }
            std::cout << "Select option" << std::endl;
            std::cout << "1: move cube" << std::endl;
            std::cout << "2: get postion" << std::endl;
            while (option1 != 1 && option1 != 2) {
                std::cout << "option: ";
                std::cin >> option1;
            }
            
            switch (option1) {
            case 1: 
                std::cout << "1: X" << std::endl;
                std::cout << "2: Y" << std::endl;
                while (XY != 1 && XY != 2) {
                    std::cout << "axis:";
                    std::cin >> XY;
                }
                switch (XY) {
                case 1:
                    std::cout << "how much:" << std::endl;
                    std::cin >> amount;
                    cubes.moveEntity(cubes.getCubes().at(cube),amount,0);
                    //cubes.getCubes().at(cube)->moveX(amount);
                    break;
                case 2: 
                    std::cout << "how much:" << std::endl;
                    std::cin >> amount;
                    //cubes.getCubes().at(cube)->moveY(amount);
                    cubes.moveEntity(cubes.getCubes().at(cube), 0, amount);
                    break;
                }
                break;
            case 2:
                cubes.getCubes().at(cube)->getPosition();
                break;

            }
            
            //cubes.checkAll();
            std::cout << std::endl;
    }
}

// Run program: Ctrl + F5 or Debug > Start Without Debugging menu
// Debug program: F5 or Debug > Start Debugging menu

// Tips for Getting Started: 
//   1. Use the Solution Explorer window to add/manage files
//   2. Use the Team Explorer window to connect to source control
//   3. Use the Output window to see build output and other messages
//   4. Use the Error List window to view errors
//   5. Go to Project > Add New Item to create new code files, or Project > Add Existing Item to add existing code files to the project
//   6. In the future, to open this project again, go to File > Open > Project and select the .sln file
