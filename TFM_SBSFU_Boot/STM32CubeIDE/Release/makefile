################################################################################
# Automatically-generated file. Do not edit!
################################################################################

-include ../makefile.init

RM := rm -rf

# All of the sources participating in the build are defined here
-include sources.mk
-include Middlewares/trustedfirmware/subdir.mk
-include Middlewares/mcuboot/subdir.mk
-include Middlewares/mbed-crypto/subdir.mk
-include Drivers/STM32L5xx_HAL_Driver/subdir.mk
-include Drivers/BSP/STM32L562E-DK/subdir.mk
-include Drivers/BSP/Components/subdir.mk
-include Application/User/subdir.mk
-include Application/Startup/subdir.mk
-include subdir.mk
-include objects.mk

ifneq ($(MAKECMDGOALS),clean)
ifneq ($(strip $(S_DEPS)),)
-include $(S_DEPS)
endif
ifneq ($(strip $(S_UPPER_DEPS)),)
-include $(S_UPPER_DEPS)
endif
ifneq ($(strip $(C_DEPS)),)
-include $(C_DEPS)
endif
endif

-include ../makefile.defs

BUILD_ARTIFACT_NAME := TFM_SBSFU_Boot
BUILD_ARTIFACT_EXTENSION := elf
BUILD_ARTIFACT_PREFIX := 
BUILD_ARTIFACT := $(BUILD_ARTIFACT_PREFIX)$(BUILD_ARTIFACT_NAME).$(BUILD_ARTIFACT_EXTENSION)

# Add inputs and outputs from these tool invocations to the build variables 
EXECUTABLES += \
TFM_SBSFU_Boot.elf \

SIZE_OUTPUT += \
default.size.stdout \

OBJDUMP_LIST += \
TFM_SBSFU_Boot.list \

OBJCOPY_BIN += \
TFM_SBSFU_Boot.bin \


# All Target
all:
	+@$(MAKE) --no-print-directory pre-build && $(MAKE) --no-print-directory main-build && $(MAKE) --no-print-directory post-build

# Main-build Target
main-build: TFM_SBSFU_Boot.elf secondary-outputs

# Tool invocations
TFM_SBSFU_Boot.elf: $(OBJS) $(USER_OBJS) ./output.ld
	arm-none-eabi-gcc -o "TFM_SBSFU_Boot.elf" @"objects.list" $(USER_OBJS) $(LIBS) -mcpu=cortex-m33 -T"./output.ld" --specs=nosys.specs -Wl,-Map="TFM_SBSFU_Boot.map" -Wl,--gc-sections -static -Xlinker -check-sections -Xlinker -fatal-warnings --entry=Reset_Handler -Wl,--print-memory-usage,--no-wchar-size-warning -Xlinker --entry=Reset_Handler --specs=nano.specs -mfpu=fpv5-sp-d16 -mfloat-abi=hard -mthumb -Wl,--start-group -lc -lm -Wl,--end-group
	@echo 'Finished building target: $@'
	@echo ' '

default.size.stdout: $(EXECUTABLES)
	arm-none-eabi-size  $(EXECUTABLES)
	@echo 'Finished building: $@'
	@echo ' '

TFM_SBSFU_Boot.list: $(EXECUTABLES)
	arm-none-eabi-objdump -h -S $(EXECUTABLES) > "TFM_SBSFU_Boot.list"
	@echo 'Finished building: $@'
	@echo ' '

TFM_SBSFU_Boot.bin: $(EXECUTABLES)
	arm-none-eabi-objcopy  -O binary $(EXECUTABLES) "TFM_SBSFU_Boot.bin"
	@echo 'Finished building: $@'
	@echo ' '

# Other Targets
clean:
	-$(RM) *
	-@echo ' '

pre-build:
	arm-none-eabi-gcc -E -P -xc -DBL2 -I../../../Linker -I../../Inc -o./output.ld ../stm32l5xx_bl2.ld && arm-none-eabi-gcc -E -P -xc -DBL2 -I../../../Linker -I../../Inc -o../image_macros_preprocessed_bl2.c ../../Src/image_macros_to_preprocess_bl2.c
	-@echo ' '

post-build:
	arm-none-eabi-objcopy -O binary "TFM_SBSFU_Boot.elf" "TFM_SBSFU_Boot.bin"
	arm-none-eabi-size "TFM_SBSFU_Boot.elf"
	arm-none-eabi-objdump -DS  "TFM_SBSFU_Boot.elf" > "TFM_SBSFU_Boot.elf_asm.txt"
	"../postbuild.sh"
	-@echo ' '

secondary-outputs: $(SIZE_OUTPUT) $(OBJDUMP_LIST) $(OBJCOPY_BIN)

fail-specified-linker-script-missing:
	@echo 'Error: Cannot find the specified linker script. Check the linker settings in the build configuration.'
	@exit 2

warn-no-linker-script-specified:
	@echo 'Warning: No linker script specified. Check the linker settings in the build configuration.'

.PHONY: all clean dependents fail-specified-linker-script-missing warn-no-linker-script-specified
.SECONDARY: main-build pre-build post-build

-include ../makefile.targets
