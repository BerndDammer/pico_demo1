# Generated Cmake Pico project file

cmake_minimum_required(VERSION 3.13)

set(CMAKE_C_STANDARD 11)
set(CMAKE_CXX_STANDARD 17)

# Initialise pico_sdk from installed location
# (note this can come from environment, CMake cache etc)
set(PICO_SDK_PATH "d:/RaspberryPiPico/pico-sdk")

# Pull in Raspberry Pi Pico SDK (must be before project)
include(pico_sdk_import.cmake)

project(t6 C CXX ASM)

# Initialise the Raspberry Pi Pico SDK
pico_sdk_init()

# Add executable. Default name is the project name, version 0.1

add_executable(t6 t6.c )
# note cmake policy is to use absolute paths for interface libraries.



pico_set_program_name(t6 "t6")
pico_set_program_version(t6 "0.2")

target_sources(t6 PRIVATE
        ${CMAKE_CURRENT_LIST_DIR}/t6.c
        ${CMAKE_CURRENT_LIST_DIR}/loop.c
        ${CMAKE_CURRENT_LIST_DIR}/blinker.c
        )

pico_enable_stdio_uart(t6 1)
pico_enable_stdio_usb(t6 0)

# Add the standard library to the build
target_link_libraries(t6 pico_stdlib)

# Add any user requested libraries
target_link_libraries(t6
        hardware_timer
        hardware_watchdog
        hardware_clocks
        )

# add_compile_options( -ggdb )


# pico_add_extra_outputs(t6)

