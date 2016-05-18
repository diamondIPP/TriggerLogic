/*
 * http_get_pars.h
 *
 *  Created on: Sep 3, 2015
 *      Author: moore.1424
 */

#ifndef HTTP_GET_PARS_H_
#define HTTP_GET_PARS_H_

int pars(char *commands[],char *vars[], char *str);
int http_get_pars( char* str,unsigned char *ret_buff,unsigned int *buff_size );
#endif /* HTTP_GET_PARS_H_ */
