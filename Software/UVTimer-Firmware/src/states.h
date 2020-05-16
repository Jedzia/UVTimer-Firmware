#ifndef __STATES_H__
#define __STATES_H__

#include <Fsm.h>
#include "io.h"

//Events
#define BUTTON_EVENT  0

int buttonState = 0;

void led_off();
void led_on();
void check_button();

/* state 1:  led off
 * state 2:  led on
 * transition from s1 to s2 on button press
 * transition back from s2 to s1 after 3 seconds or button press
 */
State state_Startup(&led_off, &check_button, NULL);
State state_Idle(&led_off, &check_button, NULL);
State state_TimerRunning(&led_on, &check_button, NULL);
State state_TimerSetup(&led_on, &check_button, NULL);
Fsm fsm(&state_Startup);

// Transition functions
void led_off()
{
  //Serial.println("led_off");
  //digitalWrite(LED_PIN, LOW);
}

void led_on()
{
  //Serial.println("led_on");
  //digitalWrite(LED_PIN, HIGH);
}

// Transition functions
void check_button()
{
  int buttonState = digitalRead(ButtonS2);
  if (buttonState == LOW) {
    //Serial.println("button_pressed");
    fsm.trigger(BUTTON_EVENT);
  }
}

void setupTransitions() {

}



#endif // __STATES_H__
