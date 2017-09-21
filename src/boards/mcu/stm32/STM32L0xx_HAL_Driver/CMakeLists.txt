cmake_minimum_required (VERSION 2.6)
file (GLOB _sources RELATIVE ${CMAKE_CURRENT_SOURCE_DIR}Src/*.c)

include_directories ("${PROJECT_SOURCE_DIR}/Inc")
add_subdirectory("${PROJECT_SOURCE_DIR}/Src")
add_library(STM32L0xx_HAL_Driver ${_sources})
