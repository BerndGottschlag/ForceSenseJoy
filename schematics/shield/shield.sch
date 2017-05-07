EESchema Schematic File Version 2
LIBS:shield-rescue
LIBS:power
LIBS:device
LIBS:transistors
LIBS:conn
LIBS:linear
LIBS:regul
LIBS:74xx
LIBS:cmos4000
LIBS:adc-dac
LIBS:memory
LIBS:xilinx
LIBS:microcontrollers
LIBS:dsp
LIBS:microchip
LIBS:analog_switches
LIBS:motorola
LIBS:texas
LIBS:intel
LIBS:audio
LIBS:interface
LIBS:digital-audio
LIBS:philips
LIBS:display
LIBS:cypress
LIBS:siliconi
LIBS:opto
LIBS:atmel
LIBS:contrib
LIBS:valves
LIBS:arduinopromicro
LIBS:MCP3301
LIBS:ina2126
LIBS:shield-cache
EELAYER 25 0
EELAYER END
$Descr A4 11693 8268
encoding utf-8
Sheet 1 1
Title ""
Date ""
Rev ""
Comp ""
Comment1 ""
Comment2 ""
Comment3 ""
Comment4 ""
$EndDescr
$Comp
L R R9
U 1 1 57630847
P 1400 750
F 0 "R9" V 1480 750 50  0000 C CNN
F 1 "345" V 1400 750 50  0000 C CNN
F 2 "Resistors_SMD:R_0603" V 1330 750 50  0001 C CNN
F 3 "" H 1400 750 50  0000 C CNN
	1    1400 750 
	0    1    1    0   
$EndComp
Text GLabel 4600 1400 0    60   Input ~ 0
V+inA
Text GLabel 4600 1900 0    60   Input ~ 0
V-inA
Text GLabel 4600 2600 0    60   Input ~ 0
V-inB
Text GLabel 4600 2100 0    60   Input ~ 0
V+inB
Text GLabel 1150 1400 0    60   Input ~ 0
V+inA
$Comp
L GND #PWR01
U 1 1 5763343D
P 1750 2100
F 0 "#PWR01" H 1750 1850 50  0001 C CNN
F 1 "GND" H 1750 1950 50  0000 C CNN
F 2 "" H 1750 2100 50  0000 C CNN
F 3 "" H 1750 2100 50  0000 C CNN
	1    1750 2100
	1    0    0    -1  
$EndComp
$Comp
L +5V #PWR02
U 1 1 57633627
P 1750 750
F 0 "#PWR02" H 1750 600 50  0001 C CNN
F 1 "+5V" H 1750 890 50  0000 C CNN
F 2 "" H 1750 750 50  0000 C CNN
F 3 "" H 1750 750 50  0000 C CNN
	1    1750 750 
	1    0    0    -1  
$EndComp
Text GLabel 6200 1550 2    60   Input ~ 0
VoutA
Text GLabel 6200 2250 2    60   Input ~ 0
VoutB
Text GLabel 6200 1750 2    60   Input ~ 0
RefA
Text GLabel 6200 2450 2    60   Input ~ 0
RefB
$Comp
L R R12
U 1 1 576ED300
P 1450 2100
F 0 "R12" V 1530 2100 50  0000 C CNN
F 1 "350" V 1450 2100 50  0000 C CNN
F 2 "Resistors_SMD:R_0603" V 1380 2100 50  0001 C CNN
F 3 "" H 1450 2100 50  0000 C CNN
	1    1450 2100
	0    -1   -1   0   
$EndComp
$Comp
L POT-RESCUE-shield RV1
U 1 1 57D5BE3A
P 1550 1100
F 0 "RV1" H 1550 886 50  0000 C CNN
F 1 "10" H 1550 977 50  0000 C CNN
F 2 "Potentiometers:Potentiometer_Bourns_3296Y_3-8Zoll_Angular_ScrewUp" H 1550 1100 50  0001 C CNN
F 3 "" H 1550 1100 50  0000 C CNN
	1    1550 1100
	-1   0    0    1   
$EndComp
$Comp
L INA2126 U2
U 1 1 5816C551
P 5400 2000
F 0 "U2" H 5400 2987 60  0000 C CNN
F 1 "INA2126" H 5400 2881 60  0000 C CNN
F 2 "Housings_DIP:DIP-16_W7.62mm_LongPads" H 5550 1450 60  0001 C CNN
F 3 "" H 5550 1450 60  0001 C CNN
	1    5400 2000
	1    0    0    -1  
$EndComp
$Comp
L +5V #PWR03
U 1 1 5816E7E7
P 6150 1300
F 0 "#PWR03" H 6150 1150 50  0001 C CNN
F 1 "+5V" H 6150 1440 50  0000 C CNN
F 2 "" H 6150 1300 50  0000 C CNN
F 3 "" H 6150 1300 50  0000 C CNN
	1    6150 1300
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR04
U 1 1 5816E840
P 4550 2700
F 0 "#PWR04" H 4550 2450 50  0001 C CNN
F 1 "GND" H 4550 2550 50  0000 C CNN
F 2 "" H 4550 2700 50  0000 C CNN
F 3 "" H 4550 2700 50  0000 C CNN
	1    4550 2700
	1    0    0    -1  
