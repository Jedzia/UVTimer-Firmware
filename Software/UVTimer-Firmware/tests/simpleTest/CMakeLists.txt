#cmake_minimum_required(VERSION 2.8)
#project (display_led_test)

## Handle superbuild first
#option (USE_SUPERBUILD "Whether or not a superbuild should be invoked" ON)
#
#if (USE_SUPERBUILD)
#    project (SUPERBUILD NONE)
#    # execute the superbuild (this script will be invoked again without the
#    # USE_SUPERBUILD option this time)
#    include (cmake/SuperBuild.cmake)
#    return()                      # stop processing this file further
#else()
#    project (Blah)                # <-- YOUR PROJECT NAME HERE
#endif()

#
# <usual CMakeLists.txt stuff goes here...>
#

include(../../cmake/helpers.cmake)

set(CMAKE_RUNTIME_OUTPUT_DIRECTORY ${CMAKE_BINARY_DIR}/bin)
set(CMAKE_ARCHIVE_OUTPUT_DIRECTORY ${CMAKE_BINARY_DIR}/lib)
set(CMAKE_LIBRARY_OUTPUT_DIRECTORY ${CMAKE_BINARY_DIR}/lib)

add_executable(test_example
        test.cpp
        )
target_link_libraries(test_example gtest_main)
add_test(NAME example_Test COMMAND test_example)
#target_include_directories(display_led_test PRIVATE ${CMAKE_CURRENT_SOURCE_DIR} ../../src)
#add_run_target(display_led_test ${CMAKE_RUNTIME_OUTPUT_DIRECTORY})

add_executable(test_display_led
        ../../src/DisplayLED.cpp
        ../../src/DisplayLED.h
        ../common/Arduino.cpp
        display_led_tests.cpp
        )
target_link_libraries(test_display_led gtest_main)
target_include_directories(test_display_led PRIVATE ${CMAKE_CURRENT_SOURCE_DIR} ../common )
add_test(NAME display_led_Test COMMAND test_display_led)
