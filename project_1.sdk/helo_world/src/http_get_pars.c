#include <stdio.h>
#include <string.h>
#include <stdlib.h>
#include "http_get_pars.h"
//#include "axi_adder.h"
#include "xil_types.h"
#include "xstatus.h"
#include "trigger_logic_axi.h"
#include "real_time_clk_axi.h"
#include "clk_40Mhz_axi.h"
#include "pulser.h"
//#define ADDER_ADR 0x44A00000
#define TRIGGER_LOGIC_AXI_ADR 0x44A00000

int http_get_pars( char* str,unsigned char *ret_buff, unsigned int *buff_size )
{

	char *commands[32];
	char *vars[32];
	int i,j,w;
	double freq = -1;
	unsigned int time_h=0;
	unsigned int time_l=0;
//	double duty = 0.5;
	int offset=0;
	int tb[32];
    j = pars(commands,vars,str);
    *buff_size =0; //some commands return no data so return 0
	for(i=0;i<=j;i++){
	 
	    if(vars[i] == NULL){
//	        printf("command = '%s'\tno value given\n", commands[i] );
	    }else{
		int id;
		unsigned int val;
		int csum = 0;
		switch(*(commands[i]))
		{
		//adder test commanfreqds&
			case 'a': //set trigger logic delays
				// format is an=#
				id = atoi(commands[i]+1);
				val = atoi(vars[i]);
				if(id>=0 &&id <10)
					trigger_logic_wrReg(TRIGGER_LOGIC_AXI_ADR,TRIGGER_LOGIC_DELAY_0+id,val);
//				trigger_logic_wrReg(TRIGGER_LOGIC_AXI_ADR,TRIGGER_LOGIC_DELAY_0+4*id,val);
//				printf("id %d \tval = %d\n", id, val);
			break;
			case 'c':// clear all counters counts - reset

				trigger_logic_wrReg(TRIGGER_LOGIC_AXI_ADR,TRIGGER_LOGIC_DELAY_RESET,15);//15 is temp cluge was reading bit 1 not 0 in fpga
				(void)0;
				(void)0;
				trigger_logic_wrReg(TRIGGER_LOGIC_AXI_ADR,TRIGGER_LOGIC_DELAY_RESET,0);
			break;

			case 'e':// COIN_EnABLE
				val = atoi(vars[i]);
				trigger_logic_wrReg(TRIGGER_LOGIC_AXI_ADR,TRIGGER_LOGIC_COIN_ENABLE,val);
			break;
			case 'f':// PRESCALER_ADR
				val = atoi(vars[i]);
				trigger_logic_wrReg(TRIGGER_LOGIC_AXI_ADR,TRIGGER_LOGIC_PRESCALER_ADR,val);
			break;
			case 'g':// PRESCALER_DELAY
				val = atoi(vars[i]);
				trigger_logic_wrReg(TRIGGER_LOGIC_AXI_ADR,TRIGGER_LOGIC_PRESCALER_DELAY,val);
			break;
			case 'h':// PULSER_DIVISOR
				val = atoi(vars[i]);
				trigger_logic_wrReg(TRIGGER_LOGIC_AXI_ADR,TRIGGER_LOGIC_PULSER_DIVISOR,val);

			    sprintf((char*)ret_buff,"OK val '%d'",val);
			    *buff_size = strlen((char*)ret_buff);
			break;
			case 'i':// PULSER_DUTY
				val = atoi(vars[i]);
				trigger_logic_wrReg(TRIGGER_LOGIC_AXI_ADR,TRIGGER_LOGIC_PULSER_DUTY,val);

			break;
			case 'j':// PULSER_DELAY
				val = atoi(vars[i]);
				trigger_logic_wrReg(TRIGGER_LOGIC_AXI_ADR,TRIGGER_LOGIC_PULSER_DELAY,val);
			break;
			case 'k':// LOGIC_ENABLES
				val = atoi(vars[i]);
				trigger_logic_wrReg(TRIGGER_LOGIC_AXI_ADR,TRIGGER_LOGIC_ENABLES,val);
			break;
			case 'l':// HANDSHAKE_MASK
				val = atoi(vars[i]);
				trigger_logic_wrReg(TRIGGER_LOGIC_AXI_ADR,TRIGGER_LOGIC_HANDSHAKE_MASK,val);
			break;
			case 'm':// HANDSHAKE_DELAY
				val = atoi(vars[i]);
				trigger_logic_wrReg(TRIGGER_LOGIC_AXI_ADR,TRIGGER_LOGIC_HANDSHAKE_DELAY,val);
			break;
/*			case 'n':// HANDSHAKE_DELAY_MULT
				val = atoi(vars[i]);val = atoi(vars[i]);
				trigger_logic_wrReg(TRIGGER_LOGIC_AXI_ADR,TRIGGER_LOGIC_HANDSHAKE_DELAY_MULT,val);
			break;
*/
			case 'o':// set pulser freq takes o & p save f for when p is detected
				freq = strtod(vars[i],NULL);
			break;
			case 'p':// set pulser freq takes o & p p is now the pulse width
				w = atoi(vars[i]);
				freq = set_frequ(freq, w);
				sprintf((char*)ret_buff,"OK o ea freq %f, width %d",freq,w);
				*buff_size = strlen((char*)ret_buff);
/*				duty = strtod(vars[i],NULL);
				freq = set_frequ(freq, duty);
			    sprintf((char*)ret_buff,"OK o ea freq %f, duty %f",freq,duty);
			    *buff_size = strlen((char*)ret_buff);
			    */
			break;
			case 'q':// TRIGGER_LOGIC_COIN_EDGE_HOLD
				val = atoi(vars[i]);
				trigger_logic_wrReg(TRIGGER_LOGIC_AXI_ADR,TRIGGER_LOGIC_COIN_EDGE_HOLD,val);
			break;
			case 'r'://
				val = atoi(vars[i]);
				trigger_logic_wrReg(TRIGGER_LOGIC_AXI_ADR,TRIGGER_LOGIC_COIN_PULSE_WIDTH,val);
			break;
			case 's':// set real time clock high word
				time_h = atoi(vars[i]);
			case 't':// set real time clock low word and latch it in to the counter
				time_l = atoi(vars[i]);
				set_time(time_l,time_h);
			break;
			case 'u':// set 40Mhz clock phases clk 1 = 3 down to 0 , clk 2 = 7 down to 4
				val = atoi(vars[i]);
				set_40MHz_phases(val);
			break;
			case 'v':// set output delays 1 = 11 down to 0 , delay 2 = 23 down to 12
				val = atoi(vars[i]);
				trigger_logic_wrReg(TRIGGER_LOGIC_AXI_ADR,TRIGGER_LOGIC_OUTPUT_DELAYS_12,val);
			break;
			case 'w':// set output delays 3 = 11 down to 0
				val = atoi(vars[i]);
				trigger_logic_wrReg(TRIGGER_LOGIC_AXI_ADR,TRIGGER_LOGIC_OUTPUT_DELAYS_3,val);
			break;
			//end wright
			//start read
/*			case 'B'://command echo for debug
				tmpf = mfs_file_open(fname, MFS_MODE_WRITE);
						id = atoi(commands[k]+1);
						val = atoi(vars[k]);

				//fornow just echo back the id and vals
				for(k=0;k<=j;k++){
					id = atoi(commands[k]+1);
					val = atoi(vars[k]);

				    mfs_file_write(tmpf, commands[k], strlen(commands[k]));
				    mfs_file_write(tmpf,":", 1);
				    mfs_file_write(tmpf, vars[k], strlen(vars[k]));
				    mfs_file_write(tmpf,",", 1);
				}
				mfs_dir_close(tmpf);
				break; */
			case 'E': //enable readback for debug puposes
				val = trigger_logic_rdReg(TRIGGER_LOGIC_AXI_ADR,TRIGGER_LOGIC_EN_READBACK);

			    memcpy(ret_buff,&val,sizeof(int));
			    *buff_size = sizeof(int);
				break;


			
			case 'R': //read back all registers
				for(i=0;i<=18;i++){ //read back all counters
					val = trigger_logic_rdReg(TRIGGER_LOGIC_AXI_ADR,i);
					csum +=val;
					tb[offset] =val;
					offset++;
				}
				tb[offset] =csum;
				offset++;

				*buff_size =offset*sizeof(int);
			    memcpy(ret_buff,tb,*buff_size);
			    break;
			case 'T': //read back Time
				get_time(&time_l,&time_h);
				sprintf((char*)ret_buff,"time  H: %u L:%u",time_h,time_l);
				*buff_size = strlen((char*)ret_buff);
				break;
			case 'U': //read phase shift register debugging
				val = get_40MHz_phases();
				sprintf((char*)ret_buff,"Phase Reg : %d ",val);
				*buff_size = strlen((char*)ret_buff);
				break;
		}
//		printf("command = '%s'\tvalue = '%s'\n", commands[i] , vars[i]);
	    }
	}
//	if(j==-1)
//	  printf("no commands \n");
	return 0;
}

