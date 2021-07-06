################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
C:/STM32CubeWs/STM32CubeL5/Projects/STM32L562E-DK/Applications/TFM/TFM_Loader/Src/com.c \
C:/STM32CubeWs/STM32CubeL5/Projects/STM32L562E-DK/Applications/TFM/TFM_Loader/Src/common.c \
C:/STM32CubeWs/STM32CubeL5/Projects/STM32L562E-DK/Applications/TFM/TFM_Loader/Src/fw_update_app.c \
C:/STM32CubeWs/STM32CubeL5/Projects/STM32L562E-DK/Applications/TFM/TFM_Loader/Src/low_level_device.c \
C:/STM32CubeWs/STM32CubeL5/Projects/STM32L562E-DK/Applications/TFM/TFM_Loader/Src/low_level_flash.c \
C:/STM32CubeWs/STM32CubeL5/Projects/STM32L562E-DK/Applications/TFM/TFM_Loader/Src/low_level_ospi_device.c \
C:/STM32CubeWs/STM32CubeL5/Projects/STM32L562E-DK/Applications/TFM/TFM_Loader/Src/low_level_ospi_flash.c \
C:/STM32CubeWs/STM32CubeL5/Projects/STM32L562E-DK/Applications/TFM/TFM_Loader/Src/main.c \
C:/STM32CubeWs/STM32CubeL5/Projects/STM32L562E-DK/Applications/TFM/TFM_Loader/Src/system_stm32l5xx.c \
C:/STM32CubeWs/STM32CubeL5/Projects/STM32L562E-DK/Applications/TFM/TFM_Loader/Src/tick.c \
C:/STM32CubeWs/STM32CubeL5/Projects/STM32L562E-DK/Applications/TFM/TFM_Loader/Src/ymodem.c 

OBJS += \
./Application/User/com.o \
./Application/User/common.o \
./Application/User/fw_update_app.o \
./Application/User/low_level_device.o \
./Application/User/low_level_flash.o \
./Application/User/low_level_ospi_device.o \
./Application/User/low_level_ospi_flash.o \
./Application/User/main.o \
./Application/User/system_stm32l5xx.o \
./Application/User/tick.o \
./Application/User/ymodem.o 

C_DEPS += \
./Application/User/com.d \
./Application/User/common.d \
./Application/User/fw_update_app.d \
./Application/User/low_level_device.d \
./Application/User/low_level_flash.d \
./Application/User/low_level_ospi_device.d \
./Application/User/low_level_ospi_flash.d \
./Application/User/main.d \
./Application/User/system_stm32l5xx.d \
./Application/User/tick.d \
./Application/User/ymodem.d 


# Each subdirectory must supply rules for building sources it contributes
Application/User/com.o: C:/STM32CubeWs/STM32CubeL5/Projects/STM32L562E-DK/Applications/TFM/TFM_Loader/Src/com.c
	arm-none-eabi-gcc "$<" -mcpu=cortex-m33 -g3 -DSTM32L562xx -DUSE_HAL_DRIVER -DLOCAL_LOADER_CONFIG -DBL2 -c -I../../Inc -I../../../../../../../Drivers/CMSIS/Include -I../../../../../../../Drivers/CMSIS/Device/ST/STM32L5xx/Include -I../../../../../../../Drivers/STM32L5xx_HAL_Driver/Inc -I../../../../../../../Middlewares/Third_Party/trustedfirmware/test/suites/crypto -I../../../../../../../Middlewares/Third_Party/trustedfirmware/platform/ext/driver -I../../../Linker -I../../../../../../../Drivers/BSP/STM32L562E-DK -I../../../../../../../Drivers/BSP/Components/mx25lm51245g -Os -ffunction-sections -fdata-sections -Wall -fstack-usage -MMD -MP -MF"Application/User/com.d" -MT"$@" --specs=nano.specs -mfpu=fpv5-sp-d16 -mfloat-abi=hard -mthumb -o "$@"
