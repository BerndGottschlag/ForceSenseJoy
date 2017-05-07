#ifndef displayControl_h_included
#define displayControl_h_included
int16_t readData(uint8_t adcNo);
void spiMasterInit(void);
void readButtons(uint8_t* buttonState1, uint8_t* buttonState2, uint8_t* buttonState3);
#endif
