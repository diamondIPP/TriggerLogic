/*
 * gpio_axi.h
 *
 *  Created on: Oct 12, 2015
 *      Author: moore.1424
 */

#ifndef GPIO_AXI_H_
#define GPIO_AXI_H_

#include "xil_io.h"

#define gpio_wrReg(AXI_ADR,S_ADR,VAL)	Xil_Out32(AXI_ADR+S_ADR*4,VAL)
#define gpio_rdReg(AXI_ADR,S_ADR)	 	Xil_In32(AXI_ADR+S_ADR*4)


#define	 GPIO1_DATA	0x00
#define	 GPIO1_TR	0x04
#define	 GPIO2_DATA	0x08
#define	 GPIO2_TR	0x0C
#define GPIO_AXI_ADR 0x40000000

#endif /* GPIO_AXI_H_ */