Application/User/common.o: C:/STM32CubeWs/STM32CubeL5/Projects/STM32L562E-DK/Applications/TFM/TFM_Loader/Src/common.c
	arm-none-eabi-gcc "$<" -mcpu=cortex-m33 -g3 -DSTM32L562xx -DUSE_HAL_DRIVER -DLOCAL_LOADER_CONFIG -DBL2 -c -I../../Inc -I../../../../../../../Drivers/CMSIS/Include -I../../../../../../../Drivers/CMSIS/Device/ST/STM32L5xx/Include -I../../../../../../../Drivers/STM32L5xx_HAL_Driver/Inc -I../../../../../../../Middlewares/Third_Party/trustedfirmware/test/suites/crypto -I../../../../../../../Middlewares/Third_Party/trustedfirmware/platform/ext/driver -I../../../Linker -I../../../../../../../Drivers/BSP/STM32L562E-DK -I../../../../../../../Drivers/BSP/Components/mx25lm51245g -Os -ffunction-sections -fdata-sections -Wall -fstack-usage -MMD -MP -MF"Application/User/common.d" -MT"$@" --specs=nano.specs -mfpu=fpv5-sp-d16 -mfloat-abi=hard -mthumb -o "$@"
Application/User/fw_update_app.o: C:/STM32CubeWs/STM32CubeL5/Projects/STM32L562E-DK/Applications/TFM/TFM_Loader/Src/fw_update_app.c
	arm-none-eabi-gcc "$<" -mcpu=cortex-m33 -g3 -DSTM32L562xx -DUSE_HAL_DRIVER -DLOCAL_LOADER_CONFIG -DBL2 -c -I../../Inc -I../../../../../../../Drivers/CMSIS/Include -I../../../../../../../Drivers/CMSIS/Device/ST/STM32L5xx/Include -I../../../../../../../Drivers/STM32L5xx_HAL_Driver/Inc -I../../../../../../../Middlewares/Third_Party/trustedfirmware/test/suites/crypto -I../../../../../../../Middlewares/Third_Party/trustedfirmware/platform/ext/driver -I../../../Linker -I../../../../../../../Drivers/BSP/STM32L562E-DK -I../../../../../../../Drivers/BSP/Components/mx25lm51245g -Os -ffunction-sections -fdata-sections -Wall -fstack-usage -MMD -MP -MF"Application/User/fw_update_app.d" -MT"$@" --specs=nano.specs -mfpu=fpv5-sp-d16 -mfloat-abi=hard -mthumb -o "$@"
Application/User/low_level_device.o: C:/STM32CubeWs/STM32CubeL5/Projects/STM32L562E-DK/Applications/TFM/TFM_Loader/Src/low_level_device.c
	arm-none-eabi-gcc "$<" -mcpu=cortex-m33 -g3 -DSTM32L562xx -DUSE_HAL_DRIVER -DLOCAL_LOADER_CONFIG -DBL2 -c -I../../Inc -I../../../../../../../Drivers/CMSIS/Include -I../../../../../../../Drivers/CMSIS/Device/ST/STM32L5xx/Include -I../../../../../../../Drivers/STM32L5xx_HAL_Driver/Inc -I../../../../../../../Middlewares/Third_Party/trustedfirmware/test/suites/crypto -I../../../../../../../Middlewares/Third_Party/trustedfirmware/platform/ext/driver -I../../../Linker -I../../../../../../../Drivers/BSP/STM32L562E-DK -I../../../../../../../Drivers/BSP/Components/mx25lm51245g -Os -ffunction-sections -fdata-sections -Wall -fstack-usage -MMD -MP -MF"Application/User/low_level_device.d" -MT"$@" --specs=nano.specs -mfpu=fpv5-sp-d16 -mfloat-abi=hard -mthumb -o "$@"
