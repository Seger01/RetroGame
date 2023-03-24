#pragma once
#include "entity.h"
#include "enemy.h"
#include "item.h"
#include "boss.h"
#define down 0;
#define right 1;
#define up 2;
#define left 3;

class powerUpHandler {
};
class Player :
    public Entity
{
private:
    powerUpHandler PowerUpHandler;
    bool invincible = false;
    uint8_t direction = down;
    uint8_t textureID = 1;
    uint8_t weapon = -1;
public:
    Player(std::string name, uint8_t x, uint8_t y, uint8_t width, uint8_t height, uint8_t health, uint8_t speed, uint8_t strength);
    void onCollide(Entity *object) override;
    void setTexture(uint8_t);
    uint8_t getDirection();
    void setDirection(uint8_t);
    void onDeath() override;
};

