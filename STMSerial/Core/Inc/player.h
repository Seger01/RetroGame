#pragma once
#ifndef SRC_PLAYER_H_
#define SRC_PLAYER_H_
#include "entity.h"
#include "enemy.h"
#include "item.h"
#include "boss.h"
#include "PowerupManager.h"

#include "config.h"

extern "C" {
#include "FreeRTOS.h"
#include "task.h"
}

class Player :
    public Entity
{
private:
	PowerupManager *powerupManager;
    Entity** entities = nullptr;
    bool hit = false;
    pointVector direction = {1,0};
    bool star = false;
    uint8_t textureID = 2;
    uint8_t weapon = -1;
public:
    Player(uint8_t x, uint8_t y, Entity** entities);
    void setStar(bool);
    void updatePowerUp();
    void setHealth(uint8_t) override;
    void onCollide(CollidableObject *object) override;
    void setTexture(uint8_t);
    pointVector getDirection();

    void setDirection(pointVector);
    void onDeath() override;

    int getTexture() override;

    void updatePowerups();
};

#endif
