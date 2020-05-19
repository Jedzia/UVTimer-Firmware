/*---------------------------------------------------------*/
/*!
 * This file is part of the UVTimer project.
 * License details can be found in the file COPYING.
 * Copyright (c) 2020, EvePanix. All rights reserved.
 *
 * \brief      This file contains the setup of often
 *             used functions and global settings.
 *             It also controls the usage of the serial
 *             port debug functions.
 * \file       setup.h
 * \date       2020-05-19
 * \author     Jedzia.
 *
 * modified    2020-05-19, Jedzia
 */
/*---------------------------------------------------------*/
#ifndef UVTIMER_FIRMWARE_FF96B7C695D94DD196EAB18BF2C359DF_SETUP_H
#define UVTIMER_FIRMWARE_FF96B7C695D94DD196EAB18BF2C359DF_SETUP_H

#define STR_INDIRECTION(x) # x
#define STR(x) STR_INDIRECTION(x)

#ifdef USE_SERIAL
static inline size_t println(const char* c) {
    return Serial.println(c);
}
#else
static inline void println(const char* c) {}

#endif

#ifdef USE_SERIAL
#else
#  define printf(a, b, c, d, e, f, g, h)
#endif

#endif//UVTIMER_FIRMWARE_FF96B7C695D94DD196EAB18BF2C359DF_SETUP_H
