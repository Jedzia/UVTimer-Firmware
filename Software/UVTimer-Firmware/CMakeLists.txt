cmake_minimum_required(VERSION 3.15)

# Set the project name to your project name, my project isn't very descriptive
project(UVTimer-Firmware
        VERSION "0.0.1.1"
        LANGUAGES C CXX ASM)

#set(CMAKE_VERBOSE_MAKEFILE ON)

include(cmake/StandardProjectSettings.cmake)

# check if we have a local cmake include file to setup the project.
if (EXISTS ${CMAKE_SOURCE_DIR}/local.cmake)
    message(STATUS "Using local.cmake")
    include(${CMAKE_SOURCE_DIR}/local.cmake)
else ()
    message(FATAL_ERROR "'${CMAKE_SOURCE_DIR}/local.cmake' not found. This file is used to configure your project.
    Use local.cmake.example as template to create your local copy.")
endif ()

# Link this 'library' to set the c++ standard / compile-time options requested
add_library(project_options INTERFACE)
#target_compile_features(project_options INTERFACE cxx_std_20)

if (CMAKE_CXX_COMPILER_ID MATCHES ".*Clang")
    option(ENABLE_BUILD_WITH_TIME_TRACE "Enable -ftime-trace to generate time tracing .json files on clang" OFF)
    if (ENABLE_BUILD_WITH_TIME_TRACE)
        add_compile_definitions(project_options INTERFACE -ftime-trace)
    endif ()
endif ()

# Link this 'library' to use the warnings specified in CompilerWarnings.cmake
add_library(project_warnings INTERFACE)
# standard compiler warnings
include(cmake/CompilerWarnings.cmake)
set_project_warnings(project_warnings)

# sanitizer options if supported by compiler
include(cmake/Sanitizers.cmake)
enable_sanitizers(project_options)

# enable doxygen
include(cmake/Doxygen.cmake)
enable_doxygen()

# allow for static analysis options
include(cmake/StaticAnalyzers.cmake)

#option(BUILD_SHARED_LIBS "Enable compilation of shared libraries" OFF)
option(ENABLE_TESTING "Enable Test Builds" ON)

# Very basic PCH example
option(ENABLE_PCH "Enable Precompiled Headers" OFF)
if (ENABLE_PCH)
    # This sets a global PCH parameter, each project will build its own PCH, which
    # is a good idea if any #define's change
    #
    #
    #target_precompile_headers(project_options INTERFACE <avr/io.h> <util/delay.h>)
    target_precompile_headers(project_options INTERFACE <avr/io.h>)
endif ()
option(ENABLE_UNITY "Enable Unity builds of projects" OFF)

## Set up some extra Conan dependencies based on our needs
## before loading Conan
#set(CONAN_EXTRA_REQUIRES "")
#set(CONAN_EXTRA_OPTIONS "")
#
#if(CPP_STARTER_USE_IMGUI)
#  set(CONAN_EXTRA_REQUIRES ${CONAN_EXTRA_REQUIRES}
#                           imgui-sfml/2.1@bincrafters/stable)
#
#  # set(CONAN_EXTRA_OPTIONS ${CONAN_EXTRA_OPTIONS} sfml:shared=False
#  # sfml:graphics=True sfml:audio=False sfml:window=True
#  # libalsa:disable_python=True)
#endif()
#
#if(CPP_STARTER_USE_SDL)
#  set(CONAN_EXTRA_REQUIRES ${CONAN_EXTRA_REQUIRES}
#                           sdl2/2.0.10@bincrafters/stable)
#  # set(CONAN_EXTRA_OPTIONS ${CONAN_EXTRA_OPTIONS} sdl2:wayland=True)
#endif()
#
#
#include(cmake/Conan.cmake)
#run_conan()
#
#if(ENABLE_TESTING)
#  enable_testing()
#  message(
#    "Building Tests. Be sure to check out test/constexpr_tests for constexpr testing"
#  )
#  add_subdirectory(test)
#endif()
#
#if(ENABLE_FUZZING)
#  message(
#    "Building Fuzz Tests, using fuzzing sanitizer https://www.llvm.org/docs/LibFuzzer.html"
#  )
#  add_subdirectory(fuzz_test)
#endif()
#
#

#include(${ArduinoCode_SOURCE_DIR}/arduino_diecimila_crosscompile.cmake)

add_subdirectory(libs)

include(cmake/Arduino.cmake)
add_subdirectory(src)


# This compiles the sub project in tests with the system gcc and runs the target 'display_led_test_run'.
include(ExternalProject)
ExternalProject_Add(
        external_host_side_test_project
        EXCLUDE_FROM_ALL TRUE
        #BUILD_COMMAND     "make display_led_test_run"
        #BUILD_COMMAND ${CMAKE_MAKE_PROGRAM} clean COMMAND ${CMAKE_MAKE_PROGRAM} display_led_test_run
        #BUILD_COMMAND ${CMAKE_MAKE_PROGRAM} display_led_test_run test_example
        #BUILD_COMMAND ${CMAKE_MAKE_PROGRAM} display_led_test_run
        BUILD_COMMAND ${CMAKE_MAKE_PROGRAM} all display_led_example_run
        BUILD_ALWAYS TRUE
        #STEP_TARGETS clean display_led_test_run
        #ALWAYS TRUE
        SOURCE_DIR ${PROJECT_SOURCE_DIR}/tests
        INSTALL_COMMAND ""
        #TEST_COMMAND    "${CMAKE_CTEST_COMMAND}" --build-and-test --progress
        TEST_COMMAND "${CMAKE_CTEST_COMMAND}" -V --progress
        BINARY_DIR ${CMAKE_CURRENT_BINARY_DIR}/tests
        #PREFIX ...          # Assume this works.
        #GIT_REPOSITORY ...  # Assume this works too.

        # This did the trick for me.
        #CMAKE_ARGS -DCMAKE_CXX_COMPILER=${CMAKE_CXX_COMPILER}
        CMAKE_ARGS -DCMAKE_C_COMPILER=gcc -DCMAKE_CXX_COMPILER=g++
        #CMAKE_ARGS -DUSE_SUPERBUILD=OFF ${EXTRA_CMAKE_ARGS}
)
ExternalProject_Add_Step(external_host_side_test_project display_led_test_run)