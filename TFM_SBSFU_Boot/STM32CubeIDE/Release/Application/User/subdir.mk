################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
C:/STM32CubeWs/STM32CubeL5/Projects/STM32L562E-DK/Applications/TFM/TFM_SBSFU_Boot/Src/aes_alt.c \
C:/STM32CubeWs/STM32CubeL5/Projects/STM32L562E-DK/Applications/TFM/TFM_SBSFU_Boot/Src/bl2_nv_services.c \
C:/STM32CubeWs/STM32CubeL5/Projects/STM32L562E-DK/Applications/TFM/TFM_SBSFU_Boot/Src/boot_hal.c \
C:/STM32CubeWs/STM32CubeL5/Projects/STM32L562E-DK/Applications/TFM/TFM_SBSFU_Boot/Src/ecdsa_alt.c \
C:/STM32CubeWs/STM32CubeL5/Projects/STM32L562E-DK/Applications/TFM/TFM_SBSFU_Boot/Src/ecp_alt.c \
C:/STM32CubeWs/STM32CubeL5/Projects/STM32L562E-DK/Applications/TFM/TFM_SBSFU_Boot/Src/ecp_curves_alt.c \
C:/STM32CubeWs/STM32CubeL5/Projects/STM32L562E-DK/Applications/TFM/TFM_SBSFU_Boot/Src/low_level_com.c \
C:/STM32CubeWs/STM32CubeL5/Projects/STM32L562E-DK/Applications/TFM/TFM_SBSFU_Boot/Src/low_level_device.c \
C:/STM32CubeWs/STM32CubeL5/Projects/STM32L562E-DK/Applications/TFM/TFM_SBSFU_Boot/Src/low_level_flash.c \
C:/STM32CubeWs/STM32CubeL5/Projects/STM32L562E-DK/Applications/TFM/TFM_SBSFU_Boot/Src/low_level_ospi_device.c \
C:/STM32CubeWs/STM32CubeL5/Projects/STM32L562E-DK/Applications/TFM/TFM_SBSFU_Boot/Src/low_level_ospi_flash.c \
C:/STM32CubeWs/STM32CubeL5/Projects/STM32L562E-DK/Applications/TFM/TFM_SBSFU_Boot/Src/low_level_rng.c \
C:/STM32CubeWs/STM32CubeL5/Projects/STM32L562E-DK/Applications/TFM/TFM_SBSFU_Boot/Src/mpu_armv8m_drv.c \
C:/STM32CubeWs/STM32CubeL5/Projects/STM32L562E-DK/Applications/TFM/TFM_SBSFU_Boot/Src/rsa_alt.c \
C:/STM32CubeWs/STM32CubeL5/Projects/STM32L562E-DK/Applications/TFM/TFM_SBSFU_Boot/Src/sha256_alt.c \
C:/STM32CubeWs/STM32CubeL5/Projects/STM32L562E-DK/Applications/TFM/TFM_SBSFU_Boot/Src/stm32l5xx_hal_msp.c \
C:/STM32CubeWs/STM32CubeL5/Projects/STM32L562E-DK/Applications/TFM/TFM_SBSFU_Boot/Src/system_stm32l5xx.c \
C:/STM32CubeWs/STM32CubeL5/Projects/STM32L562E-DK/Applications/TFM/TFM_SBSFU_Boot/Src/tfm_bl2_shared_data.c \
C:/STM32CubeWs/STM32CubeL5/Projects/STM32L562E-DK/Applications/TFM/TFM_SBSFU_Boot/Src/tfm_low_level_security.c 

OBJS += \
./Application/User/aes_alt.o \
./Application/User/bl2_nv_services.o \
./Application/User/boot_hal.o \
./Application/User/ecdsa_alt.o \
./Application/User/ecp_alt.o \
./Application/User/ecp_curves_alt.o \
./Application/User/low_level_com.o \
./Application/User/low_level_device.o \
./Application/User/low_level_flash.o \
./Application/User/low_level_ospi_device.o \
./Application/User/low_level_ospi_flash.o \
./Application/User/low_level_rng.o \
./Application/User/mpu_armv8m_drv.o \
./Application/User/rsa_alt.o \
./Application/User/sha256_alt.o \
./Application/User/stm32l5xx_hal_msp.o \
./Application/User/system_stm32l5xx.o \
./Application/User/tfm_bl2_shared_data.o \
./Application/User/tfm_low_level_security.o 

C_DEPS += \
./Application/User/aes_alt.d \
./Application/User/bl2_nv_services.d \
./Application/User/boot_hal.d \
./Application/User/ecdsa_alt.d \
./Application/User/ecp_alt.d \
./Application/User/ecp_curves_alt.d \
./Application/User/low_level_com.d \
./Application/User/low_level_device.d \
./Application/User/low_level_flash.d \
./Application/User/low_level_ospi_device.d \
./Application/User/low_level_ospi_flash.d \
./Application/User/low_level_rng.d \
./Application/User/mpu_armv8m_drv.d \
./Application/User/rsa_alt.d \
./Application/User/sha256_alt.d \
./Application/User/stm32l5xx_hal_msp.d \
./Application/User/system_stm32l5xx.d \
./Application/User/tfm_bl2_shared_data.d \
./Application/User/tfm_low_level_security.d 


