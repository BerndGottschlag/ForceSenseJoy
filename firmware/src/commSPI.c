#if 0
Pinbelegung für SPI:		Pinout Leonardo 
SCK:		PB1		header
MOSI:		PB2		header
MISO:		PB3		header
SSA:		PB6		8
SSB:		PB7		9

#endif

#include <avr/io.h>
#include <util/delay.h>
#include <stdint.h>

// Portpin-Definitionen:
#define SCK		PB1
#define MOSI		PB2
#define MISO		PB3
#define SSA		PB6
#define SSB		PB7
#define latch		PF7	// for shift-in
#define CLKShift	PF5	// for shift-in
#define DataShift	PF6	// for shift-in
//#define LED		PB1	// LED für Debugging


void spiMasterInit(void)
{
	/* Set MOSI, SCK, SSA and SSB output, all others input */
	DDRB |= (1<<MOSI)|(1<<SCK)|(1<<SSA)|(1<<SSB);
	// Set MISO input
	DDRB &= ~(1<<MISO);
	/* Enable SPI, Master, set clock rate fck/2 */
	SPCR |= (1<<SPE)|(1<<MSTR)|(1<<SPI2X);
	//SPCR |= (1<<SPE)|(1<<MSTR)|(1<<SPR0);
	SPCR |= (1<<CPHA);		// Setup SPI for Mode 1

	// set SSA and SSB high (Transmission is initiated by pulling CS low)
	PORTB |= (1<<SSA)|(1<<SSB);

	// set latch-pin and clock-pin for shift-registers as output
	DDRF |= (1<<latch)|(1<<CLKShift);
	
	PORTF |= (1<<CLKShift);
	// set DataShift as input
	DDRF &= ~(1<<DataShift);
}



void spiMasterTransmit(char cData)
{
	/* Start transmission */
	SPDR = cData;
	/* Wait for transmission complete */
	while (!(SPSR & (1<<SPIF)));
}

uint8_t spiMasterReceive(void)
{
	SPDR = 0xff;				// writing to the SPDR makes transmitting before receiving unnessessary
	/* Wait for reception complete */
	while(!(SPSR & (1<<SPIF)));
	/* Return Data Register */
	return SPDR;
}

char spiMasterTranceive(char data)
{
	SPDR = data;			// transmit data
	while (!(SPSR & (1<<SPIF)));	// wait for end of transmission
	return SPDR;			// return received data
}

static void write_com(uint8_t data)
{
	spiMasterTransmit(data);				
}

void write_data(uint8_t data)
{
	spiMasterTransmit(data); 				
}

int16_t readData(uint8_t adcNo)
{
	uint8_t dataReceivedTemp;
	int16_t dataReceived;
	// set CS
	if (adcNo == 0)
	{
		PORTB &= ~(1<<SSA);
	}
	else
	{
		PORTB &= ~(1<<SSB);
	}
	dataReceivedTemp = spiMasterReceive();
	// Set unknown bits in front of NULL-bit to 0
	dataReceivedTemp &= ~(1<<6);
	dataReceivedTemp &= ~(1<<7);
	// Set Bit for sign and Delete the 13-bit sign if negative
	if ((dataReceivedTemp & (1<<4)) != 0)
	{
		// Set bits left of the old sign-bit to 1 to enlarge to 8 bits
		dataReceivedTemp |= (1<<5);
		dataReceivedTemp |= (1<<6);
		dataReceivedTemp |= (1<<7);
	}
	dataReceived = (dataReceivedTemp << 8);
	dataReceivedTemp = spiMasterReceive();
	dataReceived |= dataReceivedTemp;
	//dataReceived = (dataReceived << 3);
	// reset CS
	PORTB |= (1<<SSA)|(1<<SSB);
	return dataReceived;
}


uint8_t Bit_Reverse( uint8_t x ) 
{ 
	x = ((x >> 1) & 0x55) | ((x << 1) & 0xaa); 
	x = ((x >> 2) & 0x33) | ((x << 2) & 0xcc); 
	x = ((x >> 4) & 0x0f) | ((x << 4) & 0xf0); 
	return x;    
}

uint8_t shiftIn(void)
{	
	int8_t i;
	uint8_t dataIn = 0;

	for (i = 7; i >= 0; i--)
	{
		PORTF &= ~(1<<CLKShift);
		if(PINF & (1<<DataShift))
		{
			dataIn |= (1<<i);
		}
		else dataIn &= ~(1<<i);
		PORTF |= (1<<CLKShift);
	}
	dataIn = ~dataIn;
	return dataIn;
}

void readButtons(uint8_t* buttonState1, uint8_t* buttonState2, uint8_t* buttonState3)
{	
	int8_t buttonStateNonFlipped = 0;
	// latch data shift registers
	PORTF |= (1<<latch);
	_delay_ms(1);			//TODO: make smaller if possible
	PORTF &= ~(1<<latch);

	*buttonState1 = shiftIn();
	*buttonState2 = shiftIn();
	*buttonState3 = shiftIn();
	
	/* Flip all bytes */
	buttonStateNonFlipped = *buttonState1;
	*buttonState1 = Bit_Reverse(buttonStateNonFlipped);
	buttonStateNonFlipped = *buttonState2;
	*buttonState2 = Bit_Reverse(buttonStateNonFlipped);
	buttonStateNonFlipped = *buttonState3;
	*buttonState3 = Bit_Reverse(buttonStateNonFlipped);
	
	// Button 1 and 2 (bit 1 and 2 of buttonState1, starting with lsb) as is are not used, so after the first bit everything must be shifted left two places 
	if ((*buttonState1 & (1<<0)) != 0)
		*buttonState1 |= (1<<2);
	*buttonState1 = (*buttonState1 >> 2);
	if ((*buttonState2 & (1<<0)) != 0)
		*buttonState1 |= (1<<6);
	if ((*buttonState2 & (1<<1)) != 0)
		*buttonState1 |= (1<<7);
	*buttonState2 = (*buttonState2 >> 2);
	if ((*buttonState3 & (1<<0)) != 0)
		*buttonState2 |= (1<<6);
	if ((*buttonState3 & (1<<1)) != 0)
		*buttonState2 |= (1<<7);
	*buttonState3 = (*buttonState3 >> 2);
	
} 


void NOP(void)
{
	write_com(0x00);
}


