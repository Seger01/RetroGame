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
	uint8_t readInput();
private:
	uint8_t inputMovementResult;
};

#endif /* INPUTMANAGER_H_ */
