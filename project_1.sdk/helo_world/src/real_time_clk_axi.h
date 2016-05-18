#ifndef REAL_TIME_CLK_AXI_H
#define REAL_TIME_CLK_AXI_H
#include "xil_io.h"

#define real_time_clk_wrReg(AXI_ADR,S_ADR,VAL)	Xil_Out32(AXI_ADR+S_ADR*4,VAL)
#define real_time_clk_rdReg(AXI_ADR,S_ADR)	 	Xil_In32(AXI_ADR+S_ADR*4)


#define REAL_TIME_CLK_L32W	0
#define	REAL_TIME_CLK_H32W	1
#define	REAL_TIME_CLK_LOAD	2

#define REAL_TIME_AXI_ADR 0x44A10000
void set_time(unsigned int now_low, unsigned int now_high);
void get_time(unsigned int *low,unsigned int *high);
#endif
