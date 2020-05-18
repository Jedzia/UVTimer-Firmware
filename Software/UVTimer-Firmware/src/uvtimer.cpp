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
constexpr int ButtonPressLongDuration = 1000;

constexpr int ShortBlinkTime = 7;
constexpr int LongBlinkTime = 32;

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
    TCCR1B |= (1U << WGM12);// CTC mode on
    TCCR1B |= (1U << CS10);// Set CS10 and CS12 bits for 1024 prescaler:
    TCCR1B |= (1U << CS12);
    TIMSK1 |= (1U << OCIE1A);// timer compare intrupt
    sei();
}

void onShortPressed();

void onLongPressed();

int main() {
    init();

    Serial.begin(115200);
    Serial.println("Setup START");
    //pinMode(LED1Pin, OUTPUT);// enable LED1 output
    //pinMode(LED2Pin, OUTPUT);// enable LED1 output
    shield_setup();

    debInput4.onPressed(onShortPressed);
    debInput4.onPressedFor(ButtonPressLongDuration, onLongPressed);

    //debInput1.begin();
    //debInput2.begin();
    //debInput3.begin();
    debInput4.begin();
    //debInput5.begin();
    //debInput6.begin();

    setupIRQ();

    /* state 1:  led off
 * state 2:  led on
 * transition from s1 to s2 on button press
 * transition back from s2 to s1 after 3 seconds or button press
 */
    State state_Startup(&state_startup_on_enter, nullptr, &state_startup_on_exit);
    State state_Idle(&state_idle_on_enter, &check_other_button, &state_idle_on_exit);
    State state_TimerRunning(&do_nothing, &check_timer_running_button, &do_nothing);
    State state_TimerFinished(&state_timer_finished_on_enter, &check_timer_running_button, &do_nothing);
    //State state_TimerSetup(&do_nothing, &do_nothing, NULL);
    Fsm fsm(&state_Startup);
    G_FSM = &fsm;

    //void setupTransitions(Fsm &fsm) {
    fsm.add_transition(&state_Startup, &state_Idle, STARTUP_EVENT, &on_fsm_idle);

    fsm.add_transition(&state_Idle, &state_TimerRunning, START_TIMER_BUTTON_EVENT, &on_timer_running);
    fsm.add_timed_transition(&state_TimerRunning, &state_Idle, 3000, &on_timer_finished);
    //fsm.add_timed_transition(&state_TimerRunning, &state_Idle, 3000, &on_timer_finished);

    //fsm.add_transition(&state_TimerFinished, &state_Idle, RESET_TIMER_BUTTON_EVENT, &on_timer_reset);
    fsm.add_transition(&state_TimerRunning, &state_Idle, RESET_TIMER_BUTTON_EVENT, &on_timer_cancelled);
    // }
    // initialize
    fsm.run_machine();


    //setupTransitions(fsm);
    Serial.println("Setup END");
    fsm.trigger(STARTUP_EVENT);
#pragma clang diagnostic push
#pragma ide diagnostic ignored "EndlessLoop"
    while(true) {
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

        // Call fsm run
        fsm.run_machine();
        //check_button();
        delay(100);
        //Serial.println("loop");
    }
#pragma clang diagnostic pop
}

void setup() {

}// setup

void onShortPressed() {
    if(shortBlink == 0) {
        //if(!shouldBlinkShort)
        //shouldBlinkShort = true;
        shortBlink = ShortBlinkTime;
    }
}

void onLongPressed() {
    if(longBlink == 0) {
        //shouldBlinkLong = true;
        longBlink = LongBlinkTime;
    }
}

ISR(TIMER1_COMPA_vect) {
    //PORTB ^= B00100000;// toggles bit which affects pin13
    if(shouldBlinkShort) {
        bool led1State = digitalRead(LED1);
        digitalWrite(LED1, led1State ^ 1);
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

    if(shortBlink > 0) {
        //bool led2State = digitalRead(LED2Pin);
        //digitalWrite(LED2Pin, led2State ^ 1);
        //digitalWrite(LED2Pin, !((shortBlink % 4) <= 2));
        digitalWrite(LED2, !((shortBlink % 2U)));
        /*if(led2State)
                   {
                   shouldBlinkLong = false;
                   }*/
        shortBlink--;
    }

    if(longBlink > 0) {
        //bool led2State = digitalRead(LED2Pin);
        //digitalWrite(LED2Pin, led2State ^ 1);
        digitalWrite(LED2, !((longBlink % 8) <= 4));
        /*if(led2State)
                   {
                   shouldBlinkLong = false;
                   }*/
        longBlink--;
    }

    digitalWrite(LED6, !digitalRead(LED6));
}
