#ifndef PULSE_GEN_LOGIC_H
#define PULSE_GEN_LOGIC_H
#include "xil_io.h"
#define pulser_wrReg(AXI_ADR,S_ADR,VAL)	 Xil_Out32(AXI_ADR+S_ADR*4,VAL)

#define pulser_rdReg(AXI_ADR,S_ADR)	 Xil_In32(AXI_ADR+S_ADR*4)


#define PULSER_DIVISOR	0
#define	PULSER_DUTY	4

#define PULSER_AXI_ADR 0x44A10000
#endif
