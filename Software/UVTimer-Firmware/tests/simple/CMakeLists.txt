cmake_minimum_required(VERSION 3.5)
project (display_led_test)

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

add_executable(display_led_example
        ../../src/DisplayLED.cpp
        ../../src/DisplayLED.h
        ../common/Arduino.cpp
        display_led_example.cpp
        )
target_include_directories(display_led_example PRIVATE ${CMAKE_CURRENT_SOURCE_DIR} ../common ../../src)
add_run_target(display_led_example ${CMAKE_RUNTIME_OUTPUT_DIRECTORY})

# State Machine R&D
add_executable(state_machine_example state_machine.cpp)