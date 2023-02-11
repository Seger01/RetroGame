#pragma once
class enemy
{
public:
	enemy();
	enemy(const int&, const int&);
	virtual ~enemy();

public:
	void setEnemyXcoord(const int& xCoord);
	void setEnemyYcoord (const int& Ycoord);

	int getEnemyXcoord();
	int getEnemyYcoord();


private:
	int enemyXcoord;
	int enemyYcoord;
};

