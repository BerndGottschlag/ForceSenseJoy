/*
  Copyright 2017 Bernd Gottschlag

  Permission is hereby granted, free of charge, to any person obtaining a copy of
  this software and associated documentation files (the "Software"), to deal in
  the Software without restriction, including without limitation the rights to
  use, copy, modify, merge, publish, distribute, sublicense, and/or sell copies of
  the Software, and to permit persons to whom the Software is furnished to do so,
  subject to the following conditions:

  The above copyright notice and this permission notice shall be included in all
  copies or substantial portions of the Software.

  THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
  IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY, FITNESS
  FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE AUTHORS OR
  COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER LIABILITY, WHETHER
  IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM, OUT OF OR IN
  CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE SOFTWARE.
 */

#if 0
Pins for auxFunctions:
PF0:	LED indicating if max deflection is reached
PF1:	Switch for setting zero
#endif

#define MAXLEDPIN		PF0
#define CENTERSWITCHPIN		PF1
#define CENTERITERATIONS	50

#include <avr/io.h>
#include <util/delay.h>
#include <stdint.h>

#include "commSPI.h"

void setupAuxFunctions(void)
{
	DDRF &=~(1<<CENTERSWITCHPIN);
	DDRF |= (1<<MAXLEDPIN);
}


void indicateMax(int16_t deflectionX, int16_t deflectionY)
{
	if ((deflectionX <= -2000)||(deflectionX >= 2000)||(deflectionY <= -2000)||(deflectionY >= 2000))
		PORTF |= (1<<MAXLEDPIN);
	else
		PORTF &=~ (1<<MAXLEDPIN);

}


void centerAxes(int16_t* offsetX, int16_t* offsetY)
{
	int16_t displacementSumX = 0;
	int16_t displacementSumY = 0;
	uint8_t i;
	
	_delay_ms(1000);
	PORTF |= (1<<MAXLEDPIN);
	for (i = 0; i < CENTERITERATIONS; i++)
	{
		displacementSumX += readData(0);
		displacementSumY += readData(1);
		_delay_ms(10);
	}
	*offsetX = displacementSumX/CENTERITERATIONS;
	*offsetY = displacementSumY/CENTERITERATIONS;

	_delay_ms(100);
	PORTF &=~ (1<<MAXLEDPIN);
}
