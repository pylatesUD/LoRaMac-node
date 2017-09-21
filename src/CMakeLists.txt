cmake_minimum_required (VERSION 2.6)

project(LoRaMac)

add_subdirectory ("system")
add_subdirectory ("peripherals")
add_subdirectory ("radio")
add_subdirectory ("mac")
add_subdirectory ("mac/region")
add_subdirectory ("boards/mcu/stm32")
add_subdirectory ("boards/MoteII")


add_subdirectory ("apps/LoRaMac/classA/MoteII")

