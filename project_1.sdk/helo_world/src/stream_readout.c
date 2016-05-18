/*
 * Copyright (c) 2007 Xilinx, Inc.  All rights reserved.
 *
 * Xilinx, Inc.
 * XILINX IS PROVIDING THIS DESIGN, CODE, OR INFORMATION "AS IS" AS A
 * COURTESY TO YOU.  BY PROVIDING THIS DESIGN, CODE, OR INFORMATION AS
 * ONE POSSIBLE   IMPLEMENTATION OF THIS FEATURE, APPLICATION OR
 * STANDARD, XILINX IS MAKING NO REPRESENTATION THAT THIS IMPLEMENTATION
 * IS FREE FROM ANY CLAIMS OF INFRINGEMENT, AND YOU ARE RESPONSIBLE
 * FOR OBTAINING ANY RIGHTS YOU MAY REQUIRE FOR YOUR IMPLEMENTATION.
 * XILINX EXPRESSLY DISCLAIMS ANY WARRANTY WHATSOEVER WITH RESPECT TO
 * THE ADEQUACY OF THE IMPLEMENTATION, INCLUDING BUT NOT LIMITED TO
 * ANY WARRANTIES OR REPRESENTATIONS THAT THIS IMPLEMENTATION IS FREE
 * FROM CLAIMS OF INFRINGEMENT, IMPLIED WARRANTIES OF MERCHANTABILITY
 * AND FITNESS FOR A PARTICULAR PURPOSE.
 *
 */

/* webserver.c: An example Webserver application using the RAW API
 *	This program serves web pages resident on Xilinx Memory File
 * System (MFS) using lwIP's RAW API. Use of RAW API implies that the
 * webserver is blazingly fast, but the design is not obvious since a
 * lot of the work happens in asynchronous callback functions.
 *
 * The webserver works as follows:
 *	- on every accepted connection, only 1 read is performed to
 * identify the file requested. Further reads are avoided by sending
 * a "Connection: close" in the HTTP response header, as well as setting
 * the callback function to NULL on that pcb
 *	- the read determines what file needs to be set (by parsing
 * "GET / HTTP/1.1" request
 *	- once the file to be sent is determined, tcp_write is called
 * in chunks of size tcp_sndbuf() until the whole file is sent
 *
 */

#include <stdio.h>
#include <string.h>

#include "lwip/err.h"
#include "lwip/tcp.h"

#include "webserver.h"
#ifndef __PPC__
#include "xil_printf.h"
#endif
//#include "xilmfs.h"
#include "trigger_logic_axi.h"
#include "real_time_clk_axi.h"
#include "rate_calc.h"

static unsigned stream_port = 8080;
static unsigned stream_server_running = 0;
static unsigned int read_back_id =0;
void platform_init_gpios();

int transfer_stream_data()
{
	return 0;
}
err_t stream_send_back_readout(struct tcp_pcb *tpcb)
{

	int offset=2;
	int tb[32];
	int i;
	int val=0;
	int csum=0;
	unsigned int time_h;
	unsigned int time_l;
	tb[0]=('R')|('S'<<8)|(' '<<16)| ('#'<<24);
	tb[1]=read_back_id;
	read_back_id++;
	for(i=0;i<=18;i++){ //fetch all readout data;
		val = trigger_logic_rdReg(TRIGGER_LOGIC_AXI_ADR,i);
		csum +=val;
		tb[offset] =val;
		offset++;
	}

	 get_time(&time_l,&time_h);
	 tb[offset] =time_h;
	csum +=time_h;
	offset++;
	tb[offset] = time_l;
	csum +=time_l;
	offset++;
	tb[offset] =csum;
	offset++;
	tb[offset] ='E';
	offset++;

	int buff_size =offset*sizeof(int);
	int err;
    if ((err = tcp_write(tpcb, tb, buff_size, 3)) != ERR_OK) {
    	//error righting
    		return -1;
    }
    return err;
}
err_t
stream_sent_callback(void *arg, struct tcp_pcb *tpcb, u16_t len)
{
	http_arg *a = (http_arg*)arg;


	if (tpcb->state > ESTABLISHED) {// close socket if weigdting to close it or error
		if (a) {
			pfree_arg(a);
			a = NULL;
		}
		tcp_close(tpcb);
        return ERR_OK;
	}

	return ERR_OK;
}

err_t
stream_recv_callback(void *arg, struct tcp_pcb *tpcb, struct pbuf *p, err_t err)
{


		/* do not read the packet if we are not in ESTABLISHED state */
		if (tpcb->state >= 5 && tpcb->state <= 8) {
			pbuf_free(p);
			return -1;
		} else if (tpcb->state > 8) {
			pbuf_free(p);
			return -1;
		}

		/* acknowledge that we've read the payload */
		tcp_recved(tpcb, p->len);

		/* send the readout bock and eave the socket open
		 */
		stream_send_back_readout(tpcb);
		/* free received packet */
		pbuf_free(p);

		return ERR_OK;
}


static err_t
stream_accept_callback(void *arg, struct tcp_pcb *newpcb, err_t err)
{
	/* keep a count of connection # */
	tcp_arg(newpcb, (void*)palloc_arg());

	tcp_recv(newpcb, stream_recv_callback);
	tcp_sent(newpcb, stream_sent_callback);

	return ERR_OK;
}

int
start_stream_application()
{
	struct tcp_pcb *pcb;
	err_t err;


	/* initialize devices */
	platform_init_gpios();

	/* create new TCP PCB structure */
	pcb = tcp_new();
	if (!pcb) {
		xil_printf("Error creating PCB. Out of Memory\r\n");
		return -1;
	}

	/* bind to http port 80 */
	err = tcp_bind(pcb, IP_ADDR_ANY, stream_port);
	if (err != ERR_OK) {
		xil_printf("Unable to bind to port 80: err = %d\r\n", err);
		return -2;
	}

	/* we do not need any arguments to the first callback */
	tcp_arg(pcb, NULL);

	/* listen for connections */
	pcb = tcp_listen(pcb);
	if (!pcb) {
		xil_printf("Out of memory while tcp_listen\r\n");
		return -3;
	}

	/* specify callback to use for incoming connections */
	tcp_accept(pcb, stream_accept_callback);

        stream_server_running = 1;

	return 0;
}

