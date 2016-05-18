#ifndef CLK_40_MHZ_AXI_H
#define CLK_40_MHZ_AXI_H
#include "xil_io.h"

#define clk_40Mhz_wrReg(AXI_ADR,S_ADR,VAL)	Xil_Out32(AXI_ADR+S_ADR*4,VAL)
#define clk_40Mhz_rdReg(AXI_ADR,S_ADR)	 	Xil_In32(AXI_ADR+S_ADR*4)


#define CLK_40MHZ_PHASES	0

#define CLK_40MHZ_AXI_ADR 0x44A30000
void set_40MHz_phases(unsigned int phases);
int get_40MHz_phases();
#endif
