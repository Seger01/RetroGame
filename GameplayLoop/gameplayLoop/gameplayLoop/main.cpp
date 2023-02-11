#include "map.h"
#include "hero.h"
#include "enemy.h"

#include <sstream>

int main() {
	map map;
	//map setup
	map.setHero( { 8, 8 } );
	map.setEnemy({ 1, 1 });
	map.setEnemy({ 3, 9 });
	map.setEnemy({ 7, 14 });
	map.setEnemy({ 6, 2 });


	map.generateMap();
}