# Each subdirectory must supply rules for building sources it contributes
Application/User/aes_alt.o: C:/STM32CubeWs/STM32CubeL5/Projects/STM32L562E-DK/Applications/TFM/TFM_SBSFU_Boot/Src/aes_alt.c
	arm-none-eabi-gcc "$<" -mcpu=cortex-m33 -g3 -DSTM32L562xx -DUSE_HAL_DRIVER -DNDEBUG -DTFM_DEV_MODE '-DMCUBOOT_TARGET_CONFIG=<flash_layout.h>' '-DMBEDTLS_CONFIG_FILE=<config-boot.h>' -DMCUBOOT_DOUBLE_SIGN_VERIF -DBL2 -c -I../../Inc -I../../../../../../../Drivers/CMSIS/Include -I../../../../../../../Drivers/CMSIS/Device/ST/STM32L5xx/Include -I../../../../../../../Drivers/STM32L5xx_HAL_Driver/Inc -I../../../../../../../Middlewares/Third_Party/trustedfirmware -I../../../../../../../Middlewares/Third_Party/trustedfirmware/platform/ext/common -I../../../../../../../Middlewares/Third_Party/trustedfirmware/platform/ext/driver -I../../../../../../../Middlewares/Third_Party/trustedfirmware/bl2/include -I../../../../../../../Middlewares/Third_Party/trustedfirmware/bl2/ext/mcuboot -I../../../../../../../Middlewares/Third_Party/trustedfirmware/bl2/ext/mcuboot/include -I../../../../../../../Middlewares/Third_Party/mcuboot/boot/bootutil/include -I../../../../../../../Middlewares/Third_Party/mcuboot/boot/bootutil/src -I../../../../../../../Middlewares/Third_Party/mcuboot/ext/tinycrypt/lib/include -I../../../../../../../Middlewares/Third_Party/mbed-crypto/include -I../../../Linker -I../../../../../../../Drivers/BSP/STM32L562E-DK -I../../../../../../../Drivers/BSP/Components/mx25lm51245g -Os -ffunction-sections -fdata-sections -Wall -fshort-enums -fshort-wchar -funsigned-char -mcmse -Wall -Wno-format -Wno-return-type -fstack-usage -MMD -MP -MF"Application/User/aes_alt.d" -MT"$@" --specs=nano.specs -mfpu=fpv5-sp-d16 -mfloat-abi=hard -mthumb -o "$@"
Application/User/bl2_nv_services.o: C:/STM32CubeWs/STM32CubeL5/Projects/STM32L562E-DK/Applications/TFM/TFM_SBSFU_Boot/Src/bl2_nv_services.c
	arm-none-eabi-gcc "$<" -mcpu=cortex-m33 -g3 -DSTM32L562xx -DUSE_HAL_DRIVER -DNDEBUG -DTFM_DEV_MODE '-DMCUBOOT_TARGET_CONFIG=<flash_layout.h>' '-DMBEDTLS_CONFIG_FILE=<config-boot.h>' -DMCUBOOT_DOUBLE_SIGN_VERIF -DBL2 -c -I../../Inc -I../../../../../../../Drivers/CMSIS/Include -I../../../../../../../Drivers/CMSIS/Device/ST/STM32L5xx/Include -I../../../../../../../Drivers/STM32L5xx_HAL_Driver/Inc -I../../../../../../../Middlewares/Third_Party/trustedfirmware -I../../../../../../../Middlewares/Third_Party/trustedfirmware/platform/ext/common -I../../../../../../../Middlewares/Third_Party/trustedfirmware/platform/ext/driver -I../../../../../../../Middlewares/Third_Party/trustedfirmware/bl2/include -I../../../../../../../Middlewares/Third_Party/trustedfirmware/bl2/ext/mcuboot -I../../../../../../../Middlewares/Third_Party/trustedfirmware/bl2/ext/mcuboot/include -I../../../../../../../Middlewares/Third_Party/mcuboot/boot/bootutil/include -I../../../../../../../Middlewares/Third_Party/mcuboot/boot/bootutil/src -I../../../../../../../Middlewares/Third_Party/mcuboot/ext/tinycrypt/lib/include -I../../../../../../../Middlewares/Third_Party/mbed-crypto/include -I../../../Linker -I../../../../../../../Drivers/BSP/STM32L562E-DK -I../../../../../../../Drivers/BSP/Components/mx25lm51245g -Os -ffunction-sections -fdata-sections -Wall -fshort-enums -fshort-wchar -funsigned-char -mcmse -Wall -Wno-format -Wno-return-type -fstack-usage -MMD -MP -MF"Application/User/bl2_nv_services.d" -MT"$@" --specs=nano.specs -mfpu=fpv5-sp-d16 -mfloat-abi=hard -mthumb -o "$@"
Application/User/boot_hal.o: C:/STM32CubeWs/STM32CubeL5/Projects/STM32L562E-DK/Applications/TFM/TFM_SBSFU_Boot/Src/boot_hal.c
	arm-none-eabi-gcc "$<" -mcpu=cortex-m33 -g3 -DSTM32L562xx -DUSE_HAL_DRIVER -DNDEBUG -DTFM_DEV_MODE '-DMCUBOOT_TARGET_CONFIG=<flash_layout.h>' '-DMBEDTLS_CONFIG_FILE=<config-boot.h>' -DMCUBOOT_DOUBLE_SIGN_VERIF -DBL2 -c -I../../Inc -I../../../../../../../Drivers/CMSIS/Include -I../../../../../../../Drivers/CMSIS/Device/ST/STM32L5xx/Include -I../../../../../../../Drivers/STM32L5xx_HAL_Driver/Inc -I../../../../../../../Middlewares/Third_Party/trustedfirmware -I../../../../../../../Middlewares/Third_Party/trustedfirmware/platform/ext/common -I../../../../../../../Middlewares/Third_Party/trustedfirmware/platform/ext/driver -I../../../../../../../Middlewares/Third_Party/trustedfirmware/bl2/include -I../../../../../../../Middlewares/Third_Party/trustedfirmware/bl2/ext/mcuboot -I../../../../../../../Middlewares/Third_Party/trustedfirmware/bl2/ext/mcuboot/include -I../../../../../../../Middlewares/Third_Party/mcuboot/boot/bootutil/include -I../../../../../../../Middlewares/Third_Party/mcuboot/boot/bootutil/src -I../../../../../../../Middlewares/Third_Party/mcuboot/ext/tinycrypt/lib/include -I../../../../../../../Middlewares/Third_Party/mbed-crypto/include -I../../../Linker -I../../../../../../../Drivers/BSP/STM32L562E-DK -I../../../../../../../Drivers/BSP/Components/mx25lm51245g -Os -ffunction-sections -fdata-sections -Wall -fshort-enums -fshort-wchar -funsigned-char -mcmse -Wall -Wno-format -Wno-return-type -fstack-usage -MMD -MP -MF"Application/User/boot_hal.d" -MT"$@" --specs=nano.specs -mfpu=fpv5-sp-d16 -mfloat-abi=hard -mthumb -o "$@"
