#include "player.h"
#include "boss.h"
Player::Player(uint8_t x, uint8_t y, uint8_t width, uint8_t height, uint8_t health, uint8_t speed, uint8_t strength) : Entity(x,y,width,height,health,speed,strength)
{

}
void Player::onCollide(Entity *object) {
	if (dynamic_cast<Boss*>(object) || dynamic_cast<Enemy*>(object)) {
		this->setHealth(this->getHealth() - object->getStrength());
		this->invincible = true;
	}
	else if (dynamic_cast<Item*>(object)) {
		//power up
		//powerUphandler.setPowerUp()
	}
}
uint8_t Player::getDirection() {
	return direction;
}
void Player::setDirection(uint8_t direction) {
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
