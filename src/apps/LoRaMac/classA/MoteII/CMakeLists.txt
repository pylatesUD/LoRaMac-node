cmake_minimum_required (VERSION 2.6)

file (GLOB _sources RELATIVE ${CMAKE_CURRENT_SOURCE_DIR} *.c)

project (MoteII C)
# The version number.
set (MoteII_VERSION_MAJOR 4)
set (Tutorial_VERSION_MINOR 4)

add_definitions(-DSTM32L051xx -DREGION_EU868)

#include_directories("${PROJECT_BINARY_DIR}")

#set (LoRaMac_SOURCE_DIR "../../../")
#include_directories ("${LoRaMac_SOURCE_DIR}/boards/MoteII")
#include_directories ("${LoRaMac_SOURCE_DIR}/boards/MoteII/cmsis/")
#include_directories ("${LoRaMac_SOURCE_DIR}/boards/mcu/stm32")
#include_directories ("${LoRaMac_SOURCE_DIR}/boards/mcu/stm32/cmsis")
#include_directories ("${LoRaMac_SOURCE_DIR}/system")
#include_directories ("${LoRaMac_SOURCE_DIR}/peripherals")
#include_directories ("${LoRaMac_SOURCE_DIR}/radio")
#include_directories ("${LoRaMac_SOURCE_DIR}/mac")
#include_directories ("${LoRaMac_SOURCE_DIR}/mac/region")
#include_directories ("${LoRaMac_SOURCE_DIR}/boards/mcu/stm32/STM32L0xx_HAL_Driver/Inc/")

set(STM32_LINKER_FLAGS "-T${LoRaMac_SOURCE_DIR}/boards/MoteII/cmsis/arm-gcc/stm32l051xx_flash.ld")
set(CMAKE_EXE_LINKER_FLAGS "${CMAKE_EXE_LINKER_FLAGS} ${STM32_LINKER_FLAGS}")

add_executable(MoteIIapp ${_sources})
target_link_libraries(MoteIIapp MoteII)
