################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
C:/STM32CubeWs/STM32CubeL5/Middlewares/Third_Party/trustedfirmware/bl2/ext/mcuboot/bl2_main.c \
C:/STM32CubeWs/STM32CubeL5/Middlewares/Third_Party/trustedfirmware/bl2/src/boot_record.c \
C:/STM32CubeWs/STM32CubeL5/Middlewares/Third_Party/trustedfirmware/bl2/src/flash_map.c \
C:/STM32CubeWs/STM32CubeL5/Middlewares/Third_Party/trustedfirmware/bl2/ext/mcuboot/flash_map_extended.c \
C:/STM32CubeWs/STM32CubeL5/Middlewares/Third_Party/trustedfirmware/bl2/ext/mcuboot/flash_map_legacy.c \
C:/STM32CubeWs/STM32CubeL5/Middlewares/Third_Party/trustedfirmware/bl2/ext/mcuboot/keys.c \
C:/STM32CubeWs/STM32CubeL5/Middlewares/Third_Party/trustedfirmware/bl2/src/security_cnt.c \
C:/STM32CubeWs/STM32CubeL5/Middlewares/Third_Party/trustedfirmware/platform/ext/common/uart_stdout.c 

OBJS += \
./Middlewares/trustedfirmware/bl2_main.o \
./Middlewares/trustedfirmware/boot_record.o \
./Middlewares/trustedfirmware/flash_map.o \
./Middlewares/trustedfirmware/flash_map_extended.o \
./Middlewares/trustedfirmware/flash_map_legacy.o \
./Middlewares/trustedfirmware/keys.o \
./Middlewares/trustedfirmware/security_cnt.o \
./Middlewares/trustedfirmware/uart_stdout.o 

C_DEPS += \
./Middlewares/trustedfirmware/bl2_main.d \
./Middlewares/trustedfirmware/boot_record.d \
./Middlewares/trustedfirmware/flash_map.d \
./Middlewares/trustedfirmware/flash_map_extended.d \
./Middlewares/trustedfirmware/flash_map_legacy.d \
./Middlewares/trustedfirmware/keys.d \
./Middlewares/trustedfirmware/security_cnt.d \
./Middlewares/trustedfirmware/uart_stdout.d 


# Each subdirectory must supply rules for building sources it contributes
Middlewares/trustedfirmware/bl2_main.o: C:/STM32CubeWs/STM32CubeL5/Middlewares/Third_Party/trustedfirmware/bl2/ext/mcuboot/bl2_main.c
	arm-none-eabi-gcc "$<" -mcpu=cortex-m33 -g3 -DSTM32L562xx -DUSE_HAL_DRIVER -DNDEBUG -DTFM_DEV_MODE '-DMCUBOOT_TARGET_CONFIG=<flash_layout.h>' '-DMBEDTLS_CONFIG_FILE=<config-boot.h>' -DMCUBOOT_DOUBLE_SIGN_VERIF -DBL2 -c -I../../Inc -I../../../../../../../Drivers/CMSIS/Include -I../../../../../../../Drivers/CMSIS/Device/ST/STM32L5xx/Include -I../../../../../../../Drivers/STM32L5xx_HAL_Driver/Inc -I../../../../../../../Middlewares/Third_Party/trustedfirmware -I../../../../../../../Middlewares/Third_Party/trustedfirmware/platform/ext/common -I../../../../../../../Middlewares/Third_Party/trustedfirmware/platform/ext/driver -I../../../../../../../Middlewares/Third_Party/trustedfirmware/bl2/include -I../../../../../../../Middlewares/Third_Party/trustedfirmware/bl2/ext/mcuboot -I../../../../../../../Middlewares/Third_Party/trustedfirmware/bl2/ext/mcuboot/include -I../../../../../../../Middlewares/Third_Party/mcuboot/boot/bootutil/include -I../../../../../../../Middlewares/Third_Party/mcuboot/boot/bootutil/src -I../../../../../../../Middlewares/Third_Party/mcuboot/ext/tinycrypt/lib/include -I../../../../../../../Middlewares/Third_Party/mbed-crypto/include -I../../../Linker -I../../../../../../../Drivers/BSP/STM32L562E-DK -I../../../../../../../Drivers/BSP/Components/mx25lm51245g -Os -ffunction-sections -fdata-sections -Wall -fshort-enums -fshort-wchar -funsigned-char -mcmse -Wall -Wno-format -Wno-return-type -fstack-usage -MMD -MP -MF"Middlewares/trustedfirmware/bl2_main.d" -MT"$@" --specs=nano.specs -mfpu=fpv5-sp-d16 -mfloat-abi=hard -mthumb -o "$@"
