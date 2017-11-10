cmake_minimum_required (VERSION 2.6)
include(./arm.cmake)
project(LoRaMac)
add_definitions(-DREGION_EU868)
add_definitions(-DREGION_US915)

add_subdirectory ("system")
add_subdirectory ("peripherals")
add_subdirectory ("radio")
add_subdirectory ("mac")
add_subdirectory ("mac/region")
add_subdirectory ("boards/mcu/stm32")
add_subdirectory ("boards/MoteII")


add_subdirectory ("apps/LoRaMac/classA/MoteII")
add_subdirectory ("apps/LoRaMac/classC/MoteII")