Application/User/low_level_flash.o: C:/STM32CubeWs/STM32CubeL5/Projects/STM32L562E-DK/Applications/TFM/TFM_Loader/Src/low_level_flash.c
	arm-none-eabi-gcc "$<" -mcpu=cortex-m33 -g3 -DSTM32L562xx -DUSE_HAL_DRIVER -DLOCAL_LOADER_CONFIG -DBL2 -c -I../../Inc -I../../../../../../../Drivers/CMSIS/Include -I../../../../../../../Drivers/CMSIS/Device/ST/STM32L5xx/Include -I../../../../../../../Drivers/STM32L5xx_HAL_Driver/Inc -I../../../../../../../Middlewares/Third_Party/trustedfirmware/test/suites/crypto -I../../../../../../../Middlewares/Third_Party/trustedfirmware/platform/ext/driver -I../../../Linker -I../../../../../../../Drivers/BSP/STM32L562E-DK -I../../../../../../../Drivers/BSP/Components/mx25lm51245g -Os -ffunction-sections -fdata-sections -Wall -fstack-usage -MMD -MP -MF"Application/User/low_level_flash.d" -MT"$@" --specs=nano.specs -mfpu=fpv5-sp-d16 -mfloat-abi=hard -mthumb -o "$@"
Application/User/low_level_ospi_device.o: C:/STM32CubeWs/STM32CubeL5/Projects/STM32L562E-DK/Applications/TFM/TFM_Loader/Src/low_level_ospi_device.c
	arm-none-eabi-gcc "$<" -mcpu=cortex-m33 -g3 -DSTM32L562xx -DUSE_HAL_DRIVER -DLOCAL_LOADER_CONFIG -DBL2 -c -I../../Inc -I../../../../../../../Drivers/CMSIS/Include -I../../../../../../../Drivers/CMSIS/Device/ST/STM32L5xx/Include -I../../../../../../../Drivers/STM32L5xx_HAL_Driver/Inc -I../../../../../../../Middlewares/Third_Party/trustedfirmware/test/suites/crypto -I../../../../../../../Middlewares/Third_Party/trustedfirmware/platform/ext/driver -I../../../Linker -I../../../../../../../Drivers/BSP/STM32L562E-DK -I../../../../../../../Drivers/BSP/Components/mx25lm51245g -Os -ffunction-sections -fdata-sections -Wall -fstack-usage -MMD -MP -MF"Application/User/low_level_ospi_device.d" -MT"$@" --specs=nano.specs -mfpu=fpv5-sp-d16 -mfloat-abi=hard -mthumb -o "$@"
Application/User/low_level_ospi_flash.o: C:/STM32CubeWs/STM32CubeL5/Projects/STM32L562E-DK/Applications/TFM/TFM_Loader/Src/low_level_ospi_flash.c
	arm-none-eabi-gcc "$<" -mcpu=cortex-m33 -g3 -DSTM32L562xx -DUSE_HAL_DRIVER -DLOCAL_LOADER_CONFIG -DBL2 -c -I../../Inc -I../../../../../../../Drivers/CMSIS/Include -I../../../../../../../Drivers/CMSIS/Device/ST/STM32L5xx/Include -I../../../../../../../Drivers/STM32L5xx_HAL_Driver/Inc -I../../../../../../../Middlewares/Third_Party/trustedfirmware/test/suites/crypto -I../../../../../../../Middlewares/Third_Party/trustedfirmware/platform/ext/driver -I../../../Linker -I../../../../../../../Drivers/BSP/STM32L562E-DK -I../../../../../../../Drivers/BSP/Components/mx25lm51245g -Os -ffunction-sections -fdata-sections -Wall -fstack-usage -MMD -MP -MF"Application/User/low_level_ospi_flash.d" -MT"$@" --specs=nano.specs -mfpu=fpv5-sp-d16 -mfloat-abi=hard -mthumb -o "$@"
Application/User/main.o: C:/STM32CubeWs/STM32CubeL5/Projects/STM32L562E-DK/Applications/TFM/TFM_Loader/Src/main.c
	arm-none-eabi-gcc "$<" -mcpu=cortex-m33 -g3 -DSTM32L562xx -DUSE_HAL_DRIVER -DLOCAL_LOADER_CONFIG -DBL2 -c -I../../Inc -I../../../../../../../Drivers/CMSIS/Include -I../../../../../../../Drivers/CMSIS/Device/ST/STM32L5xx/Include -I../../../../../../../Drivers/STM32L5xx_HAL_Driver/Inc -I../../../../../../../Middlewares/Third_Party/trustedfirmware/test/suites/crypto -I../../../../../../../Middlewares/Third_Party/trustedfirmware/platform/ext/driver -I../../../Linker -I../../../../../../../Drivers/BSP/STM32L562E-DK -I../../../../../../../Drivers/BSP/Components/mx25lm51245g -Os -ffunction-sections -fdata-sections -Wall -fstack-usage -MMD -MP -MF"Application/User/main.d" -MT"$@" --specs=nano.specs -mfpu=fpv5-sp-d16 -mfloat-abi=hard -mthumb -o "$@"
