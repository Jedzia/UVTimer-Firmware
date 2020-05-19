/*---------------------------------------------------------*/
/*!
 * This file is part of the UVTimer project.
 * License details can be found in the file COPYING.
 * Copyright (c) 2020, EvePanix. All rights reserved.
 *
 * \brief      This file contains the definition of
 *             the display_led_test.cpp class.
 * \file       display_led_test.cpp
 * \date       2020-05-19
 * \author     Jedzia.
 *
 * modified    2020-05-19, Jedzia
 */
/*---------------------------------------------------------*/
#include <DisplayLED.h>
#include <iostream> // include API

using namespace std;

constexpr uint8_t LED2 = 5; // PD5
DisplayLED<LED2> displayLed{};

void displayIterate(DisplayLED<LED2> &p) {
    static size_t it = 0;
    cout << "Iteration[" << it << "]> sb: " << p.getShortBlink() << ", isNotBlinking: " << p.isNotShortBlinking() << ". ";
    p.display();
    it++;
}

/** Program Entry Function, main
 *  The designated start of the program.
 *  @return program exit code.
 */
int main() { // the main code portion of a C++ program
    cout << "Hello cheesy World" << endl;  //print Hello World on the screen
    const int iter_max = 33;
    displayLed.setShortBlink(iter_max);

    for(int i = 0; i < iter_max + 5; ++i) {
        displayIterate(displayLed);
    }
    return 0; // conventional
}
