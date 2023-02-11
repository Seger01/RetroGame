#include "map.h"
#include "hero.h"
#include "enemy.h"

#include <iostream>
map::map() {
	mainHero = new hero(8, 8);
}


map::~map() {

}

void map::setHero(int x, int y) {
	mainHero->setHeroXcoord(x);
	mainHero->setHeroYcoord(y);
}

void map::setEnemy(const enemy& enemyValue) {
	enemies[enemyCount++] = new enemy(enemyValue);
}

int map::generateMap() {
	int x;
	int y;
	int enemy = 0;
	for (y = 0; y <= 15; y++) {

		for (x = 0; x <= 15; x++) {
			bool heroSpawn = false;
			bool enemySpawn = false;
			// checks if hero coords match to current coords
			if (mainHero->getHeroXcoord() == x && mainHero->getHeroYcoord() == y)
			{
				std::cout << "H ";
				heroSpawn = true;
			}
			else {
				for (enemy = 0; enemy < enemyCount - 1; enemy++) {
					// loops through all enemies to check if coords match
					if (enemies[enemy]->getEnemyXcoord() == x && enemies[enemy]->getEnemyYcoord() == y) {
						std::cout << "E ";
						enemySpawn = true;
					}

				}
			}
			// if both are false, spawn normal tile
			if (heroSpawn == false && enemySpawn == false) {
				std::cout << "O ";
			}
		}
		// starts next line of map
		std::cout << std::endl;
	}
	return 1;
}