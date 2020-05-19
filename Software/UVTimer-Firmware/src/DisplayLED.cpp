//
// Created by Jedzia on 18.05.2020.
//

#include "DisplayLED.h"
#include "io.h"

void DisplayLED::display(void) {
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
        digitalWrite(LED2, static_cast<uint8_t>(((m_shortBlink % every_second_tick)) == 0));
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
        digitalWrite(LED2, static_cast<uint8_t>(m_longBlink % every_eight_tick > 4));
        /*if(led2State)
                   {
                   shouldBlinkLong = false;
                   }*/
        m_longBlink--;
    }
} // DisplayLED::display

void DisplayLED::setShortBlink(volatile int shortBlink) {
    DisplayLED::m_shortBlink = shortBlink;
}

void DisplayLED::setLongBlink(volatile int longBlink) {
    DisplayLED::m_longBlink = longBlink;
}