$EndComp
$Comp
L C C1
U 1 1 5816E899
P 4850 3000
F 0 "C1" H 4875 3100 50  0000 L CNN
F 1 "1 uF" H 4875 2900 50  0000 L CNN
F 2 "Capacitors_SMD:C_0603" H 4888 2850 50  0001 C CNN
F 3 "" H 4850 3000 50  0000 C CNN
	1    4850 3000
	0    -1   -1   0   
$EndComp
Text GLabel 10050 1700 2    60   Input ~ 0
CS-A
Text GLabel 10400 1600 2    60   Input ~ 0
D_Out
Text GLabel 10050 1500 2    60   Input ~ 0
CLK
$Comp
L +5V #PWR05
U 1 1 5817700C
P 10000 1400
F 0 "#PWR05" H 10000 1250 50  0001 C CNN
F 1 "+5V" H 10000 1540 50  0000 C CNN
F 2 "" H 10000 1400 50  0000 C CNN
F 3 "" H 10000 1400 50  0000 C CNN
	1    10000 1400
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR06
U 1 1 5817856E
P 8600 1700
F 0 "#PWR06" H 8600 1450 50  0001 C CNN
F 1 "GND" H 8600 1550 50  0000 C CNN
F 2 "" H 8600 1700 50  0000 C CNN
F 3 "" H 8600 1700 50  0000 C CNN
	1    8600 1700
	1    0    0    -1  
$EndComp
$Comp
L C C4
U 1 1 5817880E
P 8950 2150
F 0 "C4" V 9202 2150 50  0000 C CNN
F 1 "1 uF" V 9111 2150 50  0000 C CNN
F 2 "Capacitors_SMD:C_0603" H 8988 2000 50  0001 C CNN
F 3 "" H 8950 2150 50  0000 C CNN
	1    8950 2150
	0    -1   -1   0   
$EndComp
$Comp
L ZENER D1
U 1 1 5817AB1C
P 8300 1700
F 0 "D1" H 8300 1800 50  0000 C CNN
F 1 "LM385LP‑1‑2" H 8300 1600 50  0000 C CNN
F 2 "TO_SOT_Packages_THT:TO-92_Inline_Narrow_Oval" H 8300 1700 50  0001 C CNN
F 3 "" H 8300 1700 50  0000 C CNN
	1    8300 1700
	1    0    0    -1  
$EndComp
Text GLabel 7900 1550 0    60   Input ~ 0
RefA
$Comp
L R R19
U 1 1 5817BA23
P 8250 1450
F 0 "R19" V 8330 1450 50  0000 C CNN
F 1 "1K" V 8250 1450 50  0000 C CNN
F 2 "Resistors_SMD:R_0603" V 8180 1450 50  0001 C CNN
F 3 "" H 8250 1450 50  0000 C CNN
	1    8250 1450
	0    1    1    0   
$EndComp
$Comp
L C C2
U 1 1 5817BBA9
P 8400 1200
F 0 "C2" H 8425 1300 50  0000 L CNN
F 1 "0.47uF" H 8425 1100 50  0000 L CNN
F 2 "Capacitors_SMD:C_0603" H 8438 1050 50  0001 C CNN
F 3 "" H 8400 1200 50  0000 C CNN
	1    8400 1200
	1    0    0    -1  
$EndComp
Wire Wire Line
	1150 1400 1550 1400
Connection ~ 1550 1400
Connection ~ 1750 2100
Wire Wire Line
	1550 750  2100 750 
Connection ~ 1750 750 
Wire Wire Line
	6050 1550 6200 1550
Wire Wire Line
	6050 1650 6100 1650
Wire Wire Line
	6100 1650 6100 1550
Connection ~ 6100 1550
Wire Wire Line
	4600 1400 4750 1400
Wire Wire Line
	4600 1900 4750 1900
Wire Wire Line
	6050 1750 6200 1750
Wire Wire Line
	6050 2250 6200 2250
Connection ~ 6100 2250
Wire Wire Line
	6050 2450 6200 2450
Wire Wire Line
	6050 2350 6100 2350
Wire Wire Line
	6100 2350 6100 2250
Wire Wire Line
	4300 2200 4750 2200
Wire Wire Line
	4750 2500 4300 2500
Wire Wire Line
	4300 1800 4750 1800
Wire Wire Line
	4300 1500 4750 1500
Wire Wire Line
	4550 2700 4750 2700
Wire Wire Line
	4700 3000 4700 2700
Connection ~ 4700 2700
Wire Wire Line
	6050 1300 6550 1300
Wire Wire Line
	6550 1300 6550 3000