Application/User/system_stm32l5xx.o: C:/STM32CubeWs/STM32CubeL5/Projects/STM32L562E-DK/Applications/TFM/TFM_Loader/Src/system_stm32l5xx.c
	arm-none-eabi-gcc "$<" -mcpu=cortex-m33 -g3 -DSTM32L562xx -DUSE_HAL_DRIVER -DLOCAL_LOADER_CONFIG -DBL2 -c -I../../Inc -I../../../../../../../Drivers/CMSIS/Include -I../../../../../../../Drivers/CMSIS/Device/ST/STM32L5xx/Include -I../../../../../../../Drivers/STM32L5xx_HAL_Driver/Inc -I../../../../../../../Middlewares/Third_Party/trustedfirmware/test/suites/crypto -I../../../../../../../Middlewares/Third_Party/trustedfirmware/platform/ext/driver -I../../../Linker -I../../../../../../../Drivers/BSP/STM32L562E-DK -I../../../../../../../Drivers/BSP/Components/mx25lm51245g -Os -ffunction-sections -fdata-sections -Wall -fstack-usage -MMD -MP -MF"Application/User/system_stm32l5xx.d" -MT"$@" --specs=nano.specs -mfpu=fpv5-sp-d16 -mfloat-abi=hard -mthumb -o "$@"
Application/User/tick.o: C:/STM32CubeWs/STM32CubeL5/Projects/STM32L562E-DK/Applications/TFM/TFM_Loader/Src/tick.c
	arm-none-eabi-gcc "$<" -mcpu=cortex-m33 -g3 -DSTM32L562xx -DUSE_HAL_DRIVER -DLOCAL_LOADER_CONFIG -DBL2 -c -I../../Inc -I../../../../../../../Drivers/CMSIS/Include -I../../../../../../../Drivers/CMSIS/Device/ST/STM32L5xx/Include -I../../../../../../../Drivers/STM32L5xx_HAL_Driver/Inc -I../../../../../../../Middlewares/Third_Party/trustedfirmware/test/suites/crypto -I../../../../../../../Middlewares/Third_Party/trustedfirmware/platform/ext/driver -I../../../Linker -I../../../../../../../Drivers/BSP/STM32L562E-DK -I../../../../../../../Drivers/BSP/Components/mx25lm51245g -Os -ffunction-sections -fdata-sections -Wall -fstack-usage -MMD -MP -MF"Application/User/tick.d" -MT"$@" --specs=nano.specs -mfpu=fpv5-sp-d16 -mfloat-abi=hard -mthumb -o "$@"
Application/User/ymodem.o: C:/STM32CubeWs/STM32CubeL5/Projects/STM32L562E-DK/Applications/TFM/TFM_Loader/Src/ymodem.c
	arm-none-eabi-gcc "$<" -mcpu=cortex-m33 -g3 -DSTM32L562xx -DUSE_HAL_DRIVER -DLOCAL_LOADER_CONFIG -DBL2 -c -I../../Inc -I../../../../../../../Drivers/CMSIS/Include -I../../../../../../../Drivers/CMSIS/Device/ST/STM32L5xx/Include -I../../../../../../../Drivers/STM32L5xx_HAL_Driver/Inc -I../../../../../../../Middlewares/Third_Party/trustedfirmware/test/suites/crypto -I../../../../../../../Middlewares/Third_Party/trustedfirmware/platform/ext/driver -I../../../Linker -I../../../../../../../Drivers/BSP/STM32L562E-DK -I../../../../../../../Drivers/BSP/Components/mx25lm51245g -Os -ffunction-sections -fdata-sections -Wall -fstack-usage -MMD -MP -MF"Application/User/ymodem.d" -MT"$@" --specs=nano.specs -mfpu=fpv5-sp-d16 -mfloat-abi=hard -mthumb -o "$@"

