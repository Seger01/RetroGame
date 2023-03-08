#include "player.h"
Player::Player(std::string name, int x, int y, int width, int height, int health, int speed, int strength) : Entity(name,x,y,width,height,health,speed,strength)
{

}
void Player::onCollide(Entity& object) {
	if (dynamic_cast<Boss*>(&object) || dynamic_cast<Enemy*>(&object)) {
		this->setHealth(this->getHealth() - object.getStrength());
		this->invincible = true;
	}
	else if (dynamic_cast<Item*>(&object)) {
		//power up
		//powerUphandler.setPowerUp()
	}
}
int Player::getDirection() {
	return direction;
}
void Player::setDirection(int direction) {
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
void Player::onDeath(){
	
	//game over
	
}