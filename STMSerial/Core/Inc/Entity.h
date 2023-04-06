#ifndef INC_Entity_H_
#define INC_Entity_H_
#include "Tile.h"
#include "CollidableObject.h"

extern "C" {
#include "FreeRTOS.h"
#include "task.h"
}

//class tile {
//private:
//	uint8_t posY = 0;
//	uint8_t posX = 0;
//	uint8_t width = 16;
//	uint8_t height = 16;
//public:
//	tile(uint8_t x, uint8_t y) { this->posX = x; this->posY = y; };
//	uint8_t getPosX() { return posX; };
//	uint8_t getPosY() { return posY; };
//	uint8_t getWidth() {
//		return width;
//	}
//	uint8_t getHeight() {
//		return height;
//	}
//};
class Entity : public CollidableObject

{
private:
	uint8_t health = 1;
	uint8_t strength = 0;
	uint8_t textureID = 0;
	uint8_t width = 16;
	uint8_t height = 16;
protected:
	pointVector position;
	uint8_t speed = 0;

public: 
	void setTexture(uint8_t texture);
	Entity();
	virtual ~Entity() {};
	Entity(uint8_t x,uint8_t y,uint8_t width,uint8_t height,uint8_t health,uint8_t speed, uint8_t strength);
	pointVector getHalfSize() override;
	bool isCollidable() override;
	virtual void stepX(int);
	virtual void stepY(int);
	void moveX(int);
	void moveY(int);
	void setX(int);
	void setY(int);
	//void newLocation(uint8_t, uint8_t);
	pointVector getStart();
	uint8_t getPosX() override;
	uint8_t getPosY() override;
	uint8_t getWidth();
	uint8_t getHeight();
	uint8_t getSpeed();
	uint8_t getStrength();
	void setHealth(uint8_t);
	uint8_t getHealth();
	pointVector getPosition();
	virtual bool checkEntities(CollidableObject *object);
	virtual bool checkTiles(Tile *object);
	virtual void onCollide(CollidableObject*object);
	virtual void onDeath();
	virtual int getTexture();

};
#endif /* INC_CollidableObject_H_ */
