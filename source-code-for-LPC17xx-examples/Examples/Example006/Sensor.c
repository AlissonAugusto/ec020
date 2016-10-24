/*
 * Sensor.c
 *
 *  Created on: 26/09/2016
 *      Author: Alisson
 */

#include "lpc17xx_pinsel.h"
#include "lpc17xx_gpio.h"
#include "lpc17xx_i2c.h"
#include "lpc17xx_ssp.h"

typedef struct tag_sensor
{
	int sensor_data;
}ttag_sensor;

ttag_sensor ClassHandle;

void Sensor_new(void)
{
    light_enable();
}

void Sensor_light_read(void)
{
	ClassHandle.sensor_data = light_read();
}

int Sensor_read(void)
{
	return ClassHandle.sensor_data;
}
