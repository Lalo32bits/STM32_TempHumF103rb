################################################################################
# Automatically-generated file. Do not edit!
# Toolchain: GNU Tools for STM32 (12.3.rel1)
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../Core/DHT/dht11.c 

OBJS += \
./Core/DHT/dht11.o 

C_DEPS += \
./Core/DHT/dht11.d 


# Each subdirectory must supply rules for building sources it contributes
Core/DHT/%.o Core/DHT/%.su Core/DHT/%.cyclo: ../Core/DHT/%.c Core/DHT/subdir.mk
	arm-none-eabi-gcc "$<" -mcpu=cortex-m3 -std=gnu11 -g3 -DDEBUG -DUSE_HAL_DRIVER -DSTM32F103xB -c -I../Core/Inc -I../Drivers/STM32F1xx_HAL_Driver/Inc -I../Drivers/STM32F1xx_HAL_Driver/Inc/Legacy -I../Drivers/CMSIS/Device/ST/STM32F1xx/Include -I../Drivers/CMSIS/Include -I"E:/Eduardo/STM32/Temp_Hum_uartF103rb/Core/DHT" -O0 -ffunction-sections -fdata-sections -Wall -fstack-usage -fcyclomatic-complexity -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" --specs=nano.specs -mfloat-abi=soft -mthumb -o "$@"

clean: clean-Core-2f-DHT

clean-Core-2f-DHT:
	-$(RM) ./Core/DHT/dht11.cyclo ./Core/DHT/dht11.d ./Core/DHT/dht11.o ./Core/DHT/dht11.su

.PHONY: clean-Core-2f-DHT

