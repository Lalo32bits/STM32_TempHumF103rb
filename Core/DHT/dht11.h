/**
 *  @file dht11.h
 *	@brief DHT11 Library
 *  @date Created on: Feb 19, 2025
 *  @author Author: Lalo32bits
 *	@version 1.0.0
 */


#ifndef DHT11_H_
#define DHT11_H_

#include "stm32f1xx.h"
#include "main.h"
#include "stm32f1xx_hal_gpio.h"

#define OUTPUT 1
#define INPUT 0

struct _dht11_t{
	GPIO_TypeDef* port;
	uint16_t pin;
	TIM_HandleTypeDef *htim;
	uint8_t temperature;
	uint8_t humidty;
};
typedef struct _dht11_t dht11_t;


void init_dht11(dht11_t *dht, TIM_HandleTypeDef *htim, GPIO_TypeDef* port, uint16_t pin);
void set_dht11_gpio_mode(dht11_t *dht, uint8_t pMode);
uint8_t readDHT11(dht11_t *dht);

#endif
