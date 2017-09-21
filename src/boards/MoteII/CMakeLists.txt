cmake_minimum_required (VERSION 2.6)
file (GLOB_RECURSE _sources RELATIVE ${CMAKE_CURRENT_SOURCE_DIR} *.c)
#file (GLOB_RECURSE _system ${LoRaMac_SOURCE_DIR}/system *.c)
#file (GLOB_RECURSE _peripherals ${LoRaMac_SOURCE_DIR}/peripherals *.c)
#file (GLOB_RECURSE _radio ${LoRaMac_SOURCE_DIR}/radio *.c)
#file (GLOB_RECURSE _mac ${LoRaMac_SOURCE_DIR}/mac *.c)

add_definitions(-DSTM32L051xx -DUSE_HAL_DRIVER -DREGION_EU868)

add_subdirectory("cmsis")

#set(STM32_LINKER_FLAGS "-T ${LoRaMac_SOURCE_DIR}/boards/MoteII/cmsis/arm-gcc/stm32l051xx_flash.ld")
#set(CMAKE_STATIC_LINKER_FLAGS "${CMAKE_STATIC_LINKER_FLAGS} ${STM32_LINKER_FLAGS}")

set(STM32_LINKER_FLAGS "-T${LoRaMac_SOURCE_DIR}/boards/MoteII/cmsis/arm-gcc/stm32l051xx_flash.ld")
set(CMAKE_EXE_LINKER_FLAGS "${CMAKE_EXE_LINKER_FLAGS} ${STM32_LINKER_FLAGS}")

