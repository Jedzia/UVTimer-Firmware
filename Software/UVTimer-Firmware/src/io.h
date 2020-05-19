/*---------------------------------------------------------*/
/*!
 * This file is part of the UVTimer project.
 * License details can be found in the file COPYING.
 * Copyright (c) 2020, EvePanix. All rights reserved.
 *
 * \brief      This file contains the definition of
 *             the input/output pins of the application.
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
//
//  [S1] [S2]
//  [S3]  [S6]
//  [S4]  [S5]
//

/* Debug, Reset Timer */
#define ButtonS1 4// PD4, Down
/* Debug, Start Timer */
#define ButtonS2 7// PD7, Up
#define ButtonS3 8// PB0, Start
/* Debug, debounced short/long tick display */
#define ButtonS4 6// PD6, A
#define ButtonS5 SDA// PC4, B
#define ButtonS6 12// PB4, Discharge

// LEDs
//
// (1)  (2)
//               (5)  (6)
// (3)  (4)
//

/* Green */
#define LED1 13// PB5
/* Green, Blink Signal LED, User Interface */
//#define LED2 5// PD5
constexpr uint8_t LED2 = 5; // PD5
/* Red, Output Relays State */
#define LED3 10// PB2
/* Red */
#define LED4 9// PB1
/* Orange, !!! Attention, shared with Serial TxD !!! */
#define LED5 1// PD1
/* Orange, System Tick Pulse  */
#define LED6 SCL// PC5

//extern EasyButton debInput1;
//extern EasyButton debInput2;
//extern EasyButton debInput3;
extern EasyButton debInput4;
//extern EasyButton debInput5;
//extern EasyButton debInput6;

void shield_setup();// xsetup

void test_loop();

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

#endif// __IO_H__
