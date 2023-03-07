#include "player.h"
player::player(std::string name, int x, int y, int width, int height, int health, int speed, int strength) : entity(name,x,y,width,height,health,speed,strength)
{

}
void player::onCollide(entity& object) {
	if (dynamic_cast<boss*>(&object) || dynamic_cast<enemy*>(&object)) {
		this->setHealth(this->getHealth() - object.getStrength());
		this->invincible = true;
	}
	else if (dynamic_cast<item*>(&object)) {
		//power up
		//powerUphandler.setPowerUp()
	}
}
void player::setDirection(int direction) {
	this->direction = direction;
	switch(direction) {
	case 0:
		textureID = 0;
		break;
	case 1:
		textureID = 0;
		break;
	case 2:
		textureID = 0;
		break;
	case 3:
		textureID = 0;
		break;

	}
}	
void player::onDeath(){
	
	//game over
	
}