//
// Created by Jedzia on 01.11.2018.
//

#include <cassert>
#include <cstdio>
#include <gtest/gtest.h>
#include <iostream>
#include <memory>
#include <string>
#include <vector>

#include "../../src/DisplayLED.h"
#include <iostream> // include API

using std::cout;
using std::endl;

TEST(Simple, start) {
//remove("backup_test.db3");
//SQLite::Database srcDB("backup_test.db3", SQLite::OPEN_READWRITE|SQLite::OPEN_CREATE);
//srcDB.exec("CREATE TABLE backup_test (id INTEGER PRIMARY KEY, value TEXT)");
//ASSERT_EQ(1, srcDB.exec("INSERT INTO backup_test VALUES (1, \"first\")"));
//ASSERT_EQ(1, srcDB.exec("INSERT INTO backup_test VALUES (2, \"second\")"));
//EXPECT_THROW(SQLite::Backup backup(srcDB, srcDB), SQLite::Exception);
//EXPECT_THROW(SQLite::Backup backup(srcDB, "main", srcDB, "main"), SQLite::Exception);
//const std::string name("main");
//EXPECT_THROW(SQLite::Backup backup(srcDB, name, srcDB, name), SQLite::Exception);
//remove("backup_test.db3");

    int i = 1;
    ASSERT_EQ(1, i);
}

TEST(Simple, fails) {
    int i = 42;
    ASSERT_EQ(42, i);
}

constexpr uint8_t LED2 = 5; // PD5

void displayIterate(DisplayLED<LED2> &p) {
    static size_t it = 0;
    cout << "Iteration[" << it << "]> short blink: " << p.getShortBlink() << ", isNotBlinking: " << p.isNotShortBlinking() << ". ";
    p.display();
    it++;
}

void testIterate(DisplayLED<LED2> &p) {
    static size_t it = 0;
    p.display();
    it++;
}

class DisplayLed : public ::testing::Test {
protected:
    DisplayLED<LED2> displayLed{};

    virtual void TearDown() {}

    virtual void SetUp() {}
};

TEST_F(DisplayLed, get_set_ShortBlink) {
    const int iter_max = 32;
    displayLed.setShortBlink(iter_max);
    ASSERT_EQ(displayLed.getShortBlink(), iter_max);
}

TEST_F(DisplayLed, displayIterateShort) {
    const int iter_max = 32;
    displayLed.setShortBlink(iter_max);

    for(int i = 0; i < iter_max + 5; ++i) {
        testIterate(displayLed);
    }

    // should blinked half the times of all iterations
    ASSERT_EQ(setHighTimes, iter_max / 2);
}

TEST_F(DisplayLed, displayIterateLong) {
    const int iter_max = 32;
    displayLed.setLongBlink(iter_max);

    for(int i = 0; i < iter_max + 5; ++i) {
        testIterate(displayLed);
    }

    // should blinked half the times of all iterations
    ASSERT_EQ(setHighTimes, iter_max / 2);
}
