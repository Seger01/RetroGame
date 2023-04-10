/*
 * Converter.h
 *
 *  Created on: 4 Apr 2023
 *      Author: coole
 */

#ifndef INC_CONVERTER_H_
#define INC_CONVERTER_H_

#include "main.h"
#include "cmsis_os.h"

class Converter {
public:
	Converter();
	virtual ~Converter();

	int characterToIndex(int character);
	int intToIndex(int number);

	int justSomeFunction();
};

#endif /* INC_CONVERTER_H_ */
