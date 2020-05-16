/*---------------------------------------------------------*/
/*!
 * This file is part of the UVTimer repository.
 * License details can be found in the file COPYING.
 * Copyright (c) 2020, EvePanix. All rights reserved.
 *
 * \brief      This file contains the definition of
 *             the main application startup code.
 * \file       src/main.cpp
 * \date       2020-01-01
 * \author     Jedzia.
 *
 * modified    2020-01-01, Jedzia
 *
 */
/*---------------------------------------------------------*/

// the setup function runs once when you press reset or power the board
//extern void setup(void);

// the loop function runs over and over again forever
//extern void loop(void);

#include <Arduino.h>
int main() {
    init();

    setup();

    while(true) {
        loop();
    }
}
