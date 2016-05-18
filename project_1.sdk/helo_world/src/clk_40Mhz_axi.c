/*
 * real_time_clk.c
 *
 *  Created on: Oct 7, 2015
 *      Author: moore.1424
 */

#include "clk_40Mhz_axi.h"
void set_40MHz_phases(unsigned int phases)
{/*phases are packed as two 4bit nibles in one 32bit word */
	clk_40Mhz_wrReg(CLK_40MHZ_AXI_ADR, CLK_40MHZ_PHASES,phases);
}
int get_40MHz_phases()
{/*phases are packed as two 4bit nibles in one 32bit word */
	return clk_40Mhz_rdReg(CLK_40MHZ_AXI_ADR, CLK_40MHZ_PHASES);
}
