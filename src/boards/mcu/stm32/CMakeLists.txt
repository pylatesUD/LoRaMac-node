cmake_minimum_required (VERSION 2.6)

project(stm32)
file (GLOB _sources RELATIVE ${CMAKE_CURRENT_SOURCE_DIR} *.c)
include_directories ("cmsis")
add_subdirectory ("cmsis")

#add_library(stm32 ${_sources})