add_library(MoteII ${_sources} 
${LoRaMac_SOURCE_DIR}/boards/mcu/stm32/STM32L0xx_HAL_Driver/Src/stm32l0xx_hal_adc.c
${LoRaMac_SOURCE_DIR}/boards/mcu/stm32/STM32L0xx_HAL_Driver/Src/stm32l0xx_hal_adc_ex.c
${LoRaMac_SOURCE_DIR}/boards/mcu/stm32/STM32L0xx_HAL_Driver/Src/stm32l0xx_hal.c
${LoRaMac_SOURCE_DIR}/boards/mcu/stm32/STM32L0xx_HAL_Driver/Src/stm32l0xx_hal_cortex.c
${LoRaMac_SOURCE_DIR}/boards/mcu/stm32/STM32L0xx_HAL_Driver/Src/stm32l0xx_hal_dma.c
${LoRaMac_SOURCE_DIR}/boards/mcu/stm32/STM32L0xx_HAL_Driver/Src/stm32l0xx_hal_flash.c
${LoRaMac_SOURCE_DIR}/boards/mcu/stm32/STM32L0xx_HAL_Driver/Src/stm32l0xx_hal_flash_ex.c
${LoRaMac_SOURCE_DIR}/boards/mcu/stm32/STM32L0xx_HAL_Driver/Src/stm32l0xx_hal_flash_ramfunc.c
${LoRaMac_SOURCE_DIR}/boards/mcu/stm32/STM32L0xx_HAL_Driver/Src/stm32l0xx_hal_gpio.c
${LoRaMac_SOURCE_DIR}/boards/mcu/stm32/STM32L0xx_HAL_Driver/Src/stm32l0xx_hal_i2c.c
${LoRaMac_SOURCE_DIR}/boards/mcu/stm32/STM32L0xx_HAL_Driver/Src/stm32l0xx_hal_i2c_ex.c
${LoRaMac_SOURCE_DIR}/boards/mcu/stm32/STM32L0xx_HAL_Driver/Src/stm32l0xx_hal_pwr.c
${LoRaMac_SOURCE_DIR}/boards/mcu/stm32/STM32L0xx_HAL_Driver/Src/stm32l0xx_hal_pwr_ex.c
${LoRaMac_SOURCE_DIR}/boards/mcu/stm32/STM32L0xx_HAL_Driver/Src/stm32l0xx_hal_rcc.c
${LoRaMac_SOURCE_DIR}/boards/mcu/stm32/STM32L0xx_HAL_Driver/Src/stm32l0xx_hal_rcc_ex.c
${LoRaMac_SOURCE_DIR}/boards/mcu/stm32/STM32L0xx_HAL_Driver/Src/stm32l0xx_hal_rtc.c
${LoRaMac_SOURCE_DIR}/boards/mcu/stm32/STM32L0xx_HAL_Driver/Src/stm32l0xx_hal_rtc_ex.c
${LoRaMac_SOURCE_DIR}/boards/mcu/stm32/STM32L0xx_HAL_Driver/Src/stm32l0xx_hal_spi.c
${LoRaMac_SOURCE_DIR}/boards/mcu/stm32/STM32L0xx_HAL_Driver/Src/stm32l0xx_hal_uart.c
${LoRaMac_SOURCE_DIR}/boards/mcu/stm32/STM32L0xx_HAL_Driver/Src/stm32l0xx_hal_uart_ex.c
${LoRaMac_SOURCE_DIR}/boards/mcu/stm32/sysIrqHandlers.c
${LoRaMac_SOURCE_DIR}/boards/mcu/stm32/utilities.c
${LoRaMac_SOURCE_DIR}/mac/LoRaMac.c
${LoRaMac_SOURCE_DIR}/mac/LoRaMacCrypto.c
#${LoRaMac_SOURCE_DIR}/mac/region/RegionAS923.c
#${LoRaMac_SOURCE_DIR}/mac/region/RegionAU915.c
${LoRaMac_SOURCE_DIR}/mac/region/Region.c
#${LoRaMac_SOURCE_DIR}/mac/region/RegionCN470.c
#${LoRaMac_SOURCE_DIR}/mac/region/RegionCN779.c
${LoRaMac_SOURCE_DIR}/mac/region/RegionCommon.c
#${LoRaMac_SOURCE_DIR}/mac/region/RegionEU433.c
${LoRaMac_SOURCE_DIR}/mac/region/RegionEU868.c
#${LoRaMac_SOURCE_DIR}/mac/region/RegionIN865.c
#${LoRaMac_SOURCE_DIR}/mac/region/RegionKR920.c
#${LoRaMac_SOURCE_DIR}/mac/region/RegionUS915.c
#${LoRaMac_SOURCE_DIR}/mac/region/RegionUS915-Hybrid.c
${LoRaMac_SOURCE_DIR}/peripherals/gpio-ioe.c
${LoRaMac_SOURCE_DIR}/peripherals/mag3110.c
${LoRaMac_SOURCE_DIR}/peripherals/mma8451.c
${LoRaMac_SOURCE_DIR}/peripherals/mpl3115.c
${LoRaMac_SOURCE_DIR}/peripherals/pam7q.c
${LoRaMac_SOURCE_DIR}/peripherals/sx1509.c
${LoRaMac_SOURCE_DIR}/radio/sx1272/sx1272.c
${LoRaMac_SOURCE_DIR}/system/adc.c
${LoRaMac_SOURCE_DIR}/system/crypto/aes.c
${LoRaMac_SOURCE_DIR}/system/crypto/cmac.c
${LoRaMac_SOURCE_DIR}/system/delay.c
${LoRaMac_SOURCE_DIR}/system/fifo.c
${LoRaMac_SOURCE_DIR}/system/gpio.c
${LoRaMac_SOURCE_DIR}/system/gps.c
${LoRaMac_SOURCE_DIR}/system/i2c.c
${LoRaMac_SOURCE_DIR}/system/timer.c
${LoRaMac_SOURCE_DIR}/system/uart.c
)


target_include_directories (MoteII PUBLIC "cmsis")
target_include_directories (MoteII PUBLIC "${LoRaMac_SOURCE_DIR}")
target_include_directories (MoteII PUBLIC "${LoRaMac_SOURCE_DIR}/boards/mcu/stm32")
target_include_directories (MoteII PUBLIC "${LoRaMac_SOURCE_DIR}/boards/mcu/stm32/cmsis")
target_include_directories (MoteII PUBLIC "${LoRaMac_SOURCE_DIR}/boards/mcu/stm32/STM32L0xx_HAL_Driver/Inc/")
target_include_directories (MoteII PUBLIC "${LoRaMac_SOURCE_DIR}/system")
target_include_directories (MoteII PUBLIC "${LoRaMac_SOURCE_DIR}/system/crypto")
target_include_directories (MoteII PUBLIC "${LoRaMac_SOURCE_DIR}/peripherals")
target_include_directories (MoteII PUBLIC "${LoRaMac_SOURCE_DIR}/radio")
target_include_directories (MoteII PUBLIC "${LoRaMac_SOURCE_DIR}/mac")
target_include_directories (MoteII PUBLIC "${LoRaMac_SOURCE_DIR}/mac/region")
target_include_directories (MoteII PUBLIC ".")

#target_link_libraries(MoteII stm32 STM32L0xx_HAL_Driver)
target_link_libraries(MoteII)


