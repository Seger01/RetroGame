#include "Converter.h"

Converter::Converter() {
	// TODO Auto-generated constructor stub
}

Converter::~Converter() {
	// TODO Auto-generated destructor stub
}

int Converter::characterToIndex(int character){
	return (int)character  - 'a' + 31 + 10 + 2;
}

int Converter::intToIndex(int number){
	return (int)number + 31 + 2;
}
