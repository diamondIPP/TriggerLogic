/*
 * real_time_clk.c
 *
 *  Created on: Oct 7, 2015
 *      Author: moore.1424
 */

#include "real_time_clk_axi.h"
void set_time(unsigned int now_low,unsigned int now_high)
{
	real_time_clk_wrReg(REAL_TIME_AXI_ADR, REAL_TIME_CLK_L32W,now_low);
	real_time_clk_wrReg(REAL_TIME_AXI_ADR, REAL_TIME_CLK_H32W,now_high);
	real_time_clk_wrReg(REAL_TIME_AXI_ADR, REAL_TIME_CLK_LOAD, 1 );
	(void)0;
	(void)0;
	(void)0;
	real_time_clk_wrReg(REAL_TIME_AXI_ADR, REAL_TIME_CLK_LOAD, 0 );
}
void get_time(unsigned int *low, unsigned int *high)
{
	*high =  real_time_clk_rdReg(REAL_TIME_AXI_ADR, REAL_TIME_CLK_H32W);
	*low = real_time_clk_rdReg(REAL_TIME_AXI_ADR, REAL_TIME_CLK_L32W);
}
