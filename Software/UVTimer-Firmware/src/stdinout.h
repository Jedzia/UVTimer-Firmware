/*---------------------------------------------------------*/
/*!
 * This file is part of the UVTimer project.
 * License details can be found in the file COPYING.
 * Copyright (c) 2020, EvePanix. All rights reserved.
 *
 * \brief      This file contains the initialization
 *             of printf functionality.
 *
 *             This gives you stdin, stdout and stderr.
 *             So, now "printf" and "fprintf(stdout, ..." will
 *             work, as will getc, putc, gets, puts, etc...
 *
 *             Be aware though that the %f format will not work
 *             because the Arduino IDE doesn't include floating
 *             point support to save sketch size. If you want to
 *             add the ability to enable or disable floating
 *             point support (via a checkbox in File / Preferences),
 *             grab this file: https://github.com/krupski/arduino-1.0.3/blob/master/app/pde.jar
 *             (click on "view raw" to download it), then REPLACE your arduino-1.0.x/lib/pde.jar
 *             with the downloaded version. Be sure to make a backup copy of your original
 *             pde.jar file, just in case!
 *
 *             Note that enabling floating point support will make
 *             your sketch about 1.5K larger, so leave it disabled
 *             unless you need it.
 *
 *
 * \file       stdinout.h
 * \date       2020-05-18
 * \author     Jedzia.
 * \authors    https://forum.arduino.cc/index.php?topic=149785.msg1125620#msg1125620
 *
 * modified    2020-05-18, Jedzia
 */
/*---------------------------------------------------------*/
#ifndef UVTIMER_FIRMWARE_7898E5E9696D489191FCE646B23B6894_STDINOUT_H
#define UVTIMER_FIRMWARE_7898E5E9696D489191FCE646B23B6894_STDINOUT_H
#include <stdio.h>

// no need to make an instance of this yourself
class initializeSTDINOUT {
    static size_t initnum;

public:

    // Constructor
    initializeSTDINOUT();
};

// Call the constructor in each compiled file this header is included in
// static means the names won't collide
static initializeSTDINOUT initializeSTDINOUT_obj;

#endif//UVTIMER_FIRMWARE_7898E5E9696D489191FCE646B23B6894_STDINOUT_H
