#include "player.h"
#include "boss.h"
Player::Player(std::string name, uint8_t x, uint8_t y, uint8_t width, uint8_t height, uint8_t health, uint8_t speed, uint8_t strength) : Entity(name,x,y,width,height,health,speed,strength)
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
pointVector Player::getDirection() {
	return direction;
}
void Player::setDirection(uint32_t x, uint32_t y) {
	pointVector newDirection;
	newDirection.X = x;
	newDirection.Y = y;
	this->direction = newDirection;
	
}	
void Player::onDeath(){
	
	//game over
	
}
