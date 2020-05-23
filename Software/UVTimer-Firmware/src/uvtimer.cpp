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
#include "setup.h"
#include "states.h"
#include "stdinout.h"

// Variables
volatile uint32_t system_tick = 0;

#ifdef USE_LOCAL_FSM
struct instance_data {
    uint32_t duration = 0;
    DisplayLED<LED2> *m_displayLed = nullptr;
};

typedef enum {
    STATE_STARTUP,
    STATE_IDLE,
    STATE_TIMER_RUNNING, NUM_STATES
} state_t;
typedef struct instance_data instance_data_t;
typedef state_t state_func_t(instance_data_t *data);

state_t do_state_Startup(instance_data_t *data);

state_t do_state_Idle(instance_data_t *data);

state_t do_state_TimerRunning(instance_data_t *data);

state_func_t *const state_table[ NUM_STATES ] = {
    do_state_Startup,
    do_state_Idle,
    do_state_TimerRunning
};

state_t run_state(state_t cur_state, instance_data_t *data) {
    return state_table[ cur_state ](data);
}

state_t do_state_Startup(instance_data_t *data) {
    println("do_state_Startup");
    return STATE_IDLE;
}

state_t do_state_Idle(instance_data_t *data) {
    println("do_state_Idle");
    int buttonStateS2 = digitalRead(ButtonS2);
    if(buttonStateS2 == LOW) {
        println("button pressed do_state_Idle -> STATE_TIMER_RUNNING");
        data->duration = millis() + 30000;
        data->m_displayLed->setShortBlink(32);
        on_timer_running();
        return STATE_TIMER_RUNNING;
    }

    return STATE_IDLE;
}

state_t do_state_TimerRunning(instance_data_t *data) {
    println("do_state_TimerRunning");

    int buttonStateS1 = digitalRead(ButtonS1);
    if(buttonStateS1 == LOW) {
        println("do_state_TimerRunning Reset");
        on_timer_reset();
        return STATE_IDLE;
    }
    if (data->duration <  millis()) {
        on_timer_finished();
        return STATE_IDLE;
    }

    return STATE_TIMER_RUNNING;
}

#else // ifdef USE_LOCAL_FSM
Fsm *G_FSM = nullptr;
Fsm::Timer timer1(nullptr);
#endif // ifdef USE_LOCAL_FSM

DisplayLED<LED2> displayLed{};

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

#ifdef USE_SERIAL
    Serial.begin(115200);
#endif
    println("Setup START");
    //pinMode(LED1Pin, OUTPUT);// enable LED1 output
    //pinMode(LED2Pin, OUTPUT);// enable LED1 output
    shield_setup();

#ifdef USE_EASYBUTTON
    debInput4.onPressed(onShortPressed);
    debInput4.onPressedFor(ButtonPressLongDuration, onLongPressed);

    //debInput1.begin();
    //debInput2.begin();
    //debInput3.begin();
    debInput4.begin();
    //debInput5.begin();
    //debInput6.begin();
#endif

    setupIRQ();

#ifdef USE_LOCAL_FSM
    state_t cur_state = STATE_STARTUP;
    instance_data_t data;
    data.m_displayLed = &displayLed;
#else
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
    fsm.trigger(STARTUP_EVENT);
#endif // ifdef USE_LOCAL_FSM

    println("Setup END");

#pragma GCC diagnostic push
#if defined(__CLION_IDE__)
#  pragma ide diagnostic ignored "EndlessLoop"
#endif

    while(true) {
        // put your main code here, to run repeatedly:
#ifdef USE_EASYBUTTON
        //debInput1.read();
        //debInput2.read();
        //debInput3.read();
        debInput4.read();
        //debInput5.read();
        //debInput6.read();
#else
        if(digitalRead(ButtonS4) == 0 && displayLed.isNotShortBlinking()) {
            //onShortPressed();
            onLongPressed();
        }

#endif // ifdef USE_EASYBUTTON

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
#ifdef USE_LOCAL_FSM
        cur_state = run_state(cur_state, &data);
#else
        fsm.run_machine();
#endif
        //check_button();
        //delay(10);
        delay(250);
        //println("loop");
    }
#pragma GCC diagnostic pop
}// main

void check_other_button(/*Fsm &fsm*/) {
//    println("check_other_button()");
    int buttonStateS2 = digitalRead(ButtonS2);
    if(buttonStateS2 == LOW) {
        println("button_pressed START_TIMER_BUTTON_EVENT");
        delay(10);
        system_tick = 0;
#ifdef USE_LOCAL_FSM
#else
        G_FSM->trigger(START_TIMER_BUTTON_EVENT);
#endif
    }
}

void check_timer_running_button(/*Fsm &fsm*/) {
//    println("check_timer_running_button()");
    int buttonStateS1 = digitalRead(ButtonS1);
    if(buttonStateS1 == LOW) {
        println("button_pressed RESET_TIMER_BUTTON_EVENT");
        //G_FSM->reset_timed_transition(nullptr);
#ifdef USE_LOCAL_FSM
#else
        G_FSM->trigger(RESET_TIMER_BUTTON_EVENT);
#endif
    }
}

void timer_is_running() {
    //println("timer_is_running()");
    int buttonStateS1 = digitalRead(ButtonS1);
    if(buttonStateS1 == LOW) {
        println("button_pressed RESET_TIMER_BUTTON_EVENT");
        //G_FSM->reset_timed_transition(nullptr);
#ifdef USE_LOCAL_FSM
#else
        G_FSM->trigger(RESET_TIMER_BUTTON_EVENT);
#endif
    } else {
        if(system_tick % 50U == 0) {
            //printf("system_tick: %lu\n", system_tick);
            //println("timer_is_running: system_tick % 10U");
            // indicate the actual timer value to the user
            onShortPressed();
        }
    }
} // timer_is_running

void onShortPressed() {
    if(displayLed.isNotShortBlinking()) {
        //println("onShortPressed " STR(ShortBlinkTime));
        unsigned long now = millis();
        //const long long timer_ms = static_cast<long long>(timer1.m_timed_transitions->interval) -
        // (static_cast<long long>(now) - static_cast<long
        // long>(timer1.m_timed_transitions->start));
#ifdef USE_LOCAL_FSM
        int set_blink = 16;
#else
#  ifdef USE_SERIAL
        const unsigned long timer_ms = now - timer1.getTimedTransitions()->start;
#  endif
        const unsigned long timer_ms_left = timer1.getTimedTransitions()->interval + 1 - (now - timer1.getTimedTransitions()->start);
        int set_blink = static_cast<int>(timer_ms_left / 500);
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
#endif // ifdef USE_LOCAL_FSM
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
    system_tick = system_tick + 1;
    displayLed.display();
    digitalWrite(LED6, static_cast<uint8_t>(digitalRead(LED6) == 0));
}
