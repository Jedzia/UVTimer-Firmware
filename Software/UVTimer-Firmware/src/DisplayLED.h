/*---------------------------------------------------------*/
/*!
 * This file is part of the UVTimer project.
 * License details can be found in the file COPYING.
 * Copyright (c) 2020, EvePanix. All rights reserved.
 *
 * \brief      This file contains the definition of
 *             the DisplayLED class.
 * \file       DisplayLED.h
 * \date       2020-05-18
 * \author     Jedzia.
 *
 * modified    2020-05-18, Jedzia
 */
/*---------------------------------------------------------*/
#ifndef UVTIMER_FIRMWARE_640AB6EABDF145878B6AF525BF8D36EA_DISPLAYLED_H
#define UVTIMER_FIRMWARE_640AB6EABDF145878B6AF525BF8D36EA_DISPLAYLED_H

/** @class DisplayLED:
 *  Handles the applications only UI output element.
 *
 */
class DisplayLED {
public:

    /** Call this periodically in a loop to
     * update the display.
     */
    void display();

    /** Set the amount of short blink pulses.
     *  @param shortBlink amount of blink pulses.
     */
    void setShortBlink(volatile int shortBlink);

    /** Set the amount of long blink pulses.
     *  @param longBlink amount of blink pulses.
     */
    void setLongBlink(volatile int longBlink);

    /** Test if the instance is currently in a short-blinking phase.
     *  @return <b>true</b> when not blinking short; otherwise <b>false</b>.
     */
    [[nodiscard]] inline bool isNotShortBlinking() const {
        return m_shortBlink == 0;
    }

    /** Test if the instance is currently in a long-blinking phase.
     *  @return <b>true</b> when not blinking long; otherwise <b>false</b>.
     */
    [[nodiscard]] inline bool isNotLongBlinking() const {
        return m_longBlink == 0;
    }

private:

    volatile int m_shortBlink{};
    volatile int m_longBlink{};

    volatile bool m_shouldBlinkShort{};
    volatile bool m_shouldBlinkLong{};
};

#endif//UVTIMER_FIRMWARE_640AB6EABDF145878B6AF525BF8D36EA_DISPLAYLED_H
