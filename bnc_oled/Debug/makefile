################################################################################
# Automatically-generated file. Do not edit!
################################################################################

-include ../makefile.init

RM := rm -rf

# All of the sources participating in the build are defined here
-include sources.mk
-include src/subdir.mk
-include subdir.mk
-include objects.mk

ifneq ($(MAKECMDGOALS),clean)
ifneq ($(strip $(C_DEPS)),)
-include $(C_DEPS)
endif
endif

-include ../makefile.defs

# Add inputs and outputs from these tool invocations to the build variables 

# All Target
all: bnc_oled.axf

# Tool invocations
bnc_oled.axf: $(OBJS) $(USER_OBJS)
	@echo 'Building target: $@'
	@echo 'Invoking: MCU Linker'
	arm-none-eabi-gcc -nostdlib -L"C:\Users\aliss\Desktop\lpc1768_xpr_bb_110111\Lib_CMSISv1p30_LPC17xx\Debug" -L"C:\Users\aliss\Desktop\lpc1768_xpr_bb_110111\Lib_EaBaseBoard\Debug" -L"C:\Users\aliss\Desktop\lpc1768_xpr_bb_110111\Lib_MCU\Debug" -Xlinker --gc-sections -Xlinker -Map=bnc_oled.map -mcpu=cortex-m3 -mthumb -T "bnc_oled_Debug.ld" -o "bnc_oled.axf" $(OBJS) $(USER_OBJS) $(LIBS)
	@echo 'Finished building target: $@'
	@echo ' '
	$(MAKE) --no-print-directory post-build

# Other Targets
clean:
	-$(RM) $(OBJS)$(C_DEPS)$(EXECUTABLES) bnc_oled.axf
	-@echo ' '

post-build:
	-@echo 'Performing post-build steps'
	-arm-none-eabi-size bnc_oled.axf; # arm-none-eabi-objdump -h -S bnc_oled.axf >bnc_oled.lss
	-@echo ' '

.PHONY: all clean dependents
.SECONDARY: post-build

-include ../makefile.targets
