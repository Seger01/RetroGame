/*
 * InputManager.h
 *
 *  Created on: 7 Mar 2023
 *      Author: Beheerder
 */

#ifndef INPUTMANAGER_H_
#define INPUTMANAGER_H_

#include "main.h"


class InputManager {
public:
	InputManager();
	virtual ~InputManager();
	uint8_t getCurrentMovementInput();
	bool getCurrentShootInput();
	void readInput(uint8_t inputMovement, bool inputShoot);
private:
	uint8_t inputMovementResult;
	bool inputShootResult;
};

#endif /* INPUTMANAGER_H_ */