Middlewares/trustedfirmware/boot_record.o: C:/STM32CubeWs/STM32CubeL5/Middlewares/Third_Party/trustedfirmware/bl2/src/boot_record.c
	arm-none-eabi-gcc "$<" -mcpu=cortex-m33 -g3 -DSTM32L562xx -DUSE_HAL_DRIVER -DNDEBUG -DTFM_DEV_MODE '-DMCUBOOT_TARGET_CONFIG=<flash_layout.h>' '-DMBEDTLS_CONFIG_FILE=<config-boot.h>' -DMCUBOOT_DOUBLE_SIGN_VERIF -DBL2 -c -I../../Inc -I../../../../../../../Drivers/CMSIS/Include -I../../../../../../../Drivers/CMSIS/Device/ST/STM32L5xx/Include -I../../../../../../../Drivers/STM32L5xx_HAL_Driver/Inc -I../../../../../../../Middlewares/Third_Party/trustedfirmware -I../../../../../../../Middlewares/Third_Party/trustedfirmware/platform/ext/common -I../../../../../../../Middlewares/Third_Party/trustedfirmware/platform/ext/driver -I../../../../../../../Middlewares/Third_Party/trustedfirmware/bl2/include -I../../../../../../../Middlewares/Third_Party/trustedfirmware/bl2/ext/mcuboot -I../../../../../../../Middlewares/Third_Party/trustedfirmware/bl2/ext/mcuboot/include -I../../../../../../../Middlewares/Third_Party/mcuboot/boot/bootutil/include -I../../../../../../../Middlewares/Third_Party/mcuboot/boot/bootutil/src -I../../../../../../../Middlewares/Third_Party/mcuboot/ext/tinycrypt/lib/include -I../../../../../../../Middlewares/Third_Party/mbed-crypto/include -I../../../Linker -I../../../../../../../Drivers/BSP/STM32L562E-DK -I../../../../../../../Drivers/BSP/Components/mx25lm51245g -Os -ffunction-sections -fdata-sections -Wall -fshort-enums -fshort-wchar -funsigned-char -mcmse -Wall -Wno-format -Wno-return-type -fstack-usage -MMD -MP -MF"Middlewares/trustedfirmware/boot_record.d" -MT"$@" --specs=nano.specs -mfpu=fpv5-sp-d16 -mfloat-abi=hard -mthumb -o "$@"
Middlewares/trustedfirmware/flash_map.o: C:/STM32CubeWs/STM32CubeL5/Middlewares/Third_Party/trustedfirmware/bl2/src/flash_map.c
	arm-none-eabi-gcc "$<" -mcpu=cortex-m33 -g3 -DSTM32L562xx -DUSE_HAL_DRIVER -DNDEBUG -DTFM_DEV_MODE '-DMCUBOOT_TARGET_CONFIG=<flash_layout.h>' '-DMBEDTLS_CONFIG_FILE=<config-boot.h>' -DMCUBOOT_DOUBLE_SIGN_VERIF -DBL2 -c -I../../Inc -I../../../../../../../Drivers/CMSIS/Include -I../../../../../../../Drivers/CMSIS/Device/ST/STM32L5xx/Include -I../../../../../../../Drivers/STM32L5xx_HAL_Driver/Inc -I../../../../../../../Middlewares/Third_Party/trustedfirmware -I../../../../../../../Middlewares/Third_Party/trustedfirmware/platform/ext/common -I../../../../../../../Middlewares/Third_Party/trustedfirmware/platform/ext/driver -I../../../../../../../Middlewares/Third_Party/trustedfirmware/bl2/include -I../../../../../../../Middlewares/Third_Party/trustedfirmware/bl2/ext/mcuboot -I../../../../../../../Middlewares/Third_Party/trustedfirmware/bl2/ext/mcuboot/include -I../../../../../../../Middlewares/Third_Party/mcuboot/boot/bootutil/include -I../../../../../../../Middlewares/Third_Party/mcuboot/boot/bootutil/src -I../../../../../../../Middlewares/Third_Party/mcuboot/ext/tinycrypt/lib/include -I../../../../../../../Middlewares/Third_Party/mbed-crypto/include -I../../../Linker -I../../../../../../../Drivers/BSP/STM32L562E-DK -I../../../../../../../Drivers/BSP/Components/mx25lm51245g -Os -ffunction-sections -fdata-sections -Wall -fshort-enums -fshort-wchar -funsigned-char -mcmse -Wall -Wno-format -Wno-return-type -fstack-usage -MMD -MP -MF"Middlewares/trustedfirmware/flash_map.d" -MT"$@" --specs=nano.specs -mfpu=fpv5-sp-d16 -mfloat-abi=hard -mthumb -o "$@"
