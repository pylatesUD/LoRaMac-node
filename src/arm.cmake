INCLUDE(CMakeForceCompiler)

SET(CMAKE_SYSTEM_NAME Generic)
SET(CMAKE_SYSTEM_VERSION 1)
set(CMAKE_SYSTEM_PROCESSOR cortex-m0plus)

# specify the cross compiler
set(CMAKE_C_COMPILER arm-none-eabi-gcc)
set(CMAKE_CXX_COMPILER arm-none-eabi-g++)

#SET(COMMON_FLAGS "-mcpu=cortex-m3 -mthumb -mthumb-interwork -msoft-float -ffunction-sections -fdata-sections -g -fno-common -fmessage-length=0 --specs=nosys.specs")

SET(COMMON_FLAGS "-O4  -ansi -pedantic -Wall -W -Wshadow -Wcast-qual -Wwrite-strings -mthumb -mcpu=cortex-m0plus -fno-builtin -Wl,--gc-sections -ffunction-sections -fdata-sections -fomit-frame-pointer -mabi=aapcs -fno-unroll-loops -ffast-math -ftree-vectorize --specs=nano.specs --specs=nosys.specs")

#set(CMAKE_EXE_LINKER_FLAGS_INIT "--specs=nosys.specs")

SET(CMAKE_CXX_FLAGS "${COMMON_FLAGS} -std=gnu++0x")
SET(CMAKE_C_FLAGS "${COMMON_FLAGS} -std=c99")
set(CMAKE_EXE_LINKER_FLAGS "-Wl,--gc-sections -lm -lg -flto -lrdimon -mabi=aapcs")
#set(CMAKE_STATIC_LINKER_FLAGS "-T")
