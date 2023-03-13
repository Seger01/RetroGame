/*
 * InputManager.cpp
 *
 *  Created on: 7 Mar 2023
 *      Author: Beheerder
 */

#include "InputManager.h"

InputManager::InputManager() {
	inputMovementResult = 0;
	inputShootResult = 0;

}

InputManager::~InputManager() {
	// TODO Auto-generated destructor stub
}

void InputManager::readInput(uint8_t controllerMovement, bool controllerShoot) {
	// switch case to check movement inputs from 0 to 9
	// 0 being middle, 1 is up and rest continues clockwards.
	switch(controllerMovement) {
	case 0: // middle
		inputMovementResult = 0;
		break;
	case 1: // up
		inputMovementResult = 1;
		break;
	case 9: // top right
		inputMovementResult = 2;
		break;
	case 8: // right
		inputMovementResult = 3;
		break;
	case 10: // bottom right
		inputMovementResult = 4;
		break;
	case 2: // bottom
		inputMovementResult = 5;
		break;
	case 6: // bottom left
		inputMovementResult = 6;
		break;
	case 4: // left
		inputMovementResult = 7;
		break;
	case 5: // top left
		inputMovementResult = 8;
		break;
	default:
		inputMovementResult = 0;
		break;
	}

	// checks and sets shoot button
	if(controllerShoot) {
		inputShootResult = 1;
	}


	inputMovementResult = controllerMovement;
}

uint8_t InputManager::getCurrentMovementInput() {
	return inputMovementResult;
}

bool InputManager::getCurrentShootInput() {
	return inputShootResult;
}

