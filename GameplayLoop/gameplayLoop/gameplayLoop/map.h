#pragma once

class hero;
class enemy;

class map
{
public:
	map();
	~map();

public:
	void setHero(int x, int y);
	void setEnemy(const enemy&);

	void playerMovement();

	int generateMap();
private:
	enemy* enemies[5];
	int enemyCount = 0;
	hero* mainHero;
};

