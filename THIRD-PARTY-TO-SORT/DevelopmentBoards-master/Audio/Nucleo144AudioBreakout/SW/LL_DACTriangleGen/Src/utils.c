/*
 * utils.c
 *
 *  Created on: Apr 20, 2019
 *      Author: chris
 */

#include "utils.h"
#include "stm32f7xx.h"

int _write(int file, char *ptr, int len)
{

  int i=0;
  for(i=0 ; i<len ; i++)
    ITM_SendChar((*ptr++));
  return len;
}

