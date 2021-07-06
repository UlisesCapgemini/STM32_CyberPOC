################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
S_UPPER_SRCS += \
../Application/User/Startup/startup_stm32l5xx_s.S 

OBJS += \
./Application/User/Startup/startup_stm32l5xx_s.o 

S_UPPER_DEPS += \
./Application/User/Startup/startup_stm32l5xx_s.d 


# Each subdirectory must supply rules for building sources it contributes
Application/User/Startup/startup_stm32l5xx_s.o: ../Application/User/Startup/startup_stm32l5xx_s.S
	arm-none-eabi-gcc -mcpu=cortex-m33 -c -x assembler-with-cpp -MMD -MP -MF"Application/User/Startup/startup_stm32l5xx_s.d" -MT"$@" --specs=nano.specs -mfloat-abi=soft -mthumb -o "$@" "$<"

