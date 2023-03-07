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
	int getCurrentInput();
	void readInput(int input);
private:
	int inputResult;
};

#endif /* INPUTMANAGER_H_ */
