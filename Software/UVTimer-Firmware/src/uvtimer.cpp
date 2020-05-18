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
#include "uvtimer.h"
//
#include "DisplayLED.h"
#include "io.h"
#include "states.h"
#include "stdinout.h"

#define STR_INDIRECTION(x) # x
#define STR(x) STR_INDIRECTION(x)

// Variables
Fsm* G_FSM = nullptr;
volatile uint32_t system_tick = 0;
//volatile int shortBlink = 0;
//volatile int longBlink = 0;

//volatile bool shouldBlinkShort;
//volatile bool shouldBlinkLong;

Fsm::Timer timer1 = nullptr;

DisplayLED displayLed{};

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

void timer_is_running();

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
    State state_Startup(&state_startup_on_enter);
    State state_Idle(nullptr, &check_other_button);
    State state_TimerRunning(nullptr, &timer_is_running);
    State state_TimerFinished(&state_timer_finished_on_enter, &check_timer_running_button, &do_nothing);
    //State state_TimerSetup(&do_nothing, &do_nothing, NULL);
    Fsm fsm(&state_Startup);
    G_FSM = &fsm;

    //void setupTransitions(Fsm &fsm) {
    fsm.add_transition(&state_Startup, &state_Idle, STARTUP_EVENT, &on_fsm_idle);

    fsm.add_transition(&state_Idle, &state_TimerRunning, START_TIMER_BUTTON_EVENT, &on_timer_running);
    timer1 = fsm.add_timed_transition(&state_TimerRunning, &state_Idle, G_TIMER_INTERVAL, &on_timer_finished);
    //fsm.add_timed_transition(&state_TimerRunning, &state_Idle, 3000, &on_timer_finished);

    //fsm.add_transition(&state_TimerFinished, &state_Idle, RESET_TIMER_BUTTON_EVENT,
    // &on_timer_reset);
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

               //if (!debInput4.read() && debInput4.duration() > ButtonPressLong &&
                  !shouldBlinkLong)
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
        delay(10);
        //Serial.println("loop");
    }
#pragma clang diagnostic pop
}// main

void check_other_button(/*Fsm &fsm*/) {
//    Serial.println("check_other_button()");
    int buttonStateS2 = digitalRead(ButtonS2);
    if(buttonStateS2 == LOW) {
        Serial.println("button_pressed START_TIMER_BUTTON_EVENT");
        delay(10);
        system_tick = 0;
        G_FSM->trigger(START_TIMER_BUTTON_EVENT);
    }
}

void check_timer_running_button(/*Fsm &fsm*/) {
//    Serial.println("check_timer_running_button()");
    int buttonStateS1 = digitalRead(ButtonS1);
    if(buttonStateS1 == LOW) {
        Serial.println("button_pressed RESET_TIMER_BUTTON_EVENT");
        //G_FSM->reset_timed_transition(nullptr);
        G_FSM->trigger(RESET_TIMER_BUTTON_EVENT);
    }
}

void timer_is_running() {
    //Serial.println("timer_is_running()");
    int buttonStateS1 = digitalRead(ButtonS1);
    if(buttonStateS1 == LOW) {
        Serial.println("button_pressed RESET_TIMER_BUTTON_EVENT");
        //G_FSM->reset_timed_transition(nullptr);
        G_FSM->trigger(RESET_TIMER_BUTTON_EVENT);
    } else {
        if(system_tick % 50U == 0) {
            printf("system_tick: %lu\n", system_tick);
            //Serial.println("timer_is_running: system_tick % 10U");
            onShortPressed();
        }
    }
}

void onShortPressed() {
    if(displayLed.isNotShortBlinking()) {
        //Serial.println("onShortPressed " STR(ShortBlinkTime));
        unsigned long now = millis();
        //const long long timer_ms = static_cast<long long>(timer1.m_timed_transitions->interval) -
        // (static_cast<long long>(now) - static_cast<long
        // long>(timer1.m_timed_transitions->start));
        const unsigned long timer_ms = now - timer1.m_timed_transitions->start;
        const unsigned long timer_ms_left = timer1.m_timed_transitions->interval + 1 - (now - timer1.m_timed_transitions->start);
        int set_blink = static_cast<int>(timer_ms_left / 1000);
        if(set_blink < 0) {
            set_blink = 0;
        }

        printf("[onShortPressed-%d]: now: %lu, interval: %lu, start: %lu, time ms: %lu, time left: %lu, setblink: %d\n",
                ShortBlinkTime,
                now,
                timer1.m_timed_transitions->interval,
                timer1.m_timed_transitions->start,
                timer_ms,
                timer_ms_left,
                set_blink);
        //timer1.m_timed_transitions->transition,
        //timer1.m_timed_transitions->interval;
        //if(!shouldBlinkShort)
        //shouldBlinkShort = true;
        //shortBlink = ShortBlinkTime;
        displayLed.setShortBlink(set_blink);
    }
}// onShortPressed

void onLongPressed() {
    if(displayLed.isNotLongBlinking()) {
        //shouldBlinkLong = true;
        displayLed.setLongBlink(LongBlinkTime);
    }
}

ISR(TIMER1_COMPA_vect) {
    system_tick++;

    displayLed.display();

    digitalWrite(LED6, static_cast<uint8_t>(digitalRead(LED6) == 0));
}
