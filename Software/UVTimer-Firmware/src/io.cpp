//
// Created by Jedzia on 18.05.2020.
//

#include "io.h"

#ifdef USE_EASYBUTTON
// Debouncers
const int DebounceInterval = 75;
//EasyButton  debInput1  = EasyButton (ButtonS1, DebounceInverval, true, true);
//EasyButton  debInput2  = EasyButton (ButtonS2, DebounceInverval, true, true);
//EasyButton  debInput3  = EasyButton (ButtonS3, DebounceInverval, true, true);
EasyButton debInput4 = EasyButton(ButtonS4, DebounceInterval, true, true);
//EasyButton  debInput5  = EasyButton (ButtonS5, DebounceInverval, true, true);
//EasyButton  debInput6  = EasyButton (ButtonS6, DebounceInverval, true, true);
#endif

void shield_setup() {
#ifndef DIRECT_WRITE
    // initialize buttons with digital input pin.
    pinMode(ButtonS1, INPUT_PULLUP);
    pinMode(ButtonS2, INPUT_PULLUP);
    //pinMode(ButtonS3, INPUT_PULLUP);
    pinMode(ButtonS4, INPUT_PULLUP);
    //pinMode(ButtonS5, INPUT_PULLUP);
    //pinMode(ButtonS6, INPUT_PULLUP);

    // initialize digital pin LED1 as an output.
    pinMode(LED1, OUTPUT);
    pinMode(LED2, OUTPUT);
    pinMode(LED3, OUTPUT);
    //pinMode(LED4, OUTPUT);
    //pinMode(LED5, OUTPUT);
    pinMode(LED6, OUTPUT);
#else
    PORTD = (1<<PD4)|(1<<PD7)|(1<<PD6);
    DDRD = (1<<DDD5);

    PORTC = 0;
    DDRC = (1<<DDC5);

    PORTB = 0;
    DDRB = (1<<DDB5)  | (1<<DDB2);

    _NOP();
#endif

    /*// setup TIMER1 COMPARE
       cli();
       TCCR1A = 0;
       TCCR1B = 0;
       //OCR1A = 15624; // = (target time / timer resolution) - 1 or 1 / 6.4e-5 - 1 = 15624
       OCR1A = 15624 >> 4;
       TCCR1B |= (1 << WGM12);     // CTC mode on
       TCCR1B |= (1 << CS10);      // Set CS10 and CS12 bits for 1024 prescaler:
       TCCR1B |= (1 << CS12);
       TIMSK1 |= (1 << OCIE1A);    // timer compare interrupt
       sei();*/
} // shield_setup
