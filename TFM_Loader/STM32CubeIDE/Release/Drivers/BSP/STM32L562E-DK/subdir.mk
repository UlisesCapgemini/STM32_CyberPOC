################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
C:/STM32CubeWs/STM32CubeL5/Drivers/BSP/STM32L562E-DK/stm32l562e_discovery_ospi.c 

OBJS += \
./Drivers/BSP/STM32L562E-DK/stm32l562e_discovery_ospi.o 

C_DEPS += \
./Drivers/BSP/STM32L562E-DK/stm32l562e_discovery_ospi.d 


# Each subdirectory must supply rules for building sources it contributes
Drivers/BSP/STM32L562E-DK/stm32l562e_discovery_ospi.o: C:/STM32CubeWs/STM32CubeL5/Drivers/BSP/STM32L562E-DK/stm32l562e_discovery_ospi.c
	arm-none-eabi-gcc "$<" -mcpu=cortex-m33 -g3 -DSTM32L562xx -DUSE_HAL_DRIVER -DLOCAL_LOADER_CONFIG -DBL2 -c -I../../Inc -I../../../../../../../Drivers/CMSIS/Include -I../../../../../../../Drivers/CMSIS/Device/ST/STM32L5xx/Include -I../../../../../../../Drivers/STM32L5xx_HAL_Driver/Inc -I../../../../../../../Middlewares/Third_Party/trustedfirmware/test/suites/crypto -I../../../../../../../Middlewares/Third_Party/trustedfirmware/platform/ext/driver -I../../../Linker -I../../../../../../../Drivers/BSP/STM32L562E-DK -I../../../../../../../Drivers/BSP/Components/mx25lm51245g -Os -ffunction-sections -fdata-sections -Wall -fstack-usage -MMD -MP -MF"Drivers/BSP/STM32L562E-DK/stm32l562e_discovery_ospi.d" -MT"$@" --specs=nano.specs -mfpu=fpv5-sp-d16 -mfloat-abi=hard -mthumb -o "$@"

