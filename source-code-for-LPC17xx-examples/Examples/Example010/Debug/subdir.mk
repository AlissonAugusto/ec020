################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../Oled_screen.c \
../Sensor.c \
../cr_startup_lpc17.c \
../main.c 

OBJS += \
./Oled_screen.o \
./Sensor.o \
./cr_startup_lpc17.o \
./main.o 

C_DEPS += \
./Oled_screen.d \
./Sensor.d \
./cr_startup_lpc17.d \
./main.d 


# Each subdirectory must supply rules for building sources it contributes
%.o: ../%.c
	@echo 'Building file: $<'
	@echo 'Invoking: MCU C Compiler'
	arm-none-eabi-gcc -DDEBUG -D__USE_CMSIS=CMSISv1p30_LPC17xx -D__CODE_RED -D__REDLIB__ -I"C:\Users\aluno\Desktop\ec020-free_rtos\source-code-for-LPC17xx-examples\FreeRTOS_Source\demo_code" -I"C:\Users\aluno\Desktop\ec020-free_rtos\source-code-for-LPC17xx-examples\CMSISv1p30_LPC17xx\inc" -I"C:\Users\aluno\Desktop\ec020-free_rtos\source-code-for-LPC17xx-examples\FreeRTOS_Source\include" -I"C:\Users\aluno\Desktop\ec020-free_rtos\source-code-for-LPC17xx-examples\FreeRTOS_Source\portable" -I"C:\Users\aluno\Desktop\ec020-free_rtos\Lib_CMSISv1p30_LPC17xx\inc" -I"C:\Users\aluno\Desktop\ec020-free_rtos\Lib_EaBaseBoard\inc" -I"C:\Users\aluno\Desktop\ec020-free_rtos\Lib_MCU\inc" -O0 -g3 -fsigned-char -c -fmessage-length=0 -fno-builtin -ffunction-sections -mcpu=cortex-m3 -mthumb -MMD -MP -MF"$(@:%.o=%.d)" -MT"$(@:%.o=%.d)" -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '


