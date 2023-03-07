/*
 * InputManager.cpp
 *
 *  Created on: 7 Mar 2023
 *      Author: Beheerder
 */

#include "InputManager.h"

InputManager::InputManager() {
	// TODO Auto-generated constructor stub

}

InputManager::~InputManager() {
	// TODO Auto-generated destructor stub
}

void InputManager::readInput(int controllerInput) {
	inputResult = controllerInput;
}

int InputManager::getCurrentInput() {
	return inputResult;
}