Middlewares/trustedfirmware/flash_map_extended.o: C:/STM32CubeWs/STM32CubeL5/Middlewares/Third_Party/trustedfirmware/bl2/ext/mcuboot/flash_map_extended.c
	arm-none-eabi-gcc "$<" -mcpu=cortex-m33 -g3 -DSTM32L562xx -DUSE_HAL_DRIVER -DNDEBUG -DTFM_DEV_MODE '-DMCUBOOT_TARGET_CONFIG=<flash_layout.h>' '-DMBEDTLS_CONFIG_FILE=<config-boot.h>' -DMCUBOOT_DOUBLE_SIGN_VERIF -DBL2 -c -I../../Inc -I../../../../../../../Drivers/CMSIS/Include -I../../../../../../../Drivers/CMSIS/Device/ST/STM32L5xx/Include -I../../../../../../../Drivers/STM32L5xx_HAL_Driver/Inc -I../../../../../../../Middlewares/Third_Party/trustedfirmware -I../../../../../../../Middlewares/Third_Party/trustedfirmware/platform/ext/common -I../../../../../../../Middlewares/Third_Party/trustedfirmware/platform/ext/driver -I../../../../../../../Middlewares/Third_Party/trustedfirmware/bl2/include -I../../../../../../../Middlewares/Third_Party/trustedfirmware/bl2/ext/mcuboot -I../../../../../../../Middlewares/Third_Party/trustedfirmware/bl2/ext/mcuboot/include -I../../../../../../../Middlewares/Third_Party/mcuboot/boot/bootutil/include -I../../../../../../../Middlewares/Third_Party/mcuboot/boot/bootutil/src -I../../../../../../../Middlewares/Third_Party/mcuboot/ext/tinycrypt/lib/include -I../../../../../../../Middlewares/Third_Party/mbed-crypto/include -I../../../Linker -I../../../../../../../Drivers/BSP/STM32L562E-DK -I../../../../../../../Drivers/BSP/Components/mx25lm51245g -Os -ffunction-sections -fdata-sections -Wall -fshort-enums -fshort-wchar -funsigned-char -mcmse -Wall -Wno-format -Wno-return-type -fstack-usage -MMD -MP -MF"Middlewares/trustedfirmware/flash_map_extended.d" -MT"$@" --specs=nano.specs -mfpu=fpv5-sp-d16 -mfloat-abi=hard -mthumb -o "$@"
