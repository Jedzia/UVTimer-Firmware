/*---------------------------------------------------------*/
/*!
 * This file is part of the UVTimer project.
 * License details can be found in the file COPYING.
 * Copyright (c) 2020, EvePanix. All rights reserved.
 *
 * \brief      This file contains the definition of
 *             the main UVTimer logic.
 * \file       uvtimer.cpp
 * \date       2020-05-16
 * \author     Jedzia.
 *
 * modified    2020-05-16, Jedzia
 */
/*---------------------------------------------------------*/
#include "io.h"
#include "states.h"

// Constants
const int ButtonPressLongDuration = 1000;

const int ShortBlinkTime = 7;
const int LongBlinkTime = 32;

// Variables
volatile int shortBlink = 0;
volatile int longBlink = 0;

volatile bool shouldBlinkShort;
volatile bool shouldBlinkLong;

void setupIRQ() {
    //DDRB |= B00100000;  // set pin13 to output without affecting other pins
    // above is identical to pinMode(LEDPIN, OUTPUT); using Direct Port Manipulation
    cli();
    TCCR1A = 0;
    TCCR1B = 0;
    OCR1A = 15624 / 8;// = (target time / timer resolution) - 1 or 1 / 6.4e-5 - 1 = 15624
    //OCR1A = 15624>>1;  // divide by two >>EDIT added this line<<
    TCCR1B |= (1 << WGM12);// CTC mode on
    TCCR1B |= (1 << CS10);// Set CS10 and CS12 bits for 1024 prescaler:
    TCCR1B |= (1 << CS12);
    TIMSK1 |= (1 << OCIE1A);// timer compare intrupt
    sei();
}

void onShortPressed();

void onLongPressed();

void setup() {
    pinMode(LED1Pin, OUTPUT);// enable LED1 output
    pinMode(LED2Pin, OUTPUT);// enable LED1 output

    debInput4.onPressed(onShortPressed);
    debInput4.onPressedFor(ButtonPressLongDuration, onLongPressed);

    //debInput1.begin();
    //debInput2.begin();
    //debInput3.begin();
    debInput4.begin();
    //debInput5.begin();
    //debInput6.begin();

    setupIRQ();
}

void onShortPressed() {
    if(!shortBlink) {
        //if(!shouldBlinkShort)
        //shouldBlinkShort = true;
        shortBlink = ShortBlinkTime;
    }
}

void onLongPressed() {
    if(!longBlink) {
        //shouldBlinkLong = true;
        longBlink = LongBlinkTime;
    }
}

void loop() {
    // put your main code here, to run repeatedly:
    //debInput1.read();
    //debInput2.read();
    //debInput3.read();
    debInput4.read();
    //debInput5.read();
    //debInput6.read();

    /*//if (debInput4.fell() && !shouldBlinkShort)
       if (debInput4.rose() && debInput4.duration() < ButtonPressLong && !shouldBlinkShort)
       {
       shouldBlinkShort = true;
       }

       //if (!debInput4.read() && debInput4.duration() > ButtonPressLong && !shouldBlinkLong)
       if (debInput4.duration() > ButtonPressLong && debInput4.rose() && !shouldBlinkLong)
       {
       shouldBlinkLong = true;
       }*/

    //  digitalWrite(LED1Pin, debInput1.read());
    //  digitalWrite(LED1Pin, debInput4.read());

    /*if(shouldBlinkLong)
       {
       digitalWrite(LED2Pin, true);
       delay(LongBlinkTime);
       digitalWrite(LED2Pin, false);

       shouldBlinkLong = false;

       //shortBlink = ShortBlinkTime;
       }*/
}

ISR(TIMER1_COMPA_vect)
{
    //PORTB ^= B00100000;// toggles bit which affects pin13
    if(shouldBlinkShort) {
        bool led1State = digitalRead(LED1Pin);
        digitalWrite(LED1Pin, led1State ^ 1);
        if(led1State) {
            shouldBlinkShort = false;
        }
    }

    /*if(shouldBlinkLong)
       {
       bool led2State = digitalRead(LED2Pin);
       digitalWrite(LED2Pin, led2State ^ 1);
       if(led2State)
       {
        shouldBlinkLong = false;
       }
       }*/

    if(shortBlink) {
        //bool led2State = digitalRead(LED2Pin);
        //digitalWrite(LED2Pin, led2State ^ 1);
        //digitalWrite(LED2Pin, !((shortBlink % 4) <= 2));
        digitalWrite(LED2Pin, !((shortBlink % 2)));
        /*if(led2State)
           {
           shouldBlinkLong = false;
           }*/
        shortBlink--;
    }

    if(longBlink) {
        //bool led2State = digitalRead(LED2Pin);
        //digitalWrite(LED2Pin, led2State ^ 1);
        digitalWrite(LED2Pin, !((longBlink % 8) <= 4));
        /*if(led2State)
           {
           shouldBlinkLong = false;
           }*/
        longBlink--;
    }
}
