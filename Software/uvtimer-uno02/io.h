#ifndef __IO_H__
#define __IO_H__

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


#endif // __IO_H__