Wire Wire Line
	6550 3000 5000 3000
Connection ~ 6150 1300
Wire Wire Line
	9900 1400 10850 1400
Wire Wire Line
	8500 1700 8800 1700
Wire Wire Line
	8750 1700 8750 2150
Wire Wire Line
	8750 2150 8800 2150
Connection ~ 8750 1700
Wire Wire Line
	9100 2150 10850 2150
Wire Wire Line
	10850 2150 10850 1400
Connection ~ 10000 1400
Wire Wire Line
	9900 1500 10050 1500
Wire Wire Line
	9900 1600 10400 1600
Wire Wire Line
	9900 1700 10050 1700
Connection ~ 8600 1700
Wire Wire Line
	8100 1550 7900 1550
Connection ~ 8100 1550
Wire Wire Line
	8100 600  8100 1700
Wire Wire Line
	8100 600  8800 600 
Wire Wire Line
	8800 600  8800 1400
Wire Wire Line
	8400 1350 8400 1600
Wire Wire Line
	8400 1600 8800 1600
Connection ~ 8400 1450
Wire Wire Line
	8800 1500 8700 1500
Wire Wire Line
	8700 1000 8700 1500
Wire Wire Line
	8400 1000 8700 1000
Wire Wire Line
	8400 1000 8400 1050
$Comp
L R R21
U 1 1 5817BF9F
P 8600 850
F 0 "R21" V 8680 850 50  0000 C CNN
F 1 "1k" V 8600 850 50  0000 C CNN
F 2 "Resistors_SMD:R_0603" V 8530 850 50  0001 C CNN
F 3 "" H 8600 850 50  0000 C CNN
	1    8600 850 
	-1   0    0    1   
$EndComp
Connection ~ 8600 1000
Text GLabel 8450 700  0    60   Input ~ 0
VoutA
Wire Wire Line
	8450 700  8600 700 
Connection ~ 8100 1450
Text GLabel 10050 3850 2    60   Input ~ 0
CS-B
Text GLabel 10400 3750 2    60   Input ~ 0
D_Out
Text GLabel 10050 3650 2    60   Input ~ 0
CLK
$Comp
L +5V #PWR07
U 1 1 5817FD88
P 10000 3550
F 0 "#PWR07" H 10000 3400 50  0001 C CNN
F 1 "+5V" H 10000 3690 50  0000 C CNN
F 2 "" H 10000 3550 50  0000 C CNN
F 3 "" H 10000 3550 50  0000 C CNN
	1    10000 3550
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR08
U 1 1 5817FD8E
P 8600 3850
F 0 "#PWR08" H 8600 3600 50  0001 C CNN
F 1 "GND" H 8600 3700 50  0000 C CNN
F 2 "" H 8600 3850 50  0000 C CNN
F 3 "" H 8600 3850 50  0000 C CNN
	1    8600 3850
	1    0    0    -1  
$EndComp
$Comp
L C C5
U 1 1 5817FD94
P 8950 4300
F 0 "C5" V 9202 4300 50  0000 C CNN
F 1 "1 uF" V 9111 4300 50  0000 C CNN
F 2 "Capacitors_SMD:C_0603" H 8988 4150 50  0001 C CNN
F 3 "" H 8950 4300 50  0000 C CNN
	1    8950 4300
	0    -1   -1   0   
$EndComp
$Comp
L ZENER D2
U 1 1 5817FD9A
P 8300 3850
F 0 "D2" H 8300 3950 50  0000 C CNN
F 1 "LM385LP‑1‑2" H 8300 3750 50  0000 C CNN
F 2 "TO_SOT_Packages_THT:TO-92_Inline_Narrow_Oval" H 8300 3850 50  0001 C CNN
F 3 "" H 8300 3850 50  0000 C CNN
	1    8300 3850
	1    0    0    -1  
$EndComp
$Comp
L R R20
U 1 1 5817FDA1
P 8250 3600
F 0 "R20" V 8330 3600 50  0000 C CNN
F 1 "1K" V 8250 3600 50  0000 C CNN
F 2 "Resistors_SMD:R_0603" V 8180 3600 50  0001 C CNN
F 3 "" H 8250 3600 50  0000 C CNN
	1    8250 3600
	0    1    1    0   
$EndComp
$Comp
L C C3
U 1 1 5817FDA7
P 8400 3350
F 0 "C3" H 8425 3450 50  0000 L CNN
F 1 "0.47uF" H 8425 3250 50  0000 L CNN
F 2 "Capacitors_SMD:C_0603" H 8438 3200 50  0001 C CNN
F 3 "" H 8400 3350 50  0000 C CNN
	1    8400 3350
	1    0    0    -1  
$EndComp
Wire Wire Line
	9900 3550 10850 3550
Wire Wire Line
	8500 3850 8800 3850
Wire Wire Line
	8750 3850 8750 4300
Wire Wire Line
	8750 4300 8800 4300