Application/User/ecdsa_alt.o: C:/STM32CubeWs/STM32CubeL5/Projects/STM32L562E-DK/Applications/TFM/TFM_SBSFU_Boot/Src/ecdsa_alt.c
	arm-none-eabi-gcc "$<" -mcpu=cortex-m33 -g3 -DSTM32L562xx -DUSE_HAL_DRIVER -DNDEBUG -DTFM_DEV_MODE '-DMCUBOOT_TARGET_CONFIG=<flash_layout.h>' '-DMBEDTLS_CONFIG_FILE=<config-boot.h>' -DMCUBOOT_DOUBLE_SIGN_VERIF -DBL2 -c -I../../Inc -I../../../../../../../Drivers/CMSIS/Include -I../../../../../../../Drivers/CMSIS/Device/ST/STM32L5xx/Include -I../../../../../../../Drivers/STM32L5xx_HAL_Driver/Inc -I../../../../../../../Middlewares/Third_Party/trustedfirmware -I../../../../../../../Middlewares/Third_Party/trustedfirmware/platform/ext/common -I../../../../../../../Middlewares/Third_Party/trustedfirmware/platform/ext/driver -I../../../../../../../Middlewares/Third_Party/trustedfirmware/bl2/include -I../../../../../../../Middlewares/Third_Party/trustedfirmware/bl2/ext/mcuboot -I../../../../../../../Middlewares/Third_Party/trustedfirmware/bl2/ext/mcuboot/include -I../../../../../../../Middlewares/Third_Party/mcuboot/boot/bootutil/include -I../../../../../../../Middlewares/Third_Party/mcuboot/boot/bootutil/src -I../../../../../../../Middlewares/Third_Party/mcuboot/ext/tinycrypt/lib/include -I../../../../../../../Middlewares/Third_Party/mbed-crypto/include -I../../../Linker -I../../../../../../../Drivers/BSP/STM32L562E-DK -I../../../../../../../Drivers/BSP/Components/mx25lm51245g -Os -ffunction-sections -fdata-sections -Wall -fshort-enums -fshort-wchar -funsigned-char -mcmse -Wall -Wno-format -Wno-return-type -fstack-usage -MMD -MP -MF"Application/User/ecdsa_alt.d" -MT"$@" --specs=nano.specs -mfpu=fpv5-sp-d16 -mfloat-abi=hard -mthumb -o "$@"
Application/User/ecp_alt.o: C:/STM32CubeWs/STM32CubeL5/Projects/STM32L562E-DK/Applications/TFM/TFM_SBSFU_Boot/Src/ecp_alt.c
	arm-none-eabi-gcc "$<" -mcpu=cortex-m33 -g3 -DSTM32L562xx -DUSE_HAL_DRIVER -DNDEBUG -DTFM_DEV_MODE '-DMCUBOOT_TARGET_CONFIG=<flash_layout.h>' '-DMBEDTLS_CONFIG_FILE=<config-boot.h>' -DMCUBOOT_DOUBLE_SIGN_VERIF -DBL2 -c -I../../Inc -I../../../../../../../Drivers/CMSIS/Include -I../../../../../../../Drivers/CMSIS/Device/ST/STM32L5xx/Include -I../../../../../../../Drivers/STM32L5xx_HAL_Driver/Inc -I../../../../../../../Middlewares/Third_Party/trustedfirmware -I../../../../../../../Middlewares/Third_Party/trustedfirmware/platform/ext/common -I../../../../../../../Middlewares/Third_Party/trustedfirmware/platform/ext/driver -I../../../../../../../Middlewares/Third_Party/trustedfirmware/bl2/include -I../../../../../../../Middlewares/Third_Party/trustedfirmware/bl2/ext/mcuboot -I../../../../../../../Middlewares/Third_Party/trustedfirmware/bl2/ext/mcuboot/include -I../../../../../../../Middlewares/Third_Party/mcuboot/boot/bootutil/include -I../../../../../../../Middlewares/Third_Party/mcuboot/boot/bootutil/src -I../../../../../../../Middlewares/Third_Party/mcuboot/ext/tinycrypt/lib/include -I../../../../../../../Middlewares/Third_Party/mbed-crypto/include -I../../../Linker -I../../../../../../../Drivers/BSP/STM32L562E-DK -I../../../../../../../Drivers/BSP/Components/mx25lm51245g -Os -ffunction-sections -fdata-sections -Wall -fshort-enums -fshort-wchar -funsigned-char -mcmse -Wall -Wno-format -Wno-return-type -fstack-usage -MMD -MP -MF"Application/User/ecp_alt.d" -MT"$@" --specs=nano.specs -mfpu=fpv5-sp-d16 -mfloat-abi=hard -mthumb -o "$@"
Application/User/ecp_curves_alt.o: C:/STM32CubeWs/STM32CubeL5/Projects/STM32L562E-DK/Applications/TFM/TFM_SBSFU_Boot/Src/ecp_curves_alt.c
	arm-none-eabi-gcc "$<" -mcpu=cortex-m33 -g3 -DSTM32L562xx -DUSE_HAL_DRIVER -DNDEBUG -DTFM_DEV_MODE '-DMCUBOOT_TARGET_CONFIG=<flash_layout.h>' '-DMBEDTLS_CONFIG_FILE=<config-boot.h>' -DMCUBOOT_DOUBLE_SIGN_VERIF -DBL2 -c -I../../Inc -I../../../../../../../Drivers/CMSIS/Include -I../../../../../../../Drivers/CMSIS/Device/ST/STM32L5xx/Include -I../../../../../../../Drivers/STM32L5xx_HAL_Driver/Inc -I../../../../../../../Middlewares/Third_Party/trustedfirmware -I../../../../../../../Middlewares/Third_Party/trustedfirmware/platform/ext/common -I../../../../../../../Middlewares/Third_Party/trustedfirmware/platform/ext/driver -I../../../../../../../Middlewares/Third_Party/trustedfirmware/bl2/include -I../../../../../../../Middlewares/Third_Party/trustedfirmware/bl2/ext/mcuboot -I../../../../../../../Middlewares/Third_Party/trustedfirmware/bl2/ext/mcuboot/include -I../../../../../../../Middlewares/Third_Party/mcuboot/boot/bootutil/include -I../../../../../../../Middlewares/Third_Party/mcuboot/boot/bootutil/src -I../../../../../../../Middlewares/Third_Party/mcuboot/ext/tinycrypt/lib/include -I../../../../../../../Middlewares/Third_Party/mbed-crypto/include -I../../../Linker -I../../../../../../../Drivers/BSP/STM32L562E-DK -I../../../../../../../Drivers/BSP/Components/mx25lm51245g -Os -ffunction-sections -fdata-sections -Wall -fshort-enums -fshort-wchar -funsigned-char -mcmse -Wall -Wno-format -Wno-return-type -fstack-usage -MMD -MP -MF"Application/User/ecp_curves_alt.d" -MT"$@" --specs=nano.specs -mfpu=fpv5-sp-d16 -mfloat-abi=hard -mthumb -o "$@"
