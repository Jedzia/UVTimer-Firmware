//
// Created by Jedzia on 19.05.2020.
//

#include "Arduino.h"
#include <iostream>

void digitalWrite(unsigned int pin, unsigned int val) {
    std::cout << "digitalWrite(Pin: " << pin << " val: " << val << ")\n";
}