Connection ~ 8750 3850
Wire Wire Line
	9100 4300 10850 4300
Wire Wire Line
	10850 4300 10850 3550
Connection ~ 10000 3550
Wire Wire Line
	9900 3650 10050 3650
Wire Wire Line
	9900 3750 10400 3750
Wire Wire Line
	9900 3850 10050 3850
Connection ~ 8600 3850
Wire Wire Line
	8100 3700 7900 3700
Connection ~ 8100 3700
Wire Wire Line
	8100 2750 8100 3850
Wire Wire Line
	8100 2750 8800 2750
Wire Wire Line
	8800 2750 8800 3550
Wire Wire Line
	8400 3500 8400 3750
Wire Wire Line
	8400 3750 8800 3750
Connection ~ 8400 3600
Wire Wire Line
	8800 3650 8700 3650
Wire Wire Line
	8700 3150 8700 3650
Wire Wire Line
	8400 3150 8700 3150
Wire Wire Line
	8400 3150 8400 3200
$Comp
L R R22
U 1 1 5817FDCE
P 8600 3000
F 0 "R22" V 8680 3000 50  0000 C CNN
F 1 "1k" V 8600 3000 50  0000 C CNN
F 2 "Resistors_SMD:R_0603" V 8530 3000 50  0001 C CNN
F 3 "" H 8600 3000 50  0000 C CNN
	1    8600 3000
	-1   0    0    1   
$EndComp
Connection ~ 8600 3150
Text GLabel 8450 2850 0    60   Input ~ 0
VoutB
Wire Wire Line
	8450 2850 8600 2850
Connection ~ 8100 3600
Text GLabel 5900 6000 2    60   Input ~ 0
CLK
Text GLabel 6150 6100 2    60   Input ~ 0
D_Out
Wire Wire Line
	4200 5400 4000 5400
Text GLabel 7900 3700 0    60   Input ~ 0
RefB
$Comp
L GND #PWR09
U 1 1 581870A2
P 4000 5400
F 0 "#PWR09" H 4000 5150 50  0001 C CNN
F 1 "GND" H 4005 5227 50  0000 C CNN
F 2 "" H 4000 5400 50  0000 C CNN
F 3 "" H 4000 5400 50  0000 C CNN
	1    4000 5400
	1    0    0    -1  
$EndComp
Wire Wire Line
	5700 5500 6400 5500
$Comp
L +5V #PWR010
U 1 1 581880FD
P 6400 5500
F 0 "#PWR010" H 6400 5350 50  0001 C CNN
F 1 "+5V" H 6415 5673 50  0000 C CNN
F 2 "" H 6400 5500 50  0000 C CNN
F 3 "" H 6400 5500 50  0000 C CNN
	1    6400 5500
	1    0    0    -1  
$EndComp
$Comp
L SW_PUSH SW2
U 1 1 5818879D
P 6000 5300
F 0 "SW2" H 6000 5555 50  0000 C CNN
F 1 "SW_PUSH" H 6000 5464 50  0000 C CNN
F 2 "Buttons_Switches_ThroughHole:SW_PUSH_6mm" H 6000 5300 50  0001 C CNN
F 3 "" H 6000 5300 50  0000 C CNN
	1    6000 5300
	1    0    0    -1  
$EndComp
Wire Wire Line
	6300 5300 6300 5400
Wire Wire Line
	6300 5400 5700 5400
Wire Wire Line
	5900 6000 5700 6000
Text GLabel 3650 6200 0    60   Input ~ 0
CS-A
Text GLabel 4000 6300 0    60   Input ~ 0
CS-B
Wire Wire Line
	3650 6200 4200 6200
Wire Wire Line
	4200 6300 4000 6300
Text GLabel 4100 5700 0    60   Input ~ 0
LATCH
Text GLabel 3750 5600 0    60   Input ~ 0
CLK_Shift
Text GLabel 3750 5800 0    60   Input ~ 0
DATA_Shift
$Comp
L CONN_01X05 P1
U 1 1 5818FD9D
P 950 5550
F 0 "P1" H 869 5125 50  0000 C CNN
F 1 "CONN_01X05" H 869 5216 50  0000 C CNN
F 2 "Pin_Headers:Pin_Header_Straight_1x05" H 950 5550 50  0001 C CNN
F 3 "" H 950 5550 50  0000 C CNN
	1    950  5550
	-1   0    0    1   
$EndComp
Text GLabel 2000 1400 0    60   Input ~ 0
V-inA
$Comp
L CONN_01X03 P4
U 1 1 581DCFA6
P 2300 1400
F 0 "P4" H 2300 1600 50  0000 C CNN
F 1 "CONN_01X03" V 2400 1400 50  0000 C CNN
F 2 "Pin_Headers:Pin_Header_Straight_1x03" H 2300 1400 50  0001 C CNN
F 3 "" H 2300 1400 50  0000 C CNN
	1    2300 1400
	1    0    0    -1  
