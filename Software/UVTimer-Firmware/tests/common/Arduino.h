//
// Created by Jedzia on 19.05.2020.
//

#ifndef UVTIMER_FIRMWARE_279246ADD57F4471860C23A45DCF450D_ARDUINO_H
#define UVTIMER_FIRMWARE_279246ADD57F4471860C23A45DCF450D_ARDUINO_H

extern bool debugPrint;
extern int setHighTimes;

void showSummary(bool withLog = false);
void digitalWrite(unsigned int pin, unsigned int val);

#endif//UVTIMER_FIRMWARE_279246ADD57F4471860C23A45DCF450D_ARDUINO_H
