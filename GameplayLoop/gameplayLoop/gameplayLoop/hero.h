#pragma once



class hero
{
public:
	hero();
	hero(const int&, const int&);
	virtual ~hero();

public:
	void setHeroXcoord(const int& xCoord);
	void setHeroYcoord(const int& Ycoord);

	int getHeroXcoord();
	int getHeroYcoord();

private:
	int heroXcoord;
	int heroYcoord;
};