Application/User/low_level_com.o: C:/STM32CubeWs/STM32CubeL5/Projects/STM32L562E-DK/Applications/TFM/TFM_SBSFU_Boot/Src/low_level_com.c
	arm-none-eabi-gcc "$<" -mcpu=cortex-m33 -g3 -DSTM32L562xx -DUSE_HAL_DRIVER -DNDEBUG -DTFM_DEV_MODE '-DMCUBOOT_TARGET_CONFIG=<flash_layout.h>' '-DMBEDTLS_CONFIG_FILE=<config-boot.h>' -DMCUBOOT_DOUBLE_SIGN_VERIF -DBL2 -c -I../../Inc -I../../../../../../../Drivers/CMSIS/Include -I../../../../../../../Drivers/CMSIS/Device/ST/STM32L5xx/Include -I../../../../../../../Drivers/STM32L5xx_HAL_Driver/Inc -I../../../../../../../Middlewares/Third_Party/trustedfirmware -I../../../../../../../Middlewares/Third_Party/trustedfirmware/platform/ext/common -I../../../../../../../Middlewares/Third_Party/trustedfirmware/platform/ext/driver -I../../../../../../../Middlewares/Third_Party/trustedfirmware/bl2/include -I../../../../../../../Middlewares/Third_Party/trustedfirmware/bl2/ext/mcuboot -I../../../../../../../Middlewares/Third_Party/trustedfirmware/bl2/ext/mcuboot/include -I../../../../../../../Middlewares/Third_Party/mcuboot/boot/bootutil/include -I../../../../../../../Middlewares/Third_Party/mcuboot/boot/bootutil/src -I../../../../../../../Middlewares/Third_Party/mcuboot/ext/tinycrypt/lib/include -I../../../../../../../Middlewares/Third_Party/mbed-crypto/include -I../../../Linker -I../../../../../../../Drivers/BSP/STM32L562E-DK -I../../../../../../../Drivers/BSP/Components/mx25lm51245g -Os -ffunction-sections -fdata-sections -Wall -fshort-enums -fshort-wchar -funsigned-char -mcmse -Wall -Wno-format -Wno-return-type -fstack-usage -MMD -MP -MF"Application/User/low_level_com.d" -MT"$@" --specs=nano.specs -mfpu=fpv5-sp-d16 -mfloat-abi=hard -mthumb -o "$@"
Application/User/low_level_device.o: C:/STM32CubeWs/STM32CubeL5/Projects/STM32L562E-DK/Applications/TFM/TFM_SBSFU_Boot/Src/low_level_device.c
	arm-none-eabi-gcc "$<" -mcpu=cortex-m33 -g3 -DSTM32L562xx -DUSE_HAL_DRIVER -DNDEBUG -DTFM_DEV_MODE '-DMCUBOOT_TARGET_CONFIG=<flash_layout.h>' '-DMBEDTLS_CONFIG_FILE=<config-boot.h>' -DMCUBOOT_DOUBLE_SIGN_VERIF -DBL2 -c -I../../Inc -I../../../../../../../Drivers/CMSIS/Include -I../../../../../../../Drivers/CMSIS/Device/ST/STM32L5xx/Include -I../../../../../../../Drivers/STM32L5xx_HAL_Driver/Inc -I../../../../../../../Middlewares/Third_Party/trustedfirmware -I../../../../../../../Middlewares/Third_Party/trustedfirmware/platform/ext/common -I../../../../../../../Middlewares/Third_Party/trustedfirmware/platform/ext/driver -I../../../../../../../Middlewares/Third_Party/trustedfirmware/bl2/include -I../../../../../../../Middlewares/Third_Party/trustedfirmware/bl2/ext/mcuboot -I../../../../../../../Middlewares/Third_Party/trustedfirmware/bl2/ext/mcuboot/include -I../../../../../../../Middlewares/Third_Party/mcuboot/boot/bootutil/include -I../../../../../../../Middlewares/Third_Party/mcuboot/boot/bootutil/src -I../../../../../../../Middlewares/Third_Party/mcuboot/ext/tinycrypt/lib/include -I../../../../../../../Middlewares/Third_Party/mbed-crypto/include -I../../../Linker -I../../../../../../../Drivers/BSP/STM32L562E-DK -I../../../../../../../Drivers/BSP/Components/mx25lm51245g -Os -ffunction-sections -fdata-sections -Wall -fshort-enums -fshort-wchar -funsigned-char -mcmse -Wall -Wno-format -Wno-return-type -fstack-usage -MMD -MP -MF"Application/User/low_level_device.d" -MT"$@" --specs=nano.specs -mfpu=fpv5-sp-d16 -mfloat-abi=hard -mthumb -o "$@"
