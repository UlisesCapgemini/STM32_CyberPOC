################################################################################
# Automatically-generated file. Do not edit!
################################################################################

-include ../makefile.init

RM := rm -rf

# All of the sources participating in the build are defined here
-include sources.mk
-include Middlewares/trustedfirmware/core/subdir.mk
-include Middlewares/mbed-crypto/subdir.mk
-include Drivers/STM32L5xx_HAL_Driver/subdir.mk
-include Application/User/Startup/subdir.mk
-include Application/User/Src/subdir.mk
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

BUILD_ARTIFACT_NAME := TFM_Appli_Secure
BUILD_ARTIFACT_EXTENSION := elf
BUILD_ARTIFACT_PREFIX := 
BUILD_ARTIFACT := $(BUILD_ARTIFACT_PREFIX)$(BUILD_ARTIFACT_NAME).$(BUILD_ARTIFACT_EXTENSION)

# Add inputs and outputs from these tool invocations to the build variables 
EXECUTABLES += \
TFM_Appli_Secure.elf \

SIZE_OUTPUT += \
default.size.stdout \

OBJDUMP_LIST += \
TFM_Appli_Secure.list \

OBJCOPY_BIN += \
TFM_Appli_Secure.bin \


# All Target
all:
	+@$(MAKE) --no-print-directory pre-build && $(MAKE) --no-print-directory main-build && $(MAKE) --no-print-directory post-build

# Main-build Target
main-build: TFM_Appli_Secure.elf secondary-outputs

# Tool invocations
TFM_Appli_Secure.elf: $(OBJS) $(USER_OBJS) ./output.ld
	arm-none-eabi-gcc -o "TFM_Appli_Secure.elf" @"objects.list" $(USER_OBJS) $(LIBS) -mcpu=cortex-m33 -T"./output.ld" --specs=nosys.specs -Wl,-Map="TFM_Appli_Secure.map" -Wl,--gc-sections -static -Wl,--cmse-implib -Wl,--out-implib=./s_veneers.o -Xlinker -check-sections -Xlinker -fatal-warnings --entry=Reset_Handler -Wl,--no-wchar-size-warning,--print-memory-usage -Xlinker --entry=Reset_Handler --specs=nano.specs -mfloat-abi=soft -mthumb -u _printf_float -Wl,--start-group -lc -lm -Wl,--end-group
	@echo 'Finished building target: $@'
	@echo ' '

default.size.stdout: $(EXECUTABLES)
	arm-none-eabi-size  $(EXECUTABLES)
	@echo 'Finished building: $@'
	@echo ' '

TFM_Appli_Secure.list: $(EXECUTABLES)
	arm-none-eabi-objdump -h -S $(EXECUTABLES) > "TFM_Appli_Secure.list"
	@echo 'Finished building: $@'
	@echo ' '

TFM_Appli_Secure.bin: $(EXECUTABLES)
	arm-none-eabi-objcopy  -O binary $(EXECUTABLES) "TFM_Appli_Secure.bin"
	@echo 'Finished building: $@'
	@echo ' '

# Other Targets
clean:
	-$(RM) *
	-@echo ' '

pre-build:
	arm-none-eabi-gcc -E -P -xc -DBL2 -DTFM_PSA_API  -I../../../../Linker -o./output.ld  ../tfm_common_s.ld
	-@echo ' '

post-build:
	arm-none-eabi-objcopy -O binary "TFM_Appli_Secure.elf" "TFM_Appli_Secure.bin"
	"../../postbuild.sh" "."  "1.0.0+0" "secure"
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