$EndComp
Wire Wire Line
	2100 1400 2000 1400
Wire Wire Line
	2100 750  2100 1300
Wire Wire Line
	2100 2100 2100 1500
$Comp
L R R5
U 1 1 581DD452
P 1150 1100
F 0 "R5" V 1230 1100 50  0000 C CNN
F 1 "0" V 1150 1100 50  0000 C CNN
F 2 "Resistors_SMD:R_0603" V 1080 1100 50  0001 C CNN
F 3 "" H 1150 1100 50  0000 C CNN
	1    1150 1100
	0    1    1    0   
$EndComp
$Comp
L R R1
U 1 1 581DD4D9
P 850 900
F 0 "R1" V 930 900 50  0000 C CNN
F 1 "0" V 850 900 50  0000 C CNN
F 2 "Resistors_SMD:R_0603" V 780 900 50  0001 C CNN
F 3 "" H 850 900 50  0000 C CNN
	1    850  900 
	1    0    0    -1  
$EndComp
Wire Wire Line
	850  1050 850  1100
Wire Wire Line
	850  1100 1000 1100
Wire Wire Line
	1300 1100 1400 1100
Wire Wire Line
	1250 750  850  750 
$Comp
L R R3
U 1 1 581DDA1A
P 1100 1950
F 0 "R3" V 1180 1950 50  0000 C CNN
F 1 "0" V 1100 1950 50  0000 C CNN
F 2 "Resistors_SMD:R_0603" V 1030 1950 50  0001 C CNN
F 3 "" H 1100 1950 50  0000 C CNN
	1    1100 1950
	1    0    0    -1  
$EndComp
$Comp
L R R7
U 1 1 581DDA81
P 1300 1700
F 0 "R7" V 1380 1700 50  0000 C CNN
F 1 "0" V 1300 1700 50  0000 C CNN
F 2 "Resistors_SMD:R_0603" V 1230 1700 50  0001 C CNN
F 3 "" H 1300 1700 50  0000 C CNN
	1    1300 1700
	0    1    1    0   
$EndComp
Wire Wire Line
	1150 1700 1100 1700
Wire Wire Line
	1100 1700 1100 1800
Wire Wire Line
	1100 2100 1300 2100
Wire Wire Line
	1600 2100 2100 2100
Wire Wire Line
	1550 1700 1450 1700
Wire Wire Line
	1550 1250 1550 1700
$Comp
L R R10
U 1 1 581DE3B2
P 1400 2550
F 0 "R10" V 1480 2550 50  0000 C CNN
F 1 "345" V 1400 2550 50  0000 C CNN
F 2 "Resistors_SMD:R_0603" V 1330 2550 50  0001 C CNN
F 3 "" H 1400 2550 50  0000 C CNN
	1    1400 2550
	0    1    1    0   
$EndComp
Text GLabel 1150 3200 0    60   Input ~ 0
V+inB
$Comp
L GND #PWR011
U 1 1 581DE3B9
P 1750 3900
F 0 "#PWR011" H 1750 3650 50  0001 C CNN
F 1 "GND" H 1750 3750 50  0000 C CNN
F 2 "" H 1750 3900 50  0000 C CNN
F 3 "" H 1750 3900 50  0000 C CNN
	1    1750 3900
	1    0    0    -1  
$EndComp
$Comp
L +5V #PWR012
U 1 1 581DE3BF
P 1750 2550
F 0 "#PWR012" H 1750 2400 50  0001 C CNN
F 1 "+5V" H 1750 2690 50  0000 C CNN
F 2 "" H 1750 2550 50  0000 C CNN
F 3 "" H 1750 2550 50  0000 C CNN
	1    1750 2550
	1    0    0    -1  
$EndComp
$Comp
L R R13
U 1 1 581DE3C5
P 1450 3900
F 0 "R13" V 1530 3900 50  0000 C CNN
F 1 "350" V 1450 3900 50  0000 C CNN
F 2 "Resistors_SMD:R_0603" V 1380 3900 50  0001 C CNN
F 3 "" H 1450 3900 50  0000 C CNN
	1    1450 3900
	0    -1   -1   0   
$EndComp
$Comp
L POT-RESCUE-shield RV2
U 1 1 581DE3CB
P 1550 2900
F 0 "RV2" H 1550 2686 50  0000 C CNN
F 1 "10" H 1550 2777 50  0000 C CNN
F 2 "Potentiometers:Potentiometer_Bourns_3296Y_3-8Zoll_Angular_ScrewUp" H 1550 2900 50  0001 C CNN
F 3 "" H 1550 2900 50  0000 C CNN
	1    1550 2900
	-1   0    0    1   
$EndComp
Wire Wire Line
	1150 3200 1550 3200
Connection ~ 1550 3200
Connection ~ 1750 3900
Wire Wire Line
	1550 2550 2100 2550
