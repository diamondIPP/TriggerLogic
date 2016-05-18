/*
 * pulser.c
 *
 *  Created on: Sep 9, 2015
 *      Author: moore.1424
 */
//#include  "pulse_gen_axi.h"
#include "trigger_logic_axi.h"

double set_frequ(double freq, int width)
{
	double n = 12532562.5000000 / freq ;
	/* clk frequency (125 MHz)
	 *  Hz is the pulse generator resoluton
	 */
	int n_int = (int) n;
	trigger_logic_wrReg(TRIGGER_LOGIC_AXI_ADR,TRIGGER_LOGIC_PULSER_DIVISOR,n_int);
	trigger_logic_wrReg(TRIGGER_LOGIC_AXI_ADR,TRIGGER_LOGIC_PULSER_DUTY,width);
	return 12532562.5000000 / n_int;
}
