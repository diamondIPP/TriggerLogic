/*
 * pulser.c
 *
 *  Created on: Sep 9, 2015
 *      Author: moore.1424
 */
#include  "trigger_logic_axi.h"
#define TRIGGER_LOGIC_AXI_ADR 0x44A10000
double set_frequ(double freq, double duty_cycle)
{
	double n = 401.042E6 /freq;
	int n_int = (int) n;
	int d = (int)(n * duty_cycle);
	trigger_logic_wrReg(TRIGGER_LOGIC_AXI_ADR,TRIGGER_LOGIC_PULSER_DIVISOR,n_int);
	trigger_logic_wrReg(TRIGGER_LOGIC_AXI_ADR,TRIGGER_LOGIC_PULSER_DUTY,d);
	if(freq>100e6 || freq< 0.093375 ) //out of range
		return -1;
	return 401.042E6 / n_int;
}