Application/User/low_level_flash.o: C:/STM32CubeWs/STM32CubeL5/Projects/STM32L562E-DK/Applications/TFM/TFM_SBSFU_Boot/Src/low_level_flash.c
	arm-none-eabi-gcc "$<" -mcpu=cortex-m33 -g3 -DSTM32L562xx -DUSE_HAL_DRIVER -DNDEBUG -DTFM_DEV_MODE '-DMCUBOOT_TARGET_CONFIG=<flash_layout.h>' '-DMBEDTLS_CONFIG_FILE=<config-boot.h>' -DMCUBOOT_DOUBLE_SIGN_VERIF -DBL2 -c -I../../Inc -I../../../../../../../Drivers/CMSIS/Include -I../../../../../../../Drivers/CMSIS/Device/ST/STM32L5xx/Include -I../../../../../../../Drivers/STM32L5xx_HAL_Driver/Inc -I../../../../../../../Middlewares/Third_Party/trustedfirmware -I../../../../../../../Middlewares/Third_Party/trustedfirmware/platform/ext/common -I../../../../../../../Middlewares/Third_Party/trustedfirmware/platform/ext/driver -I../../../../../../../Middlewares/Third_Party/trustedfirmware/bl2/include -I../../../../../../../Middlewares/Third_Party/trustedfirmware/bl2/ext/mcuboot -I../../../../../../../Middlewares/Third_Party/trustedfirmware/bl2/ext/mcuboot/include -I../../../../../../../Middlewares/Third_Party/mcuboot/boot/bootutil/include -I../../../../../../../Middlewares/Third_Party/mcuboot/boot/bootutil/src -I../../../../../../../Middlewares/Third_Party/mcuboot/ext/tinycrypt/lib/include -I../../../../../../../Middlewares/Third_Party/mbed-crypto/include -I../../../Linker -I../../../../../../../Drivers/BSP/STM32L562E-DK -I../../../../../../../Drivers/BSP/Components/mx25lm51245g -Os -ffunction-sections -fdata-sections -Wall -fshort-enums -fshort-wchar -funsigned-char -mcmse -Wall -Wno-format -Wno-return-type -fstack-usage -MMD -MP -MF"Application/User/low_level_flash.d" -MT"$@" --specs=nano.specs -mfpu=fpv5-sp-d16 -mfloat-abi=hard -mthumb -o "$@"
Application/User/low_level_ospi_device.o: C:/STM32CubeWs/STM32CubeL5/Projects/STM32L562E-DK/Applications/TFM/TFM_SBSFU_Boot/Src/low_level_ospi_device.c
	arm-none-eabi-gcc "$<" -mcpu=cortex-m33 -g3 -DSTM32L562xx -DUSE_HAL_DRIVER -DNDEBUG -DTFM_DEV_MODE '-DMCUBOOT_TARGET_CONFIG=<flash_layout.h>' '-DMBEDTLS_CONFIG_FILE=<config-boot.h>' -DMCUBOOT_DOUBLE_SIGN_VERIF -DBL2 -c -I../../Inc -I../../../../../../../Drivers/CMSIS/Include -I../../../../../../../Drivers/CMSIS/Device/ST/STM32L5xx/Include -I../../../../../../../Drivers/STM32L5xx_HAL_Driver/Inc -I../../../../../../../Middlewares/Third_Party/trustedfirmware -I../../../../../../../Middlewares/Third_Party/trustedfirmware/platform/ext/common -I../../../../../../../Middlewares/Third_Party/trustedfirmware/platform/ext/driver -I../../../../../../../Middlewares/Third_Party/trustedfirmware/bl2/include -I../../../../../../../Middlewares/Third_Party/trustedfirmware/bl2/ext/mcuboot -I../../../../../../../Middlewares/Third_Party/trustedfirmware/bl2/ext/mcuboot/include -I../../../../../../../Middlewares/Third_Party/mcuboot/boot/bootutil/include -I../../../../../../../Middlewares/Third_Party/mcuboot/boot/bootutil/src -I../../../../../../../Middlewares/Third_Party/mcuboot/ext/tinycrypt/lib/include -I../../../../../../../Middlewares/Third_Party/mbed-crypto/include -I../../../Linker -I../../../../../../../Drivers/BSP/STM32L562E-DK -I../../../../../../../Drivers/BSP/Components/mx25lm51245g -Os -ffunction-sections -fdata-sections -Wall -fshort-enums -fshort-wchar -funsigned-char -mcmse -Wall -Wno-format -Wno-return-type -fstack-usage -MMD -MP -MF"Application/User/low_level_ospi_device.d" -MT"$@" --specs=nano.specs -mfpu=fpv5-sp-d16 -mfloat-abi=hard -mthumb -o "$@"
Application/User/low_level_ospi_flash.o: C:/STM32CubeWs/STM32CubeL5/Projects/STM32L562E-DK/Applications/TFM/TFM_SBSFU_Boot/Src/low_level_ospi_flash.c
	arm-none-eabi-gcc "$<" -mcpu=cortex-m33 -g3 -DSTM32L562xx -DUSE_HAL_DRIVER -DNDEBUG -DTFM_DEV_MODE '-DMCUBOOT_TARGET_CONFIG=<flash_layout.h>' '-DMBEDTLS_CONFIG_FILE=<config-boot.h>' -DMCUBOOT_DOUBLE_SIGN_VERIF -DBL2 -c -I../../Inc -I../../../../../../../Drivers/CMSIS/Include -I../../../../../../../Drivers/CMSIS/Device/ST/STM32L5xx/Include -I../../../../../../../Drivers/STM32L5xx_HAL_Driver/Inc -I../../../../../../../Middlewares/Third_Party/trustedfirmware -I../../../../../../../Middlewares/Third_Party/trustedfirmware/platform/ext/common -I../../../../../../../Middlewares/Third_Party/trustedfirmware/platform/ext/driver -I../../../../../../../Middlewares/Third_Party/trustedfirmware/bl2/include -I../../../../../../../Middlewares/Third_Party/trustedfirmware/bl2/ext/mcuboot -I../../../../../../../Middlewares/Third_Party/trustedfirmware/bl2/ext/mcuboot/include -I../../../../../../../Middlewares/Third_Party/mcuboot/boot/bootutil/include -I../../../../../../../Middlewares/Third_Party/mcuboot/boot/bootutil/src -I../../../../../../../Middlewares/Third_Party/mcuboot/ext/tinycrypt/lib/include -I../../../../../../../Middlewares/Third_Party/mbed-crypto/include -I../../../Linker -I../../../../../../../Drivers/BSP/STM32L562E-DK -I../../../../../../../Drivers/BSP/Components/mx25lm51245g -Os -ffunction-sections -fdata-sections -Wall -fshort-enums -fshort-wchar -funsigned-char -mcmse -Wall -Wno-format -Wno-return-type -fstack-usage -MMD -MP -MF"Application/User/low_level_ospi_flash.d" -MT"$@" --specs=nano.specs -mfpu=fpv5-sp-d16 -mfloat-abi=hard -mthumb -o "$@"
