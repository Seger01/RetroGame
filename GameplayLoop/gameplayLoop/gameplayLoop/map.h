#pragma once

class hero;
class enemy;

class map
{
public:
	map();
	~map();

public:
	void setHero(const hero&);
	void setEnemy(const enemy&);

	int generateMap();
private:
	enemy* enemies[5];
	int enemyCount = 0;
	hero* mainHero;
};

