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

#include <stdint-gcc.h>
#include <Arduino.h>

/** @class DisplayLED:
 *  Handles the applications only UI output element.
 *
 */
template<uint8_t TPin>
class DisplayLED {
public:

    /** Call this periodically in a loop to
     * update the display.
     */
    void display() {
        // i need another one
        // a value ... 42
        // decreased in 4 * 10er long blinks and
        // then 2 * short blinks

        //PORTB ^= B00100000;// toggles bit which affects pin13
        /*if(shouldBlinkShort) {
            bool led1State = digitalRead(LED1);
            digitalWrite(LED1, led1State ^ 1);
            if(led1State) {
                shouldBlinkShort = false;
            }
           }*/

        /*if(shouldBlinkLong)
               {
               bool led2State = digitalRead(LED2Pin);
               digitalWrite(LED2Pin, led2State ^ 1);
               if(led2State)
               {
                shouldBlinkLong = false;
               }
               }*/

        if(m_shortBlink > 0) {
            //bool led2State = digitalRead(LED2Pin);
            //digitalWrite(LED2Pin, led2State ^ 1);
            //digitalWrite(LED2Pin, !((shortBlink % 4) <= 2));
            const int every_second_tick = 2;
            digitalWrite(TPin, static_cast<uint8_t>(((m_shortBlink % every_second_tick)) == 0));
            /*if(led2State)
                       {
                       shouldBlinkLong = false;
                       }*/
            m_shortBlink--;
        }

        if(m_longBlink > 0) {
            //bool led2State = digitalRead(LED2Pin);
            //digitalWrite(LED2Pin, led2State ^ 1);
            const int every_eight_tick = 8;
            digitalWrite(TPin, static_cast<uint8_t>(m_longBlink % every_eight_tick > 4));
            /*if(led2State)
                       {
                       shouldBlinkLong = false;
                       }*/
            m_longBlink--;
        }
    } // DisplayLED::display

    /** Set the amount of short blink pulses.
     *  @param shortBlink amount of blink pulses.
     */
    void setShortBlink(volatile int shortBlink) {
        DisplayLED<TPin>::m_shortBlink = shortBlink;
    }

    /** Set the amount of long blink pulses.
     *  @param longBlink amount of blink pulses.
     */
    void setLongBlink(volatile int longBlink) {
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

private:

    //static constexpr uint8_t pin = 0;
    volatile int m_shortBlink{};
    volatile int m_longBlink{};

    volatile bool m_shouldBlinkShort{};
    volatile bool m_shouldBlinkLong{};
};

#endif//UVTIMER_FIRMWARE_640AB6EABDF145878B6AF525BF8D36EA_DISPLAYLED_H