Connection ~ 1750 2550
Text GLabel 2000 3200 0    60   Input ~ 0
V-inB
$Comp
L CONN_01X03 P5
U 1 1 581DE3D7
P 2300 3200
F 0 "P5" H 2300 3400 50  0000 C CNN
F 1 "CONN_01X03" V 2400 3200 50  0000 C CNN
F 2 "Pin_Headers:Pin_Header_Straight_1x03" H 2300 3200 50  0001 C CNN
F 3 "" H 2300 3200 50  0000 C CNN
	1    2300 3200
	1    0    0    -1  
$EndComp
Wire Wire Line
	2100 3200 2000 3200
Wire Wire Line
	2100 2550 2100 3100
Wire Wire Line
	2100 3900 2100 3300
$Comp
L R R6
U 1 1 581DE3E0
P 1150 2900
F 0 "R6" V 1230 2900 50  0000 C CNN
F 1 "0" V 1150 2900 50  0000 C CNN
F 2 "Resistors_SMD:R_0603" V 1080 2900 50  0001 C CNN
F 3 "" H 1150 2900 50  0000 C CNN
	1    1150 2900
	0    1    1    0   
$EndComp
$Comp
L R R2
U 1 1 581DE3E6
P 850 2700
F 0 "R2" V 930 2700 50  0000 C CNN
F 1 "0" V 850 2700 50  0000 C CNN
F 2 "Resistors_SMD:R_0603" V 780 2700 50  0001 C CNN
F 3 "" H 850 2700 50  0000 C CNN
	1    850  2700
	1    0    0    -1  
$EndComp
Wire Wire Line
	850  2850 850  2900
Wire Wire Line
	850  2900 1000 2900
Wire Wire Line
	1300 2900 1400 2900
Wire Wire Line
	1250 2550 850  2550
$Comp
L R R4
U 1 1 581DE3F0
P 1100 3750
F 0 "R4" V 1180 3750 50  0000 C CNN
F 1 "0" V 1100 3750 50  0000 C CNN
F 2 "Resistors_SMD:R_0603" V 1030 3750 50  0001 C CNN
F 3 "" H 1100 3750 50  0000 C CNN
	1    1100 3750
	1    0    0    -1  
$EndComp
$Comp
L R R8
U 1 1 581DE3F6
P 1300 3500
F 0 "R8" V 1380 3500 50  0000 C CNN
F 1 "0" V 1300 3500 50  0000 C CNN
F 2 "Resistors_SMD:R_0603" V 1230 3500 50  0001 C CNN
F 3 "" H 1300 3500 50  0000 C CNN
	1    1300 3500
	0    1    1    0   
$EndComp
Wire Wire Line
	1150 3500 1100 3500
Wire Wire Line
	1100 3500 1100 3600
Wire Wire Line
	1100 3900 1300 3900
Wire Wire Line
	1600 3900 2100 3900
Wire Wire Line
	1550 3500 1450 3500
Wire Wire Line
	1550 3050 1550 3500
NoConn ~ 1700 2900
NoConn ~ 1700 1100
$Comp
L R R15
U 1 1 581E164C
P 4150 1500
F 0 "R15" V 4230 1500 50  0000 C CNN
F 1 "0" V 4150 1500 50  0000 C CNN
F 2 "Resistors_SMD:R_0603" V 4080 1500 50  0001 C CNN
F 3 "" H 4150 1500 50  0000 C CNN
	1    4150 1500
	0    1    1    0   
$EndComp
$Comp
L R R16
U 1 1 581E1759
P 4150 1800
F 0 "R16" V 4230 1800 50  0000 C CNN
F 1 "80" V 4150 1800 50  0000 C CNN
F 2 "Resistors_SMD:R_0603" V 4080 1800 50  0001 C CNN
F 3 "" H 4150 1800 50  0000 C CNN
	1    4150 1800
	0    1    1    0   
$EndComp
$Comp
L POT-RESCUE-shield RV3
U 1 1 581E17D1
P 3700 1500
F 0 "RV3" H 3700 1420 50  0000 C CNN
F 1 "100" H 3700 1500 50  0000 C CNN
F 2 "Potentiometers:Potentiometer_Bourns_3296W_3-8Zoll_Inline_ScrewUp" H 3700 1500 50  0001 C CNN
F 3 "" H 3700 1500 50  0000 C CNN
	1    3700 1500
	-1   0    0    1   
$EndComp
Wire Wire Line
	3850 1500 4000 1500
Wire Wire Line
	3700 1650 3700 1800
Wire Wire Line
	3700 1800 4000 1800
$Comp
L R R17
U 1 1 581E30A9
P 4150 2200
F 0 "R17" V 4230 2200 50  0000 C CNN
F 1 "0" V 4150 2200 50  0000 C CNN
F 2 "Resistors_SMD:R_0603" V 4080 2200 50  0001 C CNN
F 3 "" H 4150 2200 50  0000 C CNN
	1    4150 2200
	0    1    1    0   