Application/User/low_level_rng.o: C:/STM32CubeWs/STM32CubeL5/Projects/STM32L562E-DK/Applications/TFM/TFM_SBSFU_Boot/Src/low_level_rng.c
	arm-none-eabi-gcc "$<" -mcpu=cortex-m33 -g3 -DSTM32L562xx -DUSE_HAL_DRIVER -DNDEBUG -DTFM_DEV_MODE '-DMCUBOOT_TARGET_CONFIG=<flash_layout.h>' '-DMBEDTLS_CONFIG_FILE=<config-boot.h>' -DMCUBOOT_DOUBLE_SIGN_VERIF -DBL2 -c -I../../Inc -I../../../../../../../Drivers/CMSIS/Include -I../../../../../../../Drivers/CMSIS/Device/ST/STM32L5xx/Include -I../../../../../../../Drivers/STM32L5xx_HAL_Driver/Inc -I../../../../../../../Middlewares/Third_Party/trustedfirmware -I../../../../../../../Middlewares/Third_Party/trustedfirmware/platform/ext/common -I../../../../../../../Middlewares/Third_Party/trustedfirmware/platform/ext/driver -I../../../../../../../Middlewares/Third_Party/trustedfirmware/bl2/include -I../../../../../../../Middlewares/Third_Party/trustedfirmware/bl2/ext/mcuboot -I../../../../../../../Middlewares/Third_Party/trustedfirmware/bl2/ext/mcuboot/include -I../../../../../../../Middlewares/Third_Party/mcuboot/boot/bootutil/include -I../../../../../../../Middlewares/Third_Party/mcuboot/boot/bootutil/src -I../../../../../../../Middlewares/Third_Party/mcuboot/ext/tinycrypt/lib/include -I../../../../../../../Middlewares/Third_Party/mbed-crypto/include -I../../../Linker -I../../../../../../../Drivers/BSP/STM32L562E-DK -I../../../../../../../Drivers/BSP/Components/mx25lm51245g -Os -ffunction-sections -fdata-sections -Wall -fshort-enums -fshort-wchar -funsigned-char -mcmse -Wall -Wno-format -Wno-return-type -fstack-usage -MMD -MP -MF"Application/User/low_level_rng.d" -MT"$@" --specs=nano.specs -mfpu=fpv5-sp-d16 -mfloat-abi=hard -mthumb -o "$@"
Application/User/mpu_armv8m_drv.o: C:/STM32CubeWs/STM32CubeL5/Projects/STM32L562E-DK/Applications/TFM/TFM_SBSFU_Boot/Src/mpu_armv8m_drv.c
	arm-none-eabi-gcc "$<" -mcpu=cortex-m33 -g3 -DSTM32L562xx -DUSE_HAL_DRIVER -DNDEBUG -DTFM_DEV_MODE '-DMCUBOOT_TARGET_CONFIG=<flash_layout.h>' '-DMBEDTLS_CONFIG_FILE=<config-boot.h>' -DMCUBOOT_DOUBLE_SIGN_VERIF -DBL2 -c -I../../Inc -I../../../../../../../Drivers/CMSIS/Include -I../../../../../../../Drivers/CMSIS/Device/ST/STM32L5xx/Include -I../../../../../../../Drivers/STM32L5xx_HAL_Driver/Inc -I../../../../../../../Middlewares/Third_Party/trustedfirmware -I../../../../../../../Middlewares/Third_Party/trustedfirmware/platform/ext/common -I../../../../../../../Middlewares/Third_Party/trustedfirmware/platform/ext/driver -I../../../../../../../Middlewares/Third_Party/trustedfirmware/bl2/include -I../../../../../../../Middlewares/Third_Party/trustedfirmware/bl2/ext/mcuboot -I../../../../../../../Middlewares/Third_Party/trustedfirmware/bl2/ext/mcuboot/include -I../../../../../../../Middlewares/Third_Party/mcuboot/boot/bootutil/include -I../../../../../../../Middlewares/Third_Party/mcuboot/boot/bootutil/src -I../../../../../../../Middlewares/Third_Party/mcuboot/ext/tinycrypt/lib/include -I../../../../../../../Middlewares/Third_Party/mbed-crypto/include -I../../../Linker -I../../../../../../../Drivers/BSP/STM32L562E-DK -I../../../../../../../Drivers/BSP/Components/mx25lm51245g -Os -ffunction-sections -fdata-sections -Wall -fshort-enums -fshort-wchar -funsigned-char -mcmse -Wall -Wno-format -Wno-return-type -fstack-usage -MMD -MP -MF"Application/User/mpu_armv8m_drv.d" -MT"$@" --specs=nano.specs -mfpu=fpv5-sp-d16 -mfloat-abi=hard -mthumb -o "$@"
Application/User/rsa_alt.o: C:/STM32CubeWs/STM32CubeL5/Projects/STM32L562E-DK/Applications/TFM/TFM_SBSFU_Boot/Src/rsa_alt.c
	arm-none-eabi-gcc "$<" -mcpu=cortex-m33 -g3 -DSTM32L562xx -DUSE_HAL_DRIVER -DNDEBUG -DTFM_DEV_MODE '-DMCUBOOT_TARGET_CONFIG=<flash_layout.h>' '-DMBEDTLS_CONFIG_FILE=<config-boot.h>' -DMCUBOOT_DOUBLE_SIGN_VERIF -DBL2 -c -I../../Inc -I../../../../../../../Drivers/CMSIS/Include -I../../../../../../../Drivers/CMSIS/Device/ST/STM32L5xx/Include -I../../../../../../../Drivers/STM32L5xx_HAL_Driver/Inc -I../../../../../../../Middlewares/Third_Party/trustedfirmware -I../../../../../../../Middlewares/Third_Party/trustedfirmware/platform/ext/common -I../../../../../../../Middlewares/Third_Party/trustedfirmware/platform/ext/driver -I../../../../../../../Middlewares/Third_Party/trustedfirmware/bl2/include -I../../../../../../../Middlewares/Third_Party/trustedfirmware/bl2/ext/mcuboot -I../../../../../../../Middlewares/Third_Party/trustedfirmware/bl2/ext/mcuboot/include -I../../../../../../../Middlewares/Third_Party/mcuboot/boot/bootutil/include -I../../../../../../../Middlewares/Third_Party/mcuboot/boot/bootutil/src -I../../../../../../../Middlewares/Third_Party/mcuboot/ext/tinycrypt/lib/include -I../../../../../../../Middlewares/Third_Party/mbed-crypto/include -I../../../Linker -I../../../../../../../Drivers/BSP/STM32L562E-DK -I../../../../../../../Drivers/BSP/Components/mx25lm51245g -Os -ffunction-sections -fdata-sections -Wall -fshort-enums -fshort-wchar -funsigned-char -mcmse -Wall -Wno-format -Wno-return-type -fstack-usage -MMD -MP -MF"Application/User/rsa_alt.d" -MT"$@" --specs=nano.specs -mfpu=fpv5-sp-d16 -mfloat-abi=hard -mthumb -o "$@"
