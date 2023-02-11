#include "map.h"
#include "hero.h"
#include "enemy.h"

#include <iostream>
#include <sstream>

int main() {
	bool game = true;
	map map;
	//map setup
	map.setEnemy({ 1, 1 });
	map.setEnemy({ 3, 9 });
	map.setEnemy({ 7, 14 });
	map.setEnemy({ 6, 2 });
	
	while (game == true) {
		map.generateMap();
		char playerOption;
		std::cout << "Select an options: WASD " << std::endl;
		std::cin >> playerOption;
		switch (playerOption) {
		case 'e':
			game = false;
			break;
		case 'w':
			map.setHero( 0, -1 );
			break;
		case 'a':
			map.setHero( -1, 0 );
			break;
		case 's':
			map.setHero( 0, 1 );
			break;
		case 'd':
			map.setHero( 1, 0 );
			break;
		default:
			break;
		}
	}



}