$EndComp
$Comp
L R R18
U 1 1 581E30AF
P 4150 2500
F 0 "R18" V 4230 2500 50  0000 C CNN
F 1 "80" V 4150 2500 50  0000 C CNN
F 2 "Resistors_SMD:R_0603" V 4080 2500 50  0001 C CNN
F 3 "" H 4150 2500 50  0000 C CNN
	1    4150 2500
	0    1    1    0   
$EndComp
$Comp
L POT-RESCUE-shield RV4
U 1 1 581E30B5
P 3700 2200
F 0 "RV4" H 3700 2120 50  0000 C CNN
F 1 "100" H 3700 2200 50  0000 C CNN
F 2 "Potentiometers:Potentiometer_Bourns_3296W_3-8Zoll_Inline_ScrewUp" H 3700 2200 50  0001 C CNN
F 3 "" H 3700 2200 50  0000 C CNN
	1    3700 2200
	-1   0    0    1   
$EndComp
Wire Wire Line
	3850 2200 4000 2200
Wire Wire Line
	3700 2350 3700 2500
Wire Wire Line
	3700 2500 4000 2500
Text GLabel 1250 5550 2    60   Input ~ 0
LATCH
Text GLabel 1850 5450 2    60   Input ~ 0
CLK_Shift
Text GLabel 1250 5350 2    60   Input ~ 0
DATA_Shift
$Comp
L +5V #PWR013
U 1 1 581E7C32
P 1350 5900
F 0 "#PWR013" H 1350 5750 50  0001 C CNN
F 1 "+5V" H 1350 6040 50  0000 C CNN
F 2 "" H 1350 5900 50  0000 C CNN
F 3 "" H 1350 5900 50  0000 C CNN
	1    1350 5900
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR014
U 1 1 581E7CA8
P 1600 5650
F 0 "#PWR014" H 1600 5400 50  0001 C CNN
F 1 "GND" H 1600 5500 50  0000 C CNN
F 2 "" H 1600 5650 50  0000 C CNN
F 3 "" H 1600 5650 50  0000 C CNN
	1    1600 5650
	1    0    0    -1  
$EndComp
Wire Wire Line
	6150 6100 5700 6100
$Comp
L SW_PUSH SW1
U 1 1 581ED395
P 2750 6100
F 0 "SW1" H 2900 6210 50  0000 C CNN
F 1 "SW_PUSH" H 2750 6020 50  0000 C CNN
F 2 "Buttons_Switches_ThroughHole:SW_PUSH_6mm" H 2750 6100 50  0001 C CNN
F 3 "" H 2750 6100 50  0000 C CNN
	1    2750 6100
	1    0    0    -1  
$EndComp
Wire Wire Line
	3050 6100 4200 6100
$Comp
L R R14
U 1 1 581F2757
P 3150 6400
F 0 "R14" V 3230 6400 50  0000 C CNN
F 1 "10k" V 3150 6400 50  0000 C CNN
F 2 "Resistors_SMD:R_0603" V 3080 6400 50  0001 C CNN
F 3 "" H 3150 6400 50  0000 C CNN
	1    3150 6400
	1    0    0    -1  
$EndComp
Wire Wire Line
	3150 6250 3150 6100
Connection ~ 3150 6100
$Comp
L GND #PWR015
U 1 1 581F2A17
P 3150 6650
F 0 "#PWR015" H 3150 6400 50  0001 C CNN
F 1 "GND" H 3150 6500 50  0000 C CNN
F 2 "" H 3150 6650 50  0000 C CNN
F 3 "" H 3150 6650 50  0000 C CNN
	1    3150 6650
	1    0    0    -1  
$EndComp
$Comp
L +5V #PWR016
U 1 1 581F2A91
P 2200 6100
F 0 "#PWR016" H 2200 5950 50  0001 C CNN
F 1 "+5V" H 2200 6240 50  0000 C CNN
F 2 "" H 2200 6100 50  0000 C CNN
F 3 "" H 2200 6100 50  0000 C CNN
	1    2200 6100
	1    0    0    -1  
$EndComp
Wire Wire Line
	2200 6100 2450 6100
Wire Wire Line
	3150 6550 3150 6650
NoConn ~ 4200 5900
NoConn ~ 4200 6000
NoConn ~ 4200 5300
NoConn ~ 4200 5200
NoConn ~ 5700 6200
NoConn ~ 5700 5200
NoConn ~ 3550 2200
NoConn ~ 3550 1500
Wire Wire Line
	4600 2100 4750 2100
Wire Wire Line
	4750 2600 4600 2600
$Comp
L MCP3301 U3
U 1 1 5820849E
P 9350 1550
F 0 "U3" H 9350 1950 60  0000 C CNN
F 1 "MCP3301" H 9350 1850 60  0000 C CNN
F 2 "Housings_DIP:DIP-8_W7.62mm_LongPads" H 9350 1550 60  0001 C CNN
F 3 "" H 9350 1550 60  0001 C CNN
	1    9350 1550
	1    0    0    -1  
