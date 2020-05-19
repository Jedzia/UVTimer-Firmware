# A Finite State Machine library

add_library (arduino_fsm
		Fsm.h
		Fsm.cpp
		)
target_include_directories(arduino_fsm PUBLIC ${CMAKE_CURRENT_SOURCE_DIR})
target_link_libraries(arduino_fsm PUBLIC arduino_options arduino::core)
target_compile_options(arduino_fsm
		PUBLIC -flto -MMD
		PUBLIC $<$<COMPILE_LANGUAGE:C>:-std=gnu99>
		PRIVATE -fno-fat-lto-objects
		PRIVATE $<$<COMPILE_LANGUAGE:CXX>:-CC>
		)
target_link_options(arduino_fsm PUBLIC -fuse-linker-plugin -Wl,--gc-sections -flto)
if (ENABLE_UNITY)
	# Add for any project you want to apply unity builds for
	# does not work here, set_target_properties(arduino_fsm PROPERTIES UNITY_BUILD ON)
endif()

option(USE_HARD_FSM "Use non dynamic memory management in state machine" ON)
if (USE_HARD_FSM)
	target_compile_definitions(arduino_fsm PUBLIC USE_HARD_FSM)
endif ()

#export library
add_library(libs::arduino_fsm ALIAS arduino_fsm)