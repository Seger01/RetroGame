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
pointVector Player::getDirection() {
	return direction;
}
void Player::setDirection(pointVector direction) {
	pointVector oldDirection = this->direction;
	this->direction = direction;
	if(direction.Y == 1){
		textureID = 2;
	}else if(direction.Y == 0){
		textureID = 3;
	}else if(direction.X == 1){
		textureID = 4;
	}else {
		textureID = 5;
	}
}	
void Player::onDeath(){
	
	//game over
	
}
