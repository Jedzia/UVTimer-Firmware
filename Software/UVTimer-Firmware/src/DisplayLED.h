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

#include <Arduino.h>
#include <stdint-gcc.h>

using WriteType = uint8_t;

/** @class DisplayLED:
 *  Handles the applications only UI output element.
 *
 */
template<WriteType TPin>
class DisplayLED {
public:

    using PrecissionType = uint32_t;
    static constexpr int short_blink_tick_divider = 2;
    static constexpr int long_blink_tick_divider = 8;

    /** Call this periodically in a loop to
     * update the display.
     */
    void display() {
        if(m_longBlink > 0) {
            //digitalWrite(TPin, static_cast<WriteType>(m_longBlink % long_blink_tick_divider == 0));
            digitalWrite(TPin, static_cast<WriteType>(((m_longBlink - 1) / long_blink_tick_divider) % 2 == 1));
            m_longBlink = m_longBlink - 1;
        } else {
            if(m_shortBlink > 0) {
                digitalWrite(TPin, static_cast<WriteType>((((m_shortBlink - 1) % short_blink_tick_divider)) == 1));
                m_shortBlink = m_shortBlink - 1;
            }
        }
    } // DisplayLED::display

    /** Set the amount of short blink pulses.
     *  @param shortBlink amount of blink pulses.
     */
    void setShortBlink(int shortBlink) {
        DisplayLED<TPin>::m_shortBlink = shortBlink;
    }

    /** Set the amount of long blink pulses.
     *  @param longBlink amount of blink pulses.
     */
    void setLongBlink(int longBlink) {
        DisplayLED<TPin>::m_longBlink = longBlink;
    }

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

    [[nodiscard]] volatile int getShortBlink() const {
        return m_shortBlink;
    }

    [[nodiscard]] volatile int getLongBlink() const {
        return m_longBlink;
    }

private:

    volatile PrecissionType m_shortBlink{};
    volatile PrecissionType m_longBlink{};

    volatile bool m_shouldBlinkShort{};
    volatile bool m_shouldBlinkLong{};
};

#endif//UVTIMER_FIRMWARE_640AB6EABDF145878B6AF525BF8D36EA_DISPLAYLED_H
