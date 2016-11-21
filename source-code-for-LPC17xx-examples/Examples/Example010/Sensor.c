/*
 * Sensor.c
 *
 *  Created on: 26/09/2016
 *      Author: Alisson
 */

#include "lpc17xx_pinsel.h"
#include "lpc17xx_gpio.h"
#include "lpc17xx_i2c.h"

typedef struct tag_sensor
{
	int sensor_data;
}ttag_sensor;

ttag_sensor ClassHandle;

static void init_i2c(void)
{
	PINSEL_CFG_Type PinCfg;

	/* Initialize I2C2 pin connect */
	PinCfg.Funcnum = 2;
	PinCfg.Pinnum = 10;
	PinCfg.Portnum = 0;
	PINSEL_ConfigPin(&PinCfg);
	PinCfg.Pinnum = 11;
	PINSEL_ConfigPin(&PinCfg);

	// Initialize I2C peripheral
	I2C_Init(LPC_I2C2, 100000);

	/* Enable I2C1 operation */
	I2C_Cmd(LPC_I2C2, ENABLE);
}

void Sensor_new(void)
{
	init_i2c();
    light_enable();
}

int Sensor_read(void)
{
	ClassHandle.sensor_data = light_read();
	return ClassHandle.sensor_data;
}
