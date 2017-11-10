cmake_minimum_required (VERSION 2.6)

file (GLOB _sources RELATIVE ${CMAKE_CURRENT_SOURCE_DIR} *.c)

project (MoteII C)

add_definitions(-DSTM32L051xx)

set(STM32_LINKER_FLAGS "-T${LoRaMac_SOURCE_DIR}/boards/MoteII/cmsis/arm-gcc/stm32l051xx_flash.ld")
set(CMAKE_EXE_LINKER_FLAGS "${CMAKE_EXE_LINKER_FLAGS} ${STM32_LINKER_FLAGS}")

add_executable(MoteIIapp-classC ${_sources})
target_link_libraries(MoteIIapp-classC MoteII)
