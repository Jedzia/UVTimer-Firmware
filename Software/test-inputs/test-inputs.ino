#include <Bounce2.h>

#define butInput1     4
#define butInput2     7
#define butInput3     8
#define butInput4    12
#define butInput5     6
#define butInput6   SDA

#define LED1        13



// Debouncers
const int debounceInverval = 25;
Bounce debInput1  = Bounce();
Bounce debInput2  = Bounce();
Bounce debInput3  = Bounce();
Bounce debInput4  = Bounce();
Bounce debInput5  = Bounce();
Bounce debInput6  = Bounce();

void setup() {
  // put your setup code here, to run once:
  pinMode(LED1, OUTPUT);  // enable LED1 output

  pinMode(butInput1, INPUT_PULLUP);
  debInput1.attach(butInput1);
  debInput1.interval(debounceInverval);

  pinMode(butInput2, INPUT_PULLUP);
  debInput2.attach(butInput2);
  debInput2.interval(debounceInverval);

  pinMode(butInput3, INPUT_PULLUP);
  debInput3.attach(butInput3);
  debInput3.interval(debounceInverval);

  pinMode(butInput4, INPUT_PULLUP);
  debInput4.attach(butInput4);
  debInput4.interval(debounceInverval);

  pinMode(butInput5, INPUT_PULLUP);
  debInput5.attach(butInput5);
  debInput5.interval(debounceInverval);

  pinMode(butInput6, INPUT_PULLUP);
  debInput6.attach(butInput6);
  debInput6.interval(debounceInverval);
}

void loop() {
  // put your main code here, to run repeatedly:
  debInput1.update();
  debInput2.update();
  debInput3.update();
  debInput4.update();
  debInput5.update();
  debInput6.update();

  if (!debInput1.read())
  {
  }

//  digitalWrite(LED1, debInput1.read());
  digitalWrite(LED1, debInput1.read() && debInput2.read() &&debInput3.read() &&debInput4.read() &&debInput5.read() &&debInput6.read());
}
