#include "player.h"
player::player(std::string name, int x, int y, int width, int height) : entity(name, x, y, width, height)
{

}
void player::onCollide(entity& object) {
	if (dynamic_cast<boss*>(&object) || dynamic_cast<enemy*>(&object)) {
		this->setHealth(this->getHealth() - object.getStrength());
	}
}
void player::onDeath(){
	
	//game over
	
}