#include <Fsm.h>
#include <EasyButton.h>

#define butInput1     4
#define butInput2     7
#define butInput3     8
#define butInput4    12
#define butInput5     6
#define butInput6   SDA

#define LED1Pin      13
#define LED2Pin       5



// Debouncers
const int DebounceInverval = 75;
//EasyButton  debInput1  = EasyButton (butInput1, DebounceInverval, true, true);
//EasyButton  debInput2  = EasyButton (butInput2, DebounceInverval, true, true);
//EasyButton  debInput3  = EasyButton (butInput3, DebounceInverval, true, true);
EasyButton  debInput4  = EasyButton (butInput4, DebounceInverval, true, true);
//EasyButton  debInput5  = EasyButton (butInput5, DebounceInverval, true, true);
//EasyButton  debInput6  = EasyButton (butInput6, DebounceInverval, true, true);

// Constants
const int ButtonPressLongDuration = 1000;

const int ShortBlinkTime = 3;
const int LongBlinkTime = 32;

// Variables
volatile int shortBlink = 0;
volatile int longBlink = 0;

volatile bool shouldBlinkShort;
volatile bool shouldBlinkLong;


//Events
#define BUTTON_EVENT  0

int buttonState = 0;

/* state 1:  led off
 * state 2:  led on
 * transition from s1 to s2 on button press
 * transition back from s2 to s1 after 3 seconds or button press
 */
State state_led_off(&led_off, &check_button, NULL);
State state_led_on(&led_on, &check_button, NULL);
Fsm fsm(&state_led_off);

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

void check_button()
{
  int buttonState = digitalRead(butInput2);
  if (buttonState == LOW) {
    //Serial.println("button_pressed");
    fsm.trigger(BUTTON_EVENT);
  }
}


void setupIRQ()
{
    //DDRB |= B00100000;  // set pin13 to output without affecting other pins
    // above is identical to pinMode(LEDPIN, OUTPUT); using Direct Port Manipulation
    cli();
    TCCR1A = 0;
    TCCR1B = 0;
    OCR1A = 15624/8;  // = (target time / timer resolution) - 1 or 1 / 6.4e-5 - 1 = 15624
    //OCR1A = 15624>>1;  // divide by two >>EDIT added this line<<
    TCCR1B |= (1 << WGM12);// CTC mode on
    TCCR1B |= (1 << CS10);// Set CS10 and CS12 bits for 1024 prescaler:
    TCCR1B |= (1 << CS12);
    TIMSK1 |= (1 << OCIE1A);// timer compare intrupt
    sei();
}

void setup() {
  pinMode(LED1Pin, OUTPUT);  // enable LED1 output
  pinMode(LED2Pin, OUTPUT);  // enable LED1 output


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
  if(!shouldBlinkShort)
  {
    shouldBlinkShort = true;
  }
}

void onLongPressed() {
  if(!longBlink)
  {
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

ISR(TIMER1_COMPA_vect) {
  //PORTB ^= B00100000;// toggles bit which affects pin13
  if(shouldBlinkShort)
  {
    bool led1State = digitalRead(LED1Pin);
    digitalWrite(LED1Pin, led1State ^ 1);
    if(led1State)
    {
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



  if(longBlink)
  {
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
