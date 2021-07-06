################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
S_UPPER_SRCS += \
../Application/Startup/startup_stm32l5xx_ns.S 

OBJS += \
./Application/Startup/startup_stm32l5xx_ns.o 

S_UPPER_DEPS += \
./Application/Startup/startup_stm32l5xx_ns.d 


# Each subdirectory must supply rules for building sources it contributes
Application/Startup/startup_stm32l5xx_ns.o: ../Application/Startup/startup_stm32l5xx_ns.S
	arm-none-eabi-gcc -mcpu=cortex-m33 -g3 -c -I../../ -x assembler-with-cpp -MMD -MP -MF"Application/Startup/startup_stm32l5xx_ns.d" -MT"$@" --specs=nano.specs -mfpu=fpv5-sp-d16 -mfloat-abi=softfp -mthumb -o "$@" "$<"

