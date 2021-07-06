################################################################################
# Automatically-generated file. Do not edit!
################################################################################

-include ../makefile.init

RM := rm -rf

# All of the sources participating in the build are defined here
-include sources.mk
-include Middlewares/trustedfirmware/test/subdir.mk
-include Middlewares/trustedfirmware/core/subdir.mk
-include Drivers/STM32L5xx_HAL_Driver/subdir.mk
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

BUILD_ARTIFACT_NAME := TFM_Appli_NonSecure
BUILD_ARTIFACT_EXTENSION := elf
BUILD_ARTIFACT_PREFIX := 
BUILD_ARTIFACT := $(BUILD_ARTIFACT_PREFIX)$(BUILD_ARTIFACT_NAME).$(BUILD_ARTIFACT_EXTENSION)

# Add inputs and outputs from these tool invocations to the build variables 
EXECUTABLES += \
TFM_Appli_NonSecure.elf \

SIZE_OUTPUT += \
default.size.stdout \

OBJDUMP_LIST += \
TFM_Appli_NonSecure.list \

OBJCOPY_BIN += \
TFM_Appli_NonSecure.bin \


# All Target
all:
	+@$(MAKE) --no-print-directory pre-build && $(MAKE) --no-print-directory main-build && $(MAKE) --no-print-directory post-build

# Main-build Target
main-build: TFM_Appli_NonSecure.elf secondary-outputs

# Tool invocations
TFM_Appli_NonSecure.elf: $(OBJS) $(USER_OBJS) ./output.ld
	arm-none-eabi-gcc -o "TFM_Appli_NonSecure.elf" @"objects.list" $(USER_OBJS) $(LIBS) -mcpu=cortex-m33 -T"./output.ld" --specs=nosys.specs -Wl,-Map="TFM_Appli_NonSecure.map" -Wl,--gc-sections -static -entry=Reset_Handler -Wl,--no-wchar-size-warning,--print-memory-usage -Xlinker --entry=Reset_Handler --specs=nano.specs -mfpu=fpv5-sp-d16 -mfloat-abi=softfp -mthumb -Wl,--start-group -lc -lm -Wl,--end-group
	@echo 'Finished building target: $@'
	@echo ' '

default.size.stdout: $(EXECUTABLES)
	arm-none-eabi-size  $(EXECUTABLES)
	@echo 'Finished building: $@'
	@echo ' '

TFM_Appli_NonSecure.list: $(EXECUTABLES)
	arm-none-eabi-objdump -h -S $(EXECUTABLES) > "TFM_Appli_NonSecure.list"
	@echo 'Finished building: $@'
	@echo ' '

TFM_Appli_NonSecure.bin: $(EXECUTABLES)
	arm-none-eabi-objcopy  -O binary $(EXECUTABLES) "TFM_Appli_NonSecure.bin"
	@echo 'Finished building: $@'
	@echo ' '

# Other Targets
clean:
	-$(RM) *
	-@echo ' '

pre-build:
	arm-none-eabi-gcc -E -P -xc -DBL2 -DTFM_PSA_API -I../../../../Linker -o./output.ld  ../stm32l5xx_ns.ld
	-@echo ' '

post-build:
	arm-none-eabi-objcopy -O binary "TFM_Appli_NonSecure.elf" "TFM_Appli_NonSecure.bin"
	"../../postbuild.sh" "."  "1.0.0+0" "nonsecure"
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
