cmake_minimum_required (VERSION 2.6)

file (GLOB _sources RELATIVE ${CMAKE_CURRENT_SOURCE_DIR} *.c)
include_directories ("crypto")
add_subdirectory ("crypto")

#add_library(Time ${_sources})
