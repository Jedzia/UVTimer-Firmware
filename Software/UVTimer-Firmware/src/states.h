/*---------------------------------------------------------*/
/*!
 * This file is part of the UVTimer project.
 * License details can be found in the file COPYING.
 * Copyright (c) 2020, EvePanix. All rights reserved.
 *
 * \brief      This file contains the definition of
 *             transition and transition-callback functions
 *             used by the finite-state-machine of the
 *             application.
 * \file       states.h
 * \date       2020-05-16
 * \author     Jedzia.
 *
 * modified    2020-05-16, Jedzia
 */
/*---------------------------------------------------------*/
#ifndef __STATES_H__
#define __STATES_H__

#include "setup.h"
#include "io.h"
#include <Fsm.h>

//Events
#define ADVANCE_EVENT 0
#define STARTUP_EVENT 1
#define START_TIMER_BUTTON_EVENT 2
#define RESET_TIMER_BUTTON_EVENT 3

extern Fsm* G_FSM;

void led_off();

void led_on();

void check_button();

// Transition callback functions
void state_startup_on_enter() {
    println("Entering STARTUP");
}

void state_startup_on_exit() {
    println("Exiting STARTUP");
}

void state_idle_on_enter() {
    println("Entering IDLE");
}

void state_idle_on_exit() {
    println("Exiting IDLE");
}

void state_timer_finished_on_enter() {
    println("Entering TIMER_FINISHED");
    //G_FSM->trigger(ADVANCE_EVENT);
}

void led_off() {
    //println("led_off");
    //digitalWrite(LED_PIN, LOW);
}

void led_on() {
    //println("led_on");
    //digitalWrite(LED_PIN, HIGH);
}

// Transition functions
void on_fsm_idle() {
    println("on_fsm_idle");
    //println("led_on");
    //digitalWrite(LED_PIN, HIGH);
}

void do_nothing() {
    println("do_nothing");
}

void on_timer_running() {
    println("timer running");
    digitalWrite(LED3, true);// turn the LED on (true is On)
}

void on_timer_finished() {
    println("timer finished");
    digitalWrite(LED3, false);// turn the LED on (true is On)
}

void on_timer_reset() {
    println("timer reset");
    digitalWrite(LED3, false);// turn the LED on (true is On)
}

void on_timer_cancelled() {
    println("timer cancelled");
    digitalWrite(LED3, false);// turn the LED on (true is On)
}

void check_button(/*Fsm &fsm*/) {
    //println("check_button()");
    int buttonStateS2 = digitalRead(ButtonS2);
    if(buttonStateS2 == LOW) {
        println("button_pressed START_TIMER_BUTTON_EVENT");
        G_FSM->trigger(START_TIMER_BUTTON_EVENT);
    }
}

void check_other_button(/*Fsm &fsm*/);

void check_timer_running_button(/*Fsm &fsm*/);

#endif// __STATES_H__
