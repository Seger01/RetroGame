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
int player::getDirection() {
	return direction;
}
void player::setDirection(int direction) {
	this->direction = direction;
	switch(direction) {
	case 0:
		textureID = 1;
		break;
	case 1:
		textureID = 2;
		break;
	case 2:
		textureID = 3;
		break;
	case 3:
		textureID = 4;
		break;

	}
}	
void player::onDeath(){
	
	//game over
	
}