Application/User/sha256_alt.o: C:/STM32CubeWs/STM32CubeL5/Projects/STM32L562E-DK/Applications/TFM/TFM_SBSFU_Boot/Src/sha256_alt.c
	arm-none-eabi-gcc "$<" -mcpu=cortex-m33 -g3 -DSTM32L562xx -DUSE_HAL_DRIVER -DNDEBUG -DTFM_DEV_MODE '-DMCUBOOT_TARGET_CONFIG=<flash_layout.h>' '-DMBEDTLS_CONFIG_FILE=<config-boot.h>' -DMCUBOOT_DOUBLE_SIGN_VERIF -DBL2 -c -I../../Inc -I../../../../../../../Drivers/CMSIS/Include -I../../../../../../../Drivers/CMSIS/Device/ST/STM32L5xx/Include -I../../../../../../../Drivers/STM32L5xx_HAL_Driver/Inc -I../../../../../../../Middlewares/Third_Party/trustedfirmware -I../../../../../../../Middlewares/Third_Party/trustedfirmware/platform/ext/common -I../../../../../../../Middlewares/Third_Party/trustedfirmware/platform/ext/driver -I../../../../../../../Middlewares/Third_Party/trustedfirmware/bl2/include -I../../../../../../../Middlewares/Third_Party/trustedfirmware/bl2/ext/mcuboot -I../../../../../../../Middlewares/Third_Party/trustedfirmware/bl2/ext/mcuboot/include -I../../../../../../../Middlewares/Third_Party/mcuboot/boot/bootutil/include -I../../../../../../../Middlewares/Third_Party/mcuboot/boot/bootutil/src -I../../../../../../../Middlewares/Third_Party/mcuboot/ext/tinycrypt/lib/include -I../../../../../../../Middlewares/Third_Party/mbed-crypto/include -I../../../Linker -I../../../../../../../Drivers/BSP/STM32L562E-DK -I../../../../../../../Drivers/BSP/Components/mx25lm51245g -Os -ffunction-sections -fdata-sections -Wall -fshort-enums -fshort-wchar -funsigned-char -mcmse -Wall -Wno-format -Wno-return-type -fstack-usage -MMD -MP -MF"Application/User/sha256_alt.d" -MT"$@" --specs=nano.specs -mfpu=fpv5-sp-d16 -mfloat-abi=hard -mthumb -o "$@"
Application/User/stm32l5xx_hal_msp.o: C:/STM32CubeWs/STM32CubeL5/Projects/STM32L562E-DK/Applications/TFM/TFM_SBSFU_Boot/Src/stm32l5xx_hal_msp.c
	arm-none-eabi-gcc "$<" -mcpu=cortex-m33 -g3 -DSTM32L562xx -DUSE_HAL_DRIVER -DNDEBUG -DTFM_DEV_MODE '-DMCUBOOT_TARGET_CONFIG=<flash_layout.h>' '-DMBEDTLS_CONFIG_FILE=<config-boot.h>' -DMCUBOOT_DOUBLE_SIGN_VERIF -DBL2 -c -I../../Inc -I../../../../../../../Drivers/CMSIS/Include -I../../../../../../../Drivers/CMSIS/Device/ST/STM32L5xx/Include -I../../../../../../../Drivers/STM32L5xx_HAL_Driver/Inc -I../../../../../../../Middlewares/Third_Party/trustedfirmware -I../../../../../../../Middlewares/Third_Party/trustedfirmware/platform/ext/common -I../../../../../../../Middlewares/Third_Party/trustedfirmware/platform/ext/driver -I../../../../../../../Middlewares/Third_Party/trustedfirmware/bl2/include -I../../../../../../../Middlewares/Third_Party/trustedfirmware/bl2/ext/mcuboot -I../../../../../../../Middlewares/Third_Party/trustedfirmware/bl2/ext/mcuboot/include -I../../../../../../../Middlewares/Third_Party/mcuboot/boot/bootutil/include -I../../../../../../../Middlewares/Third_Party/mcuboot/boot/bootutil/src -I../../../../../../../Middlewares/Third_Party/mcuboot/ext/tinycrypt/lib/include -I../../../../../../../Middlewares/Third_Party/mbed-crypto/include -I../../../Linker -I../../../../../../../Drivers/BSP/STM32L562E-DK -I../../../../../../../Drivers/BSP/Components/mx25lm51245g -Os -ffunction-sections -fdata-sections -Wall -fshort-enums -fshort-wchar -funsigned-char -mcmse -Wall -Wno-format -Wno-return-type -fstack-usage -MMD -MP -MF"Application/User/stm32l5xx_hal_msp.d" -MT"$@" --specs=nano.specs -mfpu=fpv5-sp-d16 -mfloat-abi=hard -mthumb -o "$@"