Middlewares/trustedfirmware/flash_map_legacy.o: C:/STM32CubeWs/STM32CubeL5/Middlewares/Third_Party/trustedfirmware/bl2/ext/mcuboot/flash_map_legacy.c
	arm-none-eabi-gcc "$<" -mcpu=cortex-m33 -g3 -DSTM32L562xx -DUSE_HAL_DRIVER -DNDEBUG -DTFM_DEV_MODE '-DMCUBOOT_TARGET_CONFIG=<flash_layout.h>' '-DMBEDTLS_CONFIG_FILE=<config-boot.h>' -DMCUBOOT_DOUBLE_SIGN_VERIF -DBL2 -c -I../../Inc -I../../../../../../../Drivers/CMSIS/Include -I../../../../../../../Drivers/CMSIS/Device/ST/STM32L5xx/Include -I../../../../../../../Drivers/STM32L5xx_HAL_Driver/Inc -I../../../../../../../Middlewares/Third_Party/trustedfirmware -I../../../../../../../Middlewares/Third_Party/trustedfirmware/platform/ext/common -I../../../../../../../Middlewares/Third_Party/trustedfirmware/platform/ext/driver -I../../../../../../../Middlewares/Third_Party/trustedfirmware/bl2/include -I../../../../../../../Middlewares/Third_Party/trustedfirmware/bl2/ext/mcuboot -I../../../../../../../Middlewares/Third_Party/trustedfirmware/bl2/ext/mcuboot/include -I../../../../../../../Middlewares/Third_Party/mcuboot/boot/bootutil/include -I../../../../../../../Middlewares/Third_Party/mcuboot/boot/bootutil/src -I../../../../../../../Middlewares/Third_Party/mcuboot/ext/tinycrypt/lib/include -I../../../../../../../Middlewares/Third_Party/mbed-crypto/include -I../../../Linker -I../../../../../../../Drivers/BSP/STM32L562E-DK -I../../../../../../../Drivers/BSP/Components/mx25lm51245g -Os -ffunction-sections -fdata-sections -Wall -fshort-enums -fshort-wchar -funsigned-char -mcmse -Wall -Wno-format -Wno-return-type -fstack-usage -MMD -MP -MF"Middlewares/trustedfirmware/flash_map_legacy.d" -MT"$@" --specs=nano.specs -mfpu=fpv5-sp-d16 -mfloat-abi=hard -mthumb -o "$@"
Middlewares/trustedfirmware/keys.o: C:/STM32CubeWs/STM32CubeL5/Middlewares/Third_Party/trustedfirmware/bl2/ext/mcuboot/keys.c
	arm-none-eabi-gcc "$<" -mcpu=cortex-m33 -g3 -DSTM32L562xx -DUSE_HAL_DRIVER -DNDEBUG -DTFM_DEV_MODE '-DMCUBOOT_TARGET_CONFIG=<flash_layout.h>' '-DMBEDTLS_CONFIG_FILE=<config-boot.h>' -DMCUBOOT_DOUBLE_SIGN_VERIF -DBL2 -c -I../../Inc -I../../../../../../../Drivers/CMSIS/Include -I../../../../../../../Drivers/CMSIS/Device/ST/STM32L5xx/Include -I../../../../../../../Drivers/STM32L5xx_HAL_Driver/Inc -I../../../../../../../Middlewares/Third_Party/trustedfirmware -I../../../../../../../Middlewares/Third_Party/trustedfirmware/platform/ext/common -I../../../../../../../Middlewares/Third_Party/trustedfirmware/platform/ext/driver -I../../../../../../../Middlewares/Third_Party/trustedfirmware/bl2/include -I../../../../../../../Middlewares/Third_Party/trustedfirmware/bl2/ext/mcuboot -I../../../../../../../Middlewares/Third_Party/trustedfirmware/bl2/ext/mcuboot/include -I../../../../../../../Middlewares/Third_Party/mcuboot/boot/bootutil/include -I../../../../../../../Middlewares/Third_Party/mcuboot/boot/bootutil/src -I../../../../../../../Middlewares/Third_Party/mcuboot/ext/tinycrypt/lib/include -I../../../../../../../Middlewares/Third_Party/mbed-crypto/include -I../../../Linker -I../../../../../../../Drivers/BSP/STM32L562E-DK -I../../../../../../../Drivers/BSP/Components/mx25lm51245g -Os -ffunction-sections -fdata-sections -Wall -fshort-enums -fshort-wchar -funsigned-char -mcmse -Wall -Wno-format -Wno-return-type -fstack-usage -MMD -MP -MF"Middlewares/trustedfirmware/keys.d" -MT"$@" --specs=nano.specs -mfpu=fpv5-sp-d16 -mfloat-abi=hard -mthumb -o "$@"