$EndComp
$Comp
L MCP3301 U4
U 1 1 582088EB
P 9350 3700
F 0 "U4" H 9350 4100 60  0000 C CNN
F 1 "MCP3301" H 9350 4000 60  0000 C CNN
F 2 "Housings_DIP:DIP-8_W7.62mm_LongPads" H 9350 3700 60  0001 C CNN
F 3 "" H 9350 3700 60  0001 C CNN
	1    9350 3700
	1    0    0    -1  
$EndComp
NoConn ~ 4200 5500
$Comp
L CONN_01X03 P2
U 1 1 581D990B
P 950 6300
F 0 "P2" H 950 6500 50  0000 C CNN
F 1 "CONN_01X03" V 1050 6300 50  0000 C CNN
F 2 "Pin_Headers:Pin_Header_Straight_1x03" H 950 6300 50  0001 C CNN
F 3 "" H 950 6300 50  0000 C CNN
	1    950  6300
	-1   0    0    1   
$EndComp
Text GLabel 1250 6400 2    60   Input ~ 0
Analog_out
$Comp
L +5V #PWR017
U 1 1 581DA211
P 1300 6200
F 0 "#PWR017" H 1300 6050 50  0001 C CNN
F 1 "+5V" H 1300 6340 50  0000 C CNN
F 2 "" H 1300 6200 50  0000 C CNN
F 3 "" H 1300 6200 50  0000 C CNN
	1    1300 6200
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR018
U 1 1 581DA279
P 1900 6300
F 0 "#PWR018" H 1900 6050 50  0001 C CNN
F 1 "GND" H 1900 6150 50  0000 C CNN
F 2 "" H 1900 6300 50  0000 C CNN
F 3 "" H 1900 6300 50  0000 C CNN
	1    1900 6300
	1    0    0    -1  
$EndComp
Wire Wire Line
	1900 6300 1150 6300
Wire Wire Line
	1250 6400 1150 6400
Wire Wire Line
	1150 6200 1300 6200
Text GLabel 6450 5900 2    60   Input ~ 0
Analog_out
Wire Wire Line
	5700 5900 6450 5900
$Comp
L ArduinoProMicro U1
U 1 1 581DBEB6
P 4950 5750
F 0 "U1" H 4700 5150 60  0000 C CNN
F 1 "ArduinoProMicro" H 4950 6450 60  0000 C CNN
F 2 "Parts:ArduinoProMicro" H 4700 5150 60  0001 C CNN
F 3 "" H 4700 5150 60  0001 C CNN
	1    4950 5750
	1    0    0    -1  
$EndComp
Wire Wire Line
	3750 5600 4200 5600
Wire Wire Line
	4200 5700 4100 5700
Wire Wire Line
	3750 5800 4200 5800
NoConn ~ 5700 5600
NoConn ~ 5700 5700
NoConn ~ 5700 5800
$Comp
L CONN_01X02 P3
U 1 1 581E06F5
P 950 6950
F 0 "P3" H 950 7100 50  0000 C CNN
F 1 "CONN_01X02" V 1050 6950 50  0000 C CNN
F 2 "Pin_Headers:Pin_Header_Straight_1x02" H 950 6950 50  0001 C CNN
F 3 "" H 950 6950 50  0000 C CNN
	1    950  6950
	-1   0    0    1   
$EndComp
$Comp
L R R11
U 1 1 581E2A1B
P 1400 7000
F 0 "R11" V 1480 7000 50  0000 C CNN
F 1 "R" V 1400 7000 50  0000 C CNN
F 2 "Resistors_SMD:R_0603" V 1330 7000 50  0001 C CNN
F 3 "" H 1400 7000 50  0000 C CNN
	1    1400 7000
	0    1    1    0   
$EndComp
Wire Wire Line
	1250 7000 1150 7000
$Comp
L GND #PWR019
U 1 1 581E2B6F
P 1700 7000
F 0 "#PWR019" H 1700 6750 50  0001 C CNN
F 1 "GND" H 1700 6850 50  0000 C CNN
F 2 "" H 1700 7000 50  0000 C CNN
F 3 "" H 1700 7000 50  0000 C CNN
	1    1700 7000
	1    0    0    -1  
$EndComp
Wire Wire Line
	1700 7000 1550 7000
Text GLabel 1250 6900 2    60   Input ~ 0
LED
Wire Wire Line
	1250 6900 1150 6900
Text GLabel 5900 6300 2    60   Input ~ 0
LED
Wire Wire Line
	5700 6300 5900 6300
Wire Wire Line
	1150 5350 1250 5350
Wire Wire Line
	1150 5450 1850 5450
Wire Wire Line
	1150 5550 1250 5550
Wire Wire Line
	1150 5650 1600 5650
Wire Wire Line
	1150 5750 1150 5900
Wire Wire Line
	1150 5900 1350 5900
$EndSCHEMATC