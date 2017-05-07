#include <util/delay.h>
#include <avr/io.h>
#include "commI2C.h"		


#define START			0x08
#define RE_START		0x10
#define MT_SLA_ACK		0x18
#define MT_SLA_NOACK 		0x20
#define MT_DATA_ACK		0x28
#define MT_DATA_NOACK		0x30
#define MR_SLA_ACK		0x40
#define MR_SLA_NOACK		0x48
#define MR_DATA_ACK		0x50
#define MR_DATA_NOACK		0x58	
	                            
#define RD_DEVICE_ADDR  	0x2B   
#define WD_DEVICE_ADDR  	0x2A





unsigned char I2C_Write(unsigned char Wdata)
{
	TWCR=(1<<TWINT)|(1<<TWSTA)|(1<<TWEN);	// Send START condition
	  
	while(!(TWCR & (1<<TWINT)));		// Wait for TWINT Flag set. This indicates that the START condition has been transmitted
	if((TWSR & 0xf8)!=START) 		// Check value of TWI Status Register. Mask prescaler bits. 
		return 0;			// If status different from START go to ERROR
	TWDR=(WD_DEVICE_ADDR);			// Load SLA_W into TWDR Register. Clear 
	TWCR=(1<<TWINT)|(1<<TWEN);		// TWINT bit in TWCR to start transmission of address
	while(!(TWCR & (1<<TWINT)));		// Wait for TWINT Flag set. This indicates that the SLA+W has been transmitted, and ACK/NACK has been received.
	if((TWSR & 0xf8)!=MT_SLA_ACK) 		// Check value of TWI Status Register. Mask prescaler bits. 
		return 0;			// If status different from MT_SLA_ACK go to ERROR
	TWDR=(Wdata);				// Load DATA into TWDR Register. 		
	TWCR=(1<<TWINT)|(1<<TWEN);		// Clear TWINT bit in TWCR to start transmission of address
	while(!(TWCR&(1<<TWINT)));		// Wait for TWINT Flag set. This indicates that the DATA has been transmitted, and ACK/NACK has been received.
	if((TWSR & 0xf8)!=MT_DATA_ACK) 		// Check value of TWI Status Register. Mask prescaler bits. 	
	  	return 0;			// If status different from MT_DATA_ACK go to ERROR
	TWCR=(1<<TWINT)|(1<<TWSTO)|(1<<TWEN);	// Transmit STOP condition
	_delay_ms(10);
	return 1;
}

unsigned char I2C_Read(void)
{
	unsigned char temp;

	TWCR=(1<<TWINT)|(1<<TWSTA)|(1<<TWEN);
	while(!(TWCR&(1<<TWINT)));
	if ((TWSR&0xf8)!=START)  
	  	return 0;
	TWDR=(RD_DEVICE_ADDR);
	TWCR=(1<<TWINT)|(1<<TWEN);
	while(!(TWCR&(1<<TWINT)));
	if((TWSR&0xf8)!=MR_SLA_ACK)  
	   	return 0;
	(TWCR=(1<<TWINT)|(1<<TWEN));
	while(!(TWCR&(1<<TWINT)));
	if((TWSR&0xf8)!=MR_DATA_NOACK) 
	   	 return 0;						
	temp=TWDR;
	//temp = 0x10;
	TWCR=(1<<TWINT)|(1<<TWSTO)|(1<<TWEN);
	_delay_ms(10);

	return temp;

}