Application/User/system_stm32l5xx.o: C:/STM32CubeWs/STM32CubeL5/Projects/STM32L562E-DK/Applications/TFM/TFM_SBSFU_Boot/Src/system_stm32l5xx.c
	arm-none-eabi-gcc "$<" -mcpu=cortex-m33 -g3 -DSTM32L562xx -DUSE_HAL_DRIVER -DNDEBUG -DTFM_DEV_MODE '-DMCUBOOT_TARGET_CONFIG=<flash_layout.h>' '-DMBEDTLS_CONFIG_FILE=<config-boot.h>' -DMCUBOOT_DOUBLE_SIGN_VERIF -DBL2 -c -I../../Inc -I../../../../../../../Drivers/CMSIS/Include -I../../../../../../../Drivers/CMSIS/Device/ST/STM32L5xx/Include -I../../../../../../../Drivers/STM32L5xx_HAL_Driver/Inc -I../../../../../../../Middlewares/Third_Party/trustedfirmware -I../../../../../../../Middlewares/Third_Party/trustedfirmware/platform/ext/common -I../../../../../../../Middlewares/Third_Party/trustedfirmware/platform/ext/driver -I../../../../../../../Middlewares/Third_Party/trustedfirmware/bl2/include -I../../../../../../../Middlewares/Third_Party/trustedfirmware/bl2/ext/mcuboot -I../../../../../../../Middlewares/Third_Party/trustedfirmware/bl2/ext/mcuboot/include -I../../../../../../../Middlewares/Third_Party/mcuboot/boot/bootutil/include -I../../../../../../../Middlewares/Third_Party/mcuboot/boot/bootutil/src -I../../../../../../../Middlewares/Third_Party/mcuboot/ext/tinycrypt/lib/include -I../../../../../../../Middlewares/Third_Party/mbed-crypto/include -I../../../Linker -I../../../../../../../Drivers/BSP/STM32L562E-DK -I../../../../../../../Drivers/BSP/Components/mx25lm51245g -Os -ffunction-sections -fdata-sections -Wall -fshort-enums -fshort-wchar -funsigned-char -mcmse -Wall -Wno-format -Wno-return-type -fstack-usage -MMD -MP -MF"Application/User/system_stm32l5xx.d" -MT"$@" --specs=nano.specs -mfpu=fpv5-sp-d16 -mfloat-abi=hard -mthumb -o "$@"
Application/User/tfm_bl2_shared_data.o: C:/STM32CubeWs/STM32CubeL5/Projects/STM32L562E-DK/Applications/TFM/TFM_SBSFU_Boot/Src/tfm_bl2_shared_data.c
	arm-none-eabi-gcc "$<" -mcpu=cortex-m33 -g3 -DSTM32L562xx -DUSE_HAL_DRIVER -DNDEBUG -DTFM_DEV_MODE '-DMCUBOOT_TARGET_CONFIG=<flash_layout.h>' '-DMBEDTLS_CONFIG_FILE=<config-boot.h>' -DMCUBOOT_DOUBLE_SIGN_VERIF -DBL2 -c -I../../Inc -I../../../../../../../Drivers/CMSIS/Include -I../../../../../../../Drivers/CMSIS/Device/ST/STM32L5xx/Include -I../../../../../../../Drivers/STM32L5xx_HAL_Driver/Inc -I../../../../../../../Middlewares/Third_Party/trustedfirmware -I../../../../../../../Middlewares/Third_Party/trustedfirmware/platform/ext/common -I../../../../../../../Middlewares/Third_Party/trustedfirmware/platform/ext/driver -I../../../../../../../Middlewares/Third_Party/trustedfirmware/bl2/include -I../../../../../../../Middlewares/Third_Party/trustedfirmware/bl2/ext/mcuboot -I../../../../../../../Middlewares/Third_Party/trustedfirmware/bl2/ext/mcuboot/include -I../../../../../../../Middlewares/Third_Party/mcuboot/boot/bootutil/include -I../../../../../../../Middlewares/Third_Party/mcuboot/boot/bootutil/src -I../../../../../../../Middlewares/Third_Party/mcuboot/ext/tinycrypt/lib/include -I../../../../../../../Middlewares/Third_Party/mbed-crypto/include -I../../../Linker -I../../../../../../../Drivers/BSP/STM32L562E-DK -I../../../../../../../Drivers/BSP/Components/mx25lm51245g -Os -ffunction-sections -fdata-sections -Wall -fshort-enums -fshort-wchar -funsigned-char -mcmse -Wall -Wno-format -Wno-return-type -fstack-usage -MMD -MP -MF"Application/User/tfm_bl2_shared_data.d" -MT"$@" --specs=nano.specs -mfpu=fpv5-sp-d16 -mfloat-abi=hard -mthumb -o "$@"
Application/User/tfm_low_level_security.o: C:/STM32CubeWs/STM32CubeL5/Projects/STM32L562E-DK/Applications/TFM/TFM_SBSFU_Boot/Src/tfm_low_level_security.c
	arm-none-eabi-gcc "$<" -mcpu=cortex-m33 -g3 -DSTM32L562xx -DUSE_HAL_DRIVER -DNDEBUG -DTFM_DEV_MODE '-DMCUBOOT_TARGET_CONFIG=<flash_layout.h>' '-DMBEDTLS_CONFIG_FILE=<config-boot.h>' -DMCUBOOT_DOUBLE_SIGN_VERIF -DBL2 -c -I../../Inc -I../../../../../../../Drivers/CMSIS/Include -I../../../../../../../Drivers/CMSIS/Device/ST/STM32L5xx/Include -I../../../../../../../Drivers/STM32L5xx_HAL_Driver/Inc -I../../../../../../../Middlewares/Third_Party/trustedfirmware -I../../../../../../../Middlewares/Third_Party/trustedfirmware/platform/ext/common -I../../../../../../../Middlewares/Third_Party/trustedfirmware/platform/ext/driver -I../../../../../../../Middlewares/Third_Party/trustedfirmware/bl2/include -I../../../../../../../Middlewares/Third_Party/trustedfirmware/bl2/ext/mcuboot -I../../../../../../../Middlewares/Third_Party/trustedfirmware/bl2/ext/mcuboot/include -I../../../../../../../Middlewares/Third_Party/mcuboot/boot/bootutil/include -I../../../../../../../Middlewares/Third_Party/mcuboot/boot/bootutil/src -I../../../../../../../Middlewares/Third_Party/mcuboot/ext/tinycrypt/lib/include -I../../../../../../../Middlewares/Third_Party/mbed-crypto/include -I../../../Linker -I../../../../../../../Drivers/BSP/STM32L562E-DK -I../../../../../../../Drivers/BSP/Components/mx25lm51245g -Os -ffunction-sections -fdata-sections -Wall -fshort-enums -fshort-wchar -funsigned-char -mcmse -Wall -Wno-format -Wno-return-type -fstack-usage -MMD -MP -MF"Application/User/tfm_low_level_security.d" -MT"$@" --specs=nano.specs -mfpu=fpv5-sp-d16 -mfloat-abi=hard -mthumb -o "$@"