Middlewares/trustedfirmware/security_cnt.o: C:/STM32CubeWs/STM32CubeL5/Middlewares/Third_Party/trustedfirmware/bl2/src/security_cnt.c
	arm-none-eabi-gcc "$<" -mcpu=cortex-m33 -g3 -DSTM32L562xx -DUSE_HAL_DRIVER -DNDEBUG -DTFM_DEV_MODE '-DMCUBOOT_TARGET_CONFIG=<flash_layout.h>' '-DMBEDTLS_CONFIG_FILE=<config-boot.h>' -DMCUBOOT_DOUBLE_SIGN_VERIF -DBL2 -c -I../../Inc -I../../../../../../../Drivers/CMSIS/Include -I../../../../../../../Drivers/CMSIS/Device/ST/STM32L5xx/Include -I../../../../../../../Drivers/STM32L5xx_HAL_Driver/Inc -I../../../../../../../Middlewares/Third_Party/trustedfirmware -I../../../../../../../Middlewares/Third_Party/trustedfirmware/platform/ext/common -I../../../../../../../Middlewares/Third_Party/trustedfirmware/platform/ext/driver -I../../../../../../../Middlewares/Third_Party/trustedfirmware/bl2/include -I../../../../../../../Middlewares/Third_Party/trustedfirmware/bl2/ext/mcuboot -I../../../../../../../Middlewares/Third_Party/trustedfirmware/bl2/ext/mcuboot/include -I../../../../../../../Middlewares/Third_Party/mcuboot/boot/bootutil/include -I../../../../../../../Middlewares/Third_Party/mcuboot/boot/bootutil/src -I../../../../../../../Middlewares/Third_Party/mcuboot/ext/tinycrypt/lib/include -I../../../../../../../Middlewares/Third_Party/mbed-crypto/include -I../../../Linker -I../../../../../../../Drivers/BSP/STM32L562E-DK -I../../../../../../../Drivers/BSP/Components/mx25lm51245g -Os -ffunction-sections -fdata-sections -Wall -fshort-enums -fshort-wchar -funsigned-char -mcmse -Wall -Wno-format -Wno-return-type -fstack-usage -MMD -MP -MF"Middlewares/trustedfirmware/security_cnt.d" -MT"$@" --specs=nano.specs -mfpu=fpv5-sp-d16 -mfloat-abi=hard -mthumb -o "$@"
Middlewares/trustedfirmware/uart_stdout.o: C:/STM32CubeWs/STM32CubeL5/Middlewares/Third_Party/trustedfirmware/platform/ext/common/uart_stdout.c
	arm-none-eabi-gcc "$<" -mcpu=cortex-m33 -g3 -DSTM32L562xx -DUSE_HAL_DRIVER -DNDEBUG -DTFM_DEV_MODE '-DMCUBOOT_TARGET_CONFIG=<flash_layout.h>' '-DMBEDTLS_CONFIG_FILE=<config-boot.h>' -DMCUBOOT_DOUBLE_SIGN_VERIF -DBL2 -c -I../../Inc -I../../../../../../../Drivers/CMSIS/Include -I../../../../../../../Drivers/CMSIS/Device/ST/STM32L5xx/Include -I../../../../../../../Drivers/STM32L5xx_HAL_Driver/Inc -I../../../../../../../Middlewares/Third_Party/trustedfirmware -I../../../../../../../Middlewares/Third_Party/trustedfirmware/platform/ext/common -I../../../../../../../Middlewares/Third_Party/trustedfirmware/platform/ext/driver -I../../../../../../../Middlewares/Third_Party/trustedfirmware/bl2/include -I../../../../../../../Middlewares/Third_Party/trustedfirmware/bl2/ext/mcuboot -I../../../../../../../Middlewares/Third_Party/trustedfirmware/bl2/ext/mcuboot/include -I../../../../../../../Middlewares/Third_Party/mcuboot/boot/bootutil/include -I../../../../../../../Middlewares/Third_Party/mcuboot/boot/bootutil/src -I../../../../../../../Middlewares/Third_Party/mcuboot/ext/tinycrypt/lib/include -I../../../../../../../Middlewares/Third_Party/mbed-crypto/include -I../../../Linker -I../../../../../../../Drivers/BSP/STM32L562E-DK -I../../../../../../../Drivers/BSP/Components/mx25lm51245g -Os -ffunction-sections -fdata-sections -Wall -fshort-enums -fshort-wchar -funsigned-char -mcmse -Wall -Wno-format -Wno-return-type -fstack-usage -MMD -MP -MF"Middlewares/trustedfirmware/uart_stdout.d" -MT"$@" --specs=nano.specs -mfpu=fpv5-sp-d16 -mfloat-abi=hard -mthumb -o "$@"

