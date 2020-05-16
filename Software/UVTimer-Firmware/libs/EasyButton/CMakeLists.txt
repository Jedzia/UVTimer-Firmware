# The Arduino platform library

add_library (easy_button
		src/Sequence.h
		src/EasyButton.cpp
		src/EasyButton.h
		src/EasyButtonBase.cpp
		src/EasyButtonBase.h
		src/EasyButtonTouch.cpp
		src/EasyButtonTouch.h
		src/EasyButtonVirtual.cpp
		src/EasyButtonVirtual.h
		src/Sequence.cpp
		)
target_include_directories(easy_button PUBLIC ${CMAKE_CURRENT_SOURCE_DIR}/src)
target_link_libraries(easy_button PUBLIC arduino_options arduino::core)
target_compile_options(easy_button
		PUBLIC -flto -MMD
		PUBLIC $<$<COMPILE_LANGUAGE:C>:-std=gnu99>
		PRIVATE -fno-fat-lto-objects
		PRIVATE $<$<COMPILE_LANGUAGE:CXX>:-CC>
		)
target_link_options(easy_button PUBLIC -fuse-linker-plugin -Wl,--gc-sections -flto)
if (ENABLE_UNITY)
	# Add for any project you want to apply unity builds for
	# does not work here, set_target_properties(easy_button PROPERTIES UNITY_BUILD ON)
endif()

#export library
#add_library(arduino::core ALIAS easy_button)