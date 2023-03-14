/*
 * InputManager.cpp
 *
 *  Created on: 7 Mar 2023
 *      Author: Beheerder
 */

#include "InputManager.h"

InputManager::InputManager() {

}

InputManager::~InputManager() {
	// TODO Auto-generated destructor stub
}

uint8_t InputManager::readInput() {

	bool up = HAL_GPIO_ReadPin(GPIOA, GPIO_PIN_5); // 1
	bool down = HAL_GPIO_ReadPin(GPIOA, GPIO_PIN_7); // 2
	bool left = HAL_GPIO_ReadPin(GPIOB, GPIO_PIN_6); // 4
	bool right = HAL_GPIO_ReadPin(GPIOA, GPIO_PIN_6); // 8
	bool shoot = HAL_GPIO_ReadPin(GPIOC, GPIO_PIN_7); // 16
	bool shoot2 = HAL_GPIO_ReadPin(GPIOA, GPIO_PIN_9); // 16

	uint8_t inputs = (up == 1) << 0 | (down == 1) << 1 | (left == 1) << 2 | (right == 1) << 3;
	// switch case to check movement inputs from 0 to 9
	// 0 being middle, 1 is up and rest continues clockwards.
//	switch (inputs) {
//	case 0: // middle
//		inputMovementResult = 0;
//		break;
//	case 1: // up
//		inputMovementResult = 1;
//		break;
//	case 9: // top right
//		inputMovementResult = 2;
//		break;
//	case 8: // right
//		inputMovementResult = 3;
//		break;
//	case 10: // bottom right
//		inputMovementResult = 4;
//		break;
//	case 2: // bottom
//		inputMovementResult = 5;
//		break;
//	case 6: // bottom left
//		inputMovementResult = 6;
//		break;
//	case 4: // left
//		inputMovementResult = 7;
//		break;
//	case 5: // top left
//		inputMovementResult = 8;
//		break;
//	default:
//		inputMovementResult = 0;
//		break;
//	}

	// checks and sets shoot button
	if (shoot) {
		inputs |= (1 << 4);
	}
	if (shoot2) {
		inputs |= (1 << 5);
	}

	return inputs;
}