int pars(char *commands[],char *vars[], char *str)
{
	int i;
	int len= strlen(str);
	int state =0;
        int j = -1;	
	for(i=0;((i<len) & (j <= 31)) ;i++){
	   switch(state)
	   {
		case 0: //start
		   if(*(str+i) == '?')
		   {
			state = 1;
			*(str+i) ='\0';
		   }
		   break;
		case 1:
		   j++;
		   if(j==32) break; // wo have tomany commands areday 
		   commands[j] = str+i;
		   vars[j] = NULL;
		   state = 2;
		   break;
                case 2: //wait for the val (=)or & signaling a command
		   if(*(str+i) == '=')
		   {
			state =3;
			*(str+i) ='\0';
			break;
		   }
		   if(*(str+i) == '&')
		   {
			state =1;
			*(str+i) ='\0';
			break;
		   }
		   break;
		case 3: //have a val to dealwih
		   vars[j] =str+i;
		   if(*(str+i) == '&') //no walue given so null char will be 
				      // converted to a 0 by atoi
		   {
			state =1;
			*(str+i) ='\0';
			break;
		   }
		   state = 4;
		   break;
		case 4: //weihgt for nex command
		   if(*(str+i) == '&')
		   {
			state =1;
			*(str+i) ='\0';
		   }
		   break;
	   }
//	   printf("i %d cur prt '%s'\n",i,(str+i));
        }
	return j;
}
