/*---------------------------------------------------------*/
/*!
 * This file is part of the UVTimer project.
 * License details can be found in the file COPYING.
 * Copyright (c) 2020, EvePanix. All rights reserved.
 *
 * \brief      This file contains the definition of
 *             the Arduino.cpp class.
 * \file       Arduino.cpp
 * \date       2020-05-19
 * \author     Jedzia.
 *
 * modified    2020-05-19, Jedzia
 */
/*---------------------------------------------------------*/
#include "Arduino.h"
#include <iostream>
#include <map>
#include <sstream>
#include <string>
#include <vector>

int setHighTimes = 0;
bool debugPrint = false;

typedef std::map<unsigned int, unsigned int> SummaryPinMap;
typedef std::map<unsigned int, std::vector<std::string>> SummaryPinLog;
SummaryPinMap pin_writes{};
SummaryPinLog pin_write_log{};

void digitalWrite(unsigned int pin, unsigned int val) {
    if(val == 1) {
        setHighTimes++;
    }

    std::stringstream msg;
    msg << "digitalWrite(Pin: " << pin << " val: " << val << ")";
    auto msg_str = msg.str();
    if(debugPrint) {
        std::cout << msg_str << "\n";
    }

    auto stored_value = pin_writes.find(pin);
    if(stored_value != pin_writes.end()) {
        stored_value->second++;
        pin_write_log[pin].push_back(msg_str);
    } else {
        pin_writes.insert(std::pair<unsigned int, unsigned int>(pin, 0));
        auto log = std::vector<std::string>{};
        log.push_back(msg_str);
        pin_write_log.insert(std::pair<unsigned int, std::vector<std::string>>(pin, log));
    }
} // digitalWrite

void showSummary(bool withLog) {
    std::cout << "\n\n=========== digitalWrite Pin Usage Summary ===========\n\n";
    std::cout << "Pin set " << setHighTimes << " times to High.\n";

    for(auto &pin_write : pin_writes) {
        std::cout << "\tpin " << pin_write.first << "\t accessed\t" << pin_write.second << " times\n";
    }
    std::cout << "\n=========== digitalWrite Pin Usage Log ===========\n\n";

    if(withLog) {
        for(auto &itr : pin_write_log) {
            for(auto &msg : itr.second) // access by reference to avoid copying
            {
                //std::cout << "\tpin " << msg << "\t accessed\t" << itr->second << " times\n";
                std::cout << "\tMsg: " << msg << "\n";
            }
        }
    }
} // showSummary
