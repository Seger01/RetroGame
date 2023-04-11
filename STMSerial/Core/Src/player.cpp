#include "player.h"
#include "boss.h"


#include "SoundManager.h"
Player::Player(uint8_t x, uint8_t y, Entity** entities) : Entity(x,y)
{
	setWidth(16);
	setHeight(16);
	//setTexture(2);
	setStrength(1);
	setSpeed(playerSpeed);
	setHealth(4);

	this->entities = entities;

	powerupManager = new PowerupManager(entities);

}

void Player::updatePowerups(){
	powerupManager->updatePowerups();
}

void Player::onCollide(CollidableObject *object) {
	Entity *entityptr = dynamic_cast<Entity*>(object);
	if (dynamic_cast<Boss*>(object) || dynamic_cast<Enemy*>(object)) {

	} else if (dynamic_cast<Item*>(object)) {
		Item* itemptr = dynamic_cast<Item*>(object);
		entityptr->setHealth(0);
		soundManager.setSoundActive(3);

		powerupManager->setPowerup(itemptr->getTexture() - 11);
		//power up
		//powerUphandler.setPowerUp()
	}
}
void Player::setStar(bool value){
	this->star = value;
}
void Player::setHealth(uint8_t health){
	if(!star){
		this->health = health;
	}
}
pointVector Player::getDirection() {
	return direction;
}
void Player::setDirection(pointVector direction) {
	pointVector oldDirection = this->direction;
	this->direction = direction;
	if (direction.Y == 1) {
		textureID = 2;
	} else if (direction.Y == 0) {
		textureID = 3;
	} else if (direction.X == 1) {
		textureID = 4;
	} else {
		textureID = 5;
	}
}
void Player::onDeath() {

	//game over

}

int Player::getTexture() {
	static int offset = 0;
	int baseSprite = 0;
	static pointVector lastPosition;
	static pointVector lastSpriteUpdate;
	static long long lastFrameUpdate = 0;

	if (this->position.X == lastPosition.X && this->position.Y == lastPosition.Y) {
		offset = 1;
	} else if (abs(lastSpriteUpdate.X - position.X) >= 1 || abs(lastSpriteUpdate.Y - position.Y) >= 1) {
		if (xTaskGetTickCount() > lastFrameUpdate + 100) {
			soundManager.setSoundActive(2);
			lastFrameUpdate = xTaskGetTickCount();

			lastSpriteUpdate = position;

			if (offset == 1) {
				offset = 2;
			} else if (offset == 2) {
				offset = 0;
			} else if (offset == 0) {
				offset = 2;
			}
		}

	}

	if(direction.X == -1){
		baseSprite = 9;
	} else if(direction.X == 1){
		baseSprite = 3;
	} else if(direction.Y == 1){
		baseSprite = 6;
	} else {
		baseSprite = 0;
	}

	lastPosition = this->position;
	return offset + baseSprite;

}
