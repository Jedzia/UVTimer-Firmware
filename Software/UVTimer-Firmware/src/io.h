/*---------------------------------------------------------*/
/*!
 * This file is part of the UVTimer project.
 * License details can be found in the file COPYING.
 * Copyright (c) 2020, EvePanix. All rights reserved.
 *
 * \brief      This file contains the definition of
 *             the io.h class.
 * \file       io.h
 * \date       2020-05-16
 * \author     Jedzia.
 *
 * modified    2020-05-16, Jedzia
 */
/*---------------------------------------------------------*/
#ifndef __IO_H__
#define __IO_H__

#include <Arduino.h>
#include <EasyButton.h>

// On the Arduino board, digital pins are also used
// for the analog output (software PWM).  Analog input
// pins are a separate set.

// ATMEL ATMEGA8 & 168 / ARDUINO
//
//                  +-\/-+
//            PC6  1|    |28  PC5 (AI 5)
//      (D 0) PD0  2|    |27  PC4 (AI 4)
//      (D 1) PD1  3|    |26  PC3 (AI 3)
//      (D 2) PD2  4|    |25  PC2 (AI 2)
// PWM+ (D 3) PD3  5|    |24  PC1 (AI 1)
//      (D 4) PD4  6|    |23  PC0 (AI 0)
//            VCC  7|    |22  GND
//            GND  8|    |21  AREF
//            PB6  9|    |20  AVCC
//            PB7 10|    |19  PB5 (D 13)
// PWM+ (D 5) PD5 11|    |18  PB4 (D 12)
// PWM+ (D 6) PD6 12|    |17  PB3 (D 11) PWM
//      (D 7) PD7 13|    |16  PB2 (D 10) PWM
//      (D 8) PB0 14|    |15  PB1 (D 9) PWM
//                  +----+
//
// (PWM+ indicates the additional PWM pins on the ATmega168.)

// Buttons
#define ButtonS1        4 // PD4, Down
#define ButtonS2        7 // PD7, Up
#define ButtonS3        8 // PB0, Start
#define ButtonS4        6 // PD6, A
#define ButtonS5      SDA // PC4, B
#define ButtonS6       12 // PB4, Discharge

// LEDs
#define LED1           13 // PB5
#define LED2            5 // PD5
#define LED3           10 // PB2
#define LED4            9 // PB1
#define LED5            1 // PD1
#define LED6          SCL // PC5

// Debouncers
const int DebounceInterval = 75;
//EasyButton  debInput1  = EasyButton (ButtonS1, DebounceInverval, true, true);
//EasyButton  debInput2  = EasyButton (ButtonS2, DebounceInverval, true, true);
//EasyButton  debInput3  = EasyButton (ButtonS3, DebounceInverval, true, true);
EasyButton debInput4 = EasyButton(ButtonS4, DebounceInterval, true, true);
//EasyButton  debInput5  = EasyButton (ButtonS5, DebounceInverval, true, true);
//EasyButton  debInput6  = EasyButton (ButtonS6, DebounceInverval, true, true);

void shield_setup() {
    // initialize buttons with digital input pin.
    pinMode(ButtonS1, INPUT_PULLUP);
    pinMode(ButtonS2, INPUT_PULLUP);
    pinMode(ButtonS3, INPUT_PULLUP);
    pinMode(ButtonS4, INPUT_PULLUP);
    pinMode(ButtonS5, INPUT_PULLUP);
    pinMode(ButtonS6, INPUT_PULLUP);

    // initialize digital pin LED1 as an output.
    pinMode(LED1, OUTPUT);
    pinMode(LED2, OUTPUT);
    pinMode(LED3, OUTPUT);
    pinMode(LED4, OUTPUT);
    pinMode(LED5, OUTPUT);
    pinMode(LED6, OUTPUT);

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
} // xsetup

void test_loop() {
    /*digitalWrite(LED2, !digitalRead(ButtonS1)); // turn the LED on (HIGH is On)
       digitalWrite(LED2, !digitalRead(ButtonS2));
       digitalWrite(LED3, !digitalRead(ButtonS3));
       digitalWrite(LED4, !digitalRead(ButtonS4));
       digitalWrite(LED5, !digitalRead(ButtonS5));
       digitalWrite(LED6, !digitalRead(ButtonS6));*/

    if(!digitalRead(ButtonS1)) {
        digitalWrite(LED1, true); // turn the LED on (true is On)
    }
}

// test function of LEDs
/*ISR(TIMER1_COMPA_vect) {
   //PORTB ^= B00100000;// toggles bit which affects pin13
   //const auto blinkLED = LED1;
   //digitalWrite(blinkLED, !digitalRead(blinkLED));

   // LED chase lights
   static uint8_t shiftRegister = 0b00000001;
   shiftRegister = shiftRegister << 1;
   if(!shiftRegister || shiftRegister > 1u << 6)
    shiftRegister = 0b00000001;

   digitalWrite(LED1, shiftRegister & 1u << 1);
   digitalWrite(LED2, shiftRegister & 1 << 2);
   digitalWrite(LED3, shiftRegister & 1 << 3);
   digitalWrite(LED4, shiftRegister & 1 << 4);
   digitalWrite(LED5, shiftRegister & 1 << 5);
   digitalWrite(LED6, shiftRegister & 1 << 6);
   }*/

#endif // __IO_H__
