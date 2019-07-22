#include <Bounce2.h>

#define butInput1     4
#define butInput2     7
#define butInput3     8
#define butInput4    12
#define butInput5     6
#define butInput6   SDA

#define LED1        13
#define LED2         5



// Debouncers
const int debounceInverval = 25;
Bounce debInput1  = Bounce();
Bounce debInput2  = Bounce();
Bounce debInput3  = Bounce();
Bounce debInput4  = Bounce();
Bounce debInput5  = Bounce();
Bounce debInput6  = Bounce();

// Constants
const int ButtonPressLong = 1000;

const int ShortBlinkTime = 500;
const int LongBlinkTime = 2500;

// Variables
int shortBlink = ShortBlinkTime;
int longBlink = LongBlinkTime;

volatile bool shouldBlinkShort;
volatile bool shouldBlinkLong;

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
  pinMode(LED1, OUTPUT);  // enable LED1 output
  pinMode(LED2, OUTPUT);  // enable LED1 output

  debInput1.attach(butInput1, INPUT_PULLUP);
  debInput1.interval(debounceInverval);

  debInput2.attach(butInput2, INPUT_PULLUP);
  debInput2.interval(debounceInverval);

  debInput3.attach(butInput3, INPUT_PULLUP);
  debInput3.interval(debounceInverval);

  debInput4.attach(butInput4, INPUT_PULLUP);
  debInput4.interval(debounceInverval);

  debInput5.attach(butInput5, INPUT_PULLUP);
  debInput5.interval(debounceInverval);

  debInput6.attach(butInput6, INPUT_PULLUP);
  debInput6.interval(debounceInverval);

  setupIRQ();
}

void loop() {
  // put your main code here, to run repeatedly:
  debInput1.update();
  debInput2.update();
  debInput3.update();
  debInput4.update();
  debInput5.update();
  debInput6.update();

  if (debInput4.fell() && !shouldBlinkShort)
  {
    shouldBlinkShort = true;
  }

  if (!debInput4.read() && debInput4.duration() > ButtonPressLong && !shouldBlinkLong)
  {
    shouldBlinkLong = true;
  }

//  digitalWrite(LED1, debInput1.read());
//  digitalWrite(LED1, debInput4.read());

  if(shouldBlinkLong)
  {
    digitalWrite(LED2, true);
    delay(LongBlinkTime);
    digitalWrite(LED2, false);

    shouldBlinkLong = false;

    //shortBlink = ShortBlinkTime;
  }
}

ISR(TIMER1_COMPA_vect) {
  //PORTB ^= B00100000;// toggles bit which affects pin13
  if(shouldBlinkShort)
  {
    bool led1State = digitalRead(LED1);
    digitalWrite(LED1, led1State ^ 1);
    if(led1State)
    {
      shouldBlinkShort = false;
    }
  }
   
}
