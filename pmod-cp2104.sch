EESchema Schematic File Version 2
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
LIBS:pmod-conn_6x2
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
L PMOD-CONN_6X2 P1
U 1 1 57F4CF0B
P 2200 1700
F 0 "P1" H 2200 2050 60  0000 C CNN
F 1 "PMOD-CONN_6X2" V 2200 1700 39  0000 C CNN
F 2 "" H 2200 1700 60  0000 C CNN
F 3 "" H 2200 1700 60  0000 C CNN
	1    2200 1700
	-1   0    0    -1  
$EndComp
Text Notes 1350 5150 0    60   ~ 0
UART with hardware flow Control\n-------------------\nTXD ->\nRXD <-\nCTS <-\nRTS ->\n
$Comp
L D DTX1
U 1 1 57F4CF9B
P 4600 2600
F 0 "DTX1" H 4600 2700 50  0000 C CNN
F 1 "D" H 4600 2500 50  0000 C CNN
F 2 "" H 4600 2600 50  0000 C CNN
F 3 "" H 4600 2600 50  0000 C CNN
	1    4600 2600
	-1   0    0    1   
$EndComp
$Comp
L D DRX1
U 1 1 57F4D00A
P 4600 2300
F 0 "DRX1" H 4600 2400 50  0000 C CNN
F 1 "D" H 4600 2200 50  0000 C CNN
F 2 "" H 4600 2300 50  0000 C CNN
F 3 "" H 4600 2300 50  0000 C CNN
	1    4600 2300
	-1   0    0    1   
$EndComp
Text Notes 1200 4200 0    60   ~ 0
Pmod Interface Type 4A (expanded UART) \n-----------\nPin 1 - CTS - In  - Peripheral can transmit\nPin 2 - TXD - Out - Data - Host to peripheral\nPin 3 - RXD - In  - Data - Peripheral to host\nPin 4 - RTS - Out - Peripheral ready for data\nPin 5 - GND\nPin 6 - VCC\n\nPin  7 - INT - In -  Interrupt signal from peripheral to host \nPin  8 - RESET - Out - Reset signal for host to reset peripheral \nPin  9 - IO1 - BiDir\nPin 10 - IO2 - BiDir\nPin 11 - GND\nPin 12 - VCC
Text Label 3050 1450 2    60   ~ 0
PMOD_CTS
Text Label 3050 1550 2    60   ~ 0
PMOD_TXD
Text Label 3050 1650 2    60   ~ 0
PMOD_RXD
Text Label 3050 1750 2    60   ~ 0
PMOD_RTS
Text Label 1350 1450 0    60   ~ 0
PMOD_INT
Text Label 1350 1550 0    60   ~ 0
PMOD_RST
Text Label 1350 1650 0    60   ~ 0
PMOD_IO1
Text Label 1350 1750 0    60   ~ 0
PMOD_IO2
Text Label 7750 2100 0    60   ~ 0
VUSB
Text Label 2350 2150 2    60   ~ 0
VPMOD
Wire Wire Line
	2600 1450 3050 1450
Wire Wire Line
	3050 1550 2600 1550
Wire Wire Line
	2600 1650 3050 1650
Wire Wire Line
	3050 1750 2600 1750
Wire Wire Line
	1350 1450 1800 1450
Wire Wire Line
	1800 1550 1350 1550
Wire Wire Line
	1350 1650 1800 1650
Wire Wire Line
	1800 1750 1350 1750
Wire Wire Line
	1800 1950 1750 1950
Wire Wire Line
	1750 1950 1750 2150
Wire Wire Line
	1750 2150 2650 2150
Wire Wire Line
	2650 2150 2650 1950
Wire Wire Line
	2650 1950 2600 1950
Wire Wire Line
	2600 1850 2700 1850
Wire Wire Line
	2700 1850 2700 2300
Wire Wire Line
	2700 2300 2200 2300
Wire Wire Line
	2200 2300 1700 2300
Wire Wire Line
	1700 2300 1700 1850
Wire Wire Line
	1700 1850 1800 1850
Text Notes 2000 2150 2    60   ~ 0
3.3V
$Comp
L GND #PWR?
U 1 1 57F4D651
P 2200 2350
F 0 "#PWR?" H 2200 2100 50  0001 C CNN
F 1 "GND" H 2200 2200 50  0000 C CNN
F 2 "" H 2200 2350 50  0000 C CNN
F 3 "" H 2200 2350 50  0000 C CNN
	1    2200 2350
	-1   0    0    -1  
$EndComp
Wire Wire Line
	2200 2350 2200 2300
Connection ~ 2200 2300
$Comp
L USB_OTG P?
U 1 1 57F4D6DE
P 8400 2300
F 0 "P?" H 8725 2175 50  0000 C CNN
F 1 "USB_OTG" H 8400 2500 50  0000 C CNN
F 2 "" V 8350 2200 50  0000 C CNN
F 3 "" V 8350 2200 50  0000 C CNN
	1    8400 2300
	0    1    1    0   
$EndComp
Text Label 7750 2200 0    60   ~ 0
D-
Text Label 7750 2300 0    60   ~ 0
D+
Wire Wire Line
	8100 2100 7750 2100
Wire Wire Line
	7750 2200 8100 2200
Wire Wire Line
	8100 2300 7750 2300
NoConn ~ 8100 2400
Wire Wire Line
	8500 2800 8500 2700
Wire Wire Line
	8000 2800 8250 2800
Wire Wire Line
	8250 2800 8500 2800
Wire Wire Line
	8000 2800 8000 2500
Wire Wire Line
	8000 2500 8100 2500
Wire Wire Line
	8250 2800 8250 2850
Connection ~ 8250 2800
$Comp
L GND #PWR?
U 1 1 57F4D8AA
P 8250 2850
F 0 "#PWR?" H 8250 2600 50  0001 C CNN
F 1 "GND" H 8250 2700 50  0000 C CNN
F 2 "" H 8250 2850 50  0000 C CNN
F 3 "" H 8250 2850 50  0000 C CNN
	1    8250 2850
	1    0    0    -1  
$EndComp
Text Notes 4000 1700 0    60   ~ 0
PModUSBUART\n---\nPin 1 - RTS\nPin 2 - RXD\nPin 3 - TXD\nPin 4 - CTS\nPin 5 - GND\nPin 6 - VCC\n\nLCL3V3 - Board *gets* power from VPMOD\nSYS3V3 - Board *provides* power to VPMOD
Text Notes 5000 6150 0    60   ~ 0
VIO -> VPMOD\n Thus VPMOD always sets the IO voltage level\n\nREGIN - Regulator input \n\n  Feed from VUSB\nor\n  Feed from 3V3
Text Label 8050 4400 0    60   ~ 0
CP_~RST
Wire Wire Line
	8050 4400 8850 4400
$Comp
L R RRST1
U 1 1 57F4DB18
P 8850 4200
F 0 "RRST1" V 8930 4200 50  0000 C CNN
F 1 "4k7" V 8850 4200 50  0000 C CNN
F 2 "" V 8780 4200 50  0000 C CNN
F 3 "" H 8850 4200 50  0000 C CNN
	1    8850 4200
	1    0    0    -1  
$EndComp
Wire Wire Line
	8850 4400 8850 4350
Wire Wire Line
	8850 4050 8850 3900
Text Label 8850 3900 0    60   ~ 0
VIO
$Comp
L R RRX1
U 1 1 57F4DD2D
P 5050 2300
F 0 "RRX1" V 5130 2300 50  0000 C CNN
F 1 "100" V 5050 2300 50  0000 C CNN
F 2 "" V 4980 2300 50  0000 C CNN
F 3 "" H 5050 2300 50  0000 C CNN
	1    5050 2300
	0    1    1    0   
$EndComp
$Comp
L R RTX1
U 1 1 57F4DE41
P 5050 2600
F 0 "RTX1" V 5130 2600 50  0000 C CNN
F 1 "100" V 5050 2600 50  0000 C CNN
F 2 "" V 4980 2600 50  0000 C CNN
F 3 "" H 5050 2600 50  0000 C CNN
	1    5050 2600
	0    1    1    0   
$EndComp
Wire Wire Line
	5350 2600 5200 2600
Wire Wire Line
	5350 2100 5350 2300
Wire Wire Line
	5350 2300 5350 2600
Wire Wire Line
	5200 2300 5350 2300
Connection ~ 5350 2300
Wire Wire Line
	4900 2300 4750 2300
Wire Wire Line
	4750 2600 4900 2600
Text Label 5350 2100 0    60   ~ 0
VIO
Wire Wire Line
	4450 2300 4000 2300
Wire Wire Line
	4450 2600 4000 2600
Text Label 4000 2600 0    60   ~ 0
CP_GPIO.0
Text Label 4000 2300 0    60   ~ 0
CP_GPIO.1
$Comp
L GND #PWR?
U 1 1 57F4E126
P 8050 5400
F 0 "#PWR?" H 8050 5150 50  0001 C CNN
F 1 "GND" H 8050 5250 50  0000 C CNN
F 2 "" H 8050 5400 50  0000 C CNN
F 3 "" H 8050 5400 50  0000 C CNN
	1    8050 5400
	1    0    0    -1  
$EndComp
$Comp
L C CVPP1
U 1 1 57F4E149
P 8050 5150
F 0 "CVPP1" H 8075 5250 50  0000 L CNN
F 1 "4.7uF" H 8075 5050 50  0000 L CNN
F 2 "" H 8088 5000 50  0000 C CNN
F 3 "" H 8050 5150 50  0000 C CNN
	1    8050 5150
	1    0    0    -1  
$EndComp
Wire Wire Line
	8050 5400 8050 5300
Wire Wire Line
	8050 5000 8050 4900
Wire Wire Line
	8050 4900 8350 4900
Text Label 8350 4900 0    60   ~ 0
CP_VPP
$Comp
L GND #PWR?
U 1 1 57F4E327
P 8900 5400
F 0 "#PWR?" H 8900 5150 50  0001 C CNN
F 1 "GND" H 8900 5250 50  0000 C CNN
F 2 "" H 8900 5400 50  0000 C CNN
F 3 "" H 8900 5400 50  0000 C CNN
	1    8900 5400
	1    0    0    -1  
$EndComp
$Comp
L C CREGIN1
U 1 1 57F4E32D
P 8900 5150
F 0 "CREGIN1" H 8925 5250 50  0000 L CNN
F 1 "1uF" H 8925 5050 50  0000 L CNN
F 2 "" H 8938 5000 50  0000 C CNN
F 3 "" H 8900 5150 50  0000 C CNN
	1    8900 5150
	1    0    0    -1  
$EndComp
Wire Wire Line
	8900 5400 8900 5300
Wire Wire Line
	8900 5000 8900 4900
Wire Wire Line
	8900 4900 9200 4900
Text Label 9200 4900 0    60   ~ 0
CP_REGIN
Text Notes -5100 4950 0    60   ~ 0
RI - Ring Indicator\n * Peripheral -> USB\n * Active Low\n * "Wake host up" signal\n\nMapping to PMOD_INT
Text Notes 4900 7150 0    60   ~ 0
RI - Ring Indicator\n * Peripheral -> Host\n * Active Low
Text Notes -5100 3500 0    60   ~ 0
DTR - Data Terminal Ready\n * USB -> Peripheral\n * Active Low\n * On Windows, DTR is held low while serial port is unopened\n\nMapping to PMOD_RST line
Text Notes -3000 1350 0    60   ~ 0
DCD -- Data Carrier Detect\n * Peripheral -> USB\n * Active Low\n * On Linux, while DCD is low, nothing to do.
Text Notes -5300 1350 0    60   ~ 0
DSR -- Data Set Ready\n * Peripheral -> USB\n * Active Low\n * Tied to DCD in "null modem" config.
$Comp
L D DDTR1
U 1 1 57F4F1C0
P -3300 2500
F 0 "DDTR1" H -3300 2600 50  0000 C CNN
F 1 "D" H -3300 2400 50  0000 C CNN
F 2 "" H -3300 2500 50  0000 C CNN
F 3 "" H -3300 2500 50  0000 C CNN
	1    -3300 2500
	-1   0    0    1   
$EndComp
$Comp
L R RDTR1
U 1 1 57F4F1C6
P -2850 2500
F 0 "RDTR1" V -2770 2500 50  0000 C CNN
F 1 "100" V -2850 2500 50  0000 C CNN
F 2 "" V -2920 2500 50  0000 C CNN
F 3 "" H -2850 2500 50  0000 C CNN
	1    -2850 2500
	0    1    1    0   
$EndComp
Wire Wire Line
	-2550 2500 -2700 2500
Wire Wire Line
	-3000 2500 -3150 2500
Text Label -2550 2300 0    60   ~ 0
VIO
Wire Wire Line
	-5100 2500 -3550 2500
Wire Wire Line
	-3550 2500 -3450 2500
Text Label -5100 2500 0    60   ~ 0
CP_DTR
Wire Wire Line
	-2550 2300 -2550 2500
$Comp
L D DRI1
U 1 1 57F4FF84
P -3300 4200
F 0 "DRI1" H -3300 4300 50  0000 C CNN
F 1 "D" H -3300 4100 50  0000 C CNN
F 2 "" H -3300 4200 50  0000 C CNN
F 3 "" H -3300 4200 50  0000 C CNN
	1    -3300 4200
	-1   0    0    1   
$EndComp
Wire Wire Line
	-2550 3900 -2550 4200
$Comp
L R RRI1
U 1 1 57F4FF8B
P -2850 4200
F 0 "RRI1" V -2770 4200 50  0000 C CNN
F 1 "100" V -2850 4200 50  0000 C CNN
F 2 "" V -2920 4200 50  0000 C CNN
F 3 "" H -2850 4200 50  0000 C CNN
	1    -2850 4200
	0    1    1    0   
$EndComp
Wire Wire Line
	-2550 4200 -2700 4200
Wire Wire Line
	-3150 4200 -3000 4200
Wire Wire Line
	-4350 4200 -4100 4200
Wire Wire Line
	-4100 4200 -3450 4200
Text Label -5100 4050 0    60   ~ 0
CP_RI
Text Label -2550 3900 0    60   ~ 0
VIO
$Comp
L R RINT1
U 1 1 57F500C7
P -4500 4200
F 0 "RINT1" V -4420 4200 50  0000 C CNN
F 1 "50" V -4500 4200 50  0000 C CNN
F 2 "" V -4570 4200 50  0000 C CNN
F 3 "" H -4500 4200 50  0000 C CNN
	1    -4500 4200
	0    1    1    0   
$EndComp
Wire Wire Line
	-4650 4200 -5100 4200
Text Label -5100 4200 0    60   ~ 0
PMOD_INT
Wire Wire Line
	-5100 4050 -4100 4050
Wire Wire Line
	-4100 4050 -4100 4200
Connection ~ -4100 4200
Text Notes -5300 1800 0    60   ~ 0
GPIO.3\n * USB->Peripheral\n * Active Low
Text Notes -3000 1800 0    60   ~ 0
GPIO.2\n * USB->Peripheral\n * Active Low
$Comp
L D DIO2
U 1 1 57F51146
P -3500 -150
F 0 "DIO2" H -3500 -50 50  0000 C CNN
F 1 "D" H -3500 -250 50  0000 C CNN
F 2 "" H -3500 -150 50  0000 C CNN
F 3 "" H -3500 -150 50  0000 C CNN
	1    -3500 -150
	0    -1   1    0   
$EndComp
$Comp
L D DIO1
U 1 1 57F5114C
P -3200 -150
F 0 "DIO1" H -3200 -50 50  0000 C CNN
F 1 "D" H -3200 -250 50  0000 C CNN
F 2 "" H -3200 -150 50  0000 C CNN
F 3 "" H -3200 -150 50  0000 C CNN
	1    -3200 -150
	0    -1   1    0   
$EndComp
$Comp
L R RDIO1
U 1 1 57F51152
P -3200 -600
F 0 "RDIO1" V -3120 -600 50  0000 C CNN
F 1 "100" V -3200 -600 50  0000 C CNN
F 2 "" V -3270 -600 50  0000 C CNN
F 3 "" H -3200 -600 50  0000 C CNN
	1    -3200 -600
	-1   0    0    -1  
$EndComp
$Comp
L R RDIO2
U 1 1 57F51158
P -3500 -600
F 0 "RDIO2" V -3420 -600 50  0000 C CNN
F 1 "100" V -3500 -600 50  0000 C CNN
F 2 "" V -3570 -600 50  0000 C CNN
F 3 "" H -3500 -600 50  0000 C CNN
	1    -3500 -600
	-1   0    0    -1  
$EndComp
Wire Wire Line
	-3500 -900 -3500 -750
Wire Wire Line
	-3200 -900 -3200 -750
Wire Wire Line
	-3200 -450 -3200 -300
Wire Wire Line
	-3500 -300 -3500 -450
Text Label -3350 -1050 0    60   ~ 0
VIO
Wire Wire Line
	-3200 0    -3200 300 
Wire Wire Line
	-3500 0    -3500 300 
Text Label -2250 300  0    60   ~ 0
CP_GPIO.2
Wire Wire Line
	-3700 -900 -3500 -900
Wire Wire Line
	-3500 -900 -3350 -900
Wire Wire Line
	-3350 -900 -3200 -900
Wire Wire Line
	-3200 -900 -3000 -900
Wire Wire Line
	-3350 -900 -3350 -1050
Connection ~ -3350 -900
Wire Wire Line
	-3200 300  -3000 300 
Wire Wire Line
	-3000 300  -2900 300 
Wire Wire Line
	-3000 -450 -3000 300 
Wire Wire Line
	-3000 300  -3000 550 
Wire Wire Line
	-3000 550  -3000 800 
Connection ~ -3000 300 
$Comp
L R RUIO1
U 1 1 57F51574
P -3000 -600
F 0 "RUIO1" V -2920 -600 50  0000 C CNN
F 1 "10k" V -3000 -600 50  0000 C CNN
F 2 "" V -3070 -600 50  0000 C CNN
F 3 "" H -3000 -600 50  0000 C CNN
	1    -3000 -600
	-1   0    0    -1  
$EndComp
Wire Wire Line
	-3000 -900 -3000 -750
Connection ~ -3200 -900
Text Notes -1750 300  0    60   ~ 0
< Out
Text Notes -1750 550  0    60   ~ 0
> In
Text Label -2250 550  0    60   ~ 0
CP_DCD
Connection ~ -3000 550 
Text Label -2250 800  0    60   ~ 0
PMOD_IO1
Text Notes -1750 800  0    60   ~ 0
<>BiDir
Text Label -4450 300  2    60   ~ 0
CP_GPIO.3
Text Notes -4950 300  2    60   ~ 0
Out >
Text Notes -4950 550  2    60   ~ 0
In <
Text Label -4450 550  2    60   ~ 0
CP_DSR
Text Label -4450 800  2    60   ~ 0
PMOD_IO2
Text Notes -5300 800  0    60   ~ 0
BiDir<>
Wire Wire Line
	-3700 -450 -3700 300 
Wire Wire Line
	-3700 300  -3700 550 
Wire Wire Line
	-3700 550  -3700 800 
$Comp
L R RUIO2
U 1 1 57F51C24
P -3700 -600
F 0 "RUIO2" V -3620 -600 50  0000 C CNN
F 1 "10k" V -3700 -600 50  0000 C CNN
F 2 "" V -3770 -600 50  0000 C CNN
F 3 "" H -3700 -600 50  0000 C CNN
	1    -3700 -600
	-1   0    0    -1  
$EndComp
Wire Wire Line
	-3700 -900 -3700 -750
Connection ~ -3500 -900
Connection ~ -3700 550 
$Comp
L JUMPER JPDTR1
U 1 1 57F52AB5
P -3900 2750
F 0 "JPDTR1" H -3900 2900 50  0000 C CNN
F 1 "JUMPER" H -3900 2670 50  0000 C CNN
F 2 "" H -3900 2750 50  0000 C CNN
F 3 "" H -3900 2750 50  0000 C CNN
	1    -3900 2750
	1    0    0    -1  
$EndComp
Wire Wire Line
	-3600 2750 -3550 2750
Wire Wire Line
	-3550 2750 -3550 2500
Connection ~ -3550 2500
Text Label -5100 2750 0    60   ~ 0
PMOD_RST
$Comp
L R RRST1
U 1 1 57F52EB3
P -4450 2750
F 0 "RRST1" V -4370 2750 50  0000 C CNN
F 1 "50" V -4450 2750 50  0000 C CNN
F 2 "" V -4520 2750 50  0000 C CNN
F 3 "" H -4450 2750 50  0000 C CNN
	1    -4450 2750
	0    1    1    0   
$EndComp
Wire Wire Line
	-5100 2750 -4600 2750
Wire Wire Line
	-4300 2750 -4200 2750
$Comp
L R RIO2
U 1 1 57F53D72
P -2600 800
F 0 "RIO2" V -2520 800 50  0000 C CNN
F 1 "50" V -2600 800 50  0000 C CNN
F 2 "" V -2670 800 50  0000 C CNN
F 3 "" H -2600 800 50  0000 C CNN
	1    -2600 800 
	0    1    1    0   
$EndComp
Wire Wire Line
	-3000 800  -2750 800 
Wire Wire Line
	-2250 800  -2450 800 
$Comp
L R RTX1
U 1 1 57F54253
P 2350 4900
F 0 "RTX1" V 2430 4900 50  0000 C CNN
F 1 "50" V 2350 4900 50  0000 C CNN
F 2 "" V 2280 4900 50  0000 C CNN
F 3 "" H 2350 4900 50  0000 C CNN
	1    2350 4900
	0    1    1    0   
$EndComp
$Comp
L R RRX1
U 1 1 57F543D4
P 2350 5100
F 0 "RRX1" V 2430 5100 50  0000 C CNN
F 1 "50" V 2350 5100 50  0000 C CNN
F 2 "" V 2280 5100 50  0000 C CNN
F 3 "" H 2350 5100 50  0000 C CNN
	1    2350 5100
	0    1    1    0   
$EndComp
$Comp
L R RCTS1
U 1 1 57F54490
P 2350 5300
F 0 "RCTS1" V 2430 5300 50  0000 C CNN
F 1 "50" V 2350 5300 50  0000 C CNN
F 2 "" V 2280 5300 50  0000 C CNN
F 3 "" H 2350 5300 50  0000 C CNN
	1    2350 5300
	0    1    1    0   
$EndComp
$Comp
L R RRTS1
U 1 1 57F545A3
P 2350 5500
F 0 "RRTS1" V 2430 5500 50  0000 C CNN
F 1 "50" V 2350 5500 50  0000 C CNN
F 2 "" V 2280 5500 50  0000 C CNN
F 3 "" H 2350 5500 50  0000 C CNN
	1    2350 5500
	0    1    1    0   
$EndComp
Wire Wire Line
	1950 4900 2200 4900
Wire Wire Line
	1950 5100 2200 5100
Wire Wire Line
	1950 5300 2200 5300
Wire Wire Line
	1950 5500 2200 5500
Wire Wire Line
	2500 4900 2750 4900
Wire Wire Line
	2500 5100 2750 5100
Wire Wire Line
	2500 5300 2750 5300
Wire Wire Line
	2500 5500 2750 5500
$Comp
L D DSP1
U 1 1 57F55702
P -4250 5500
F 0 "DSP1" H -4250 5600 50  0000 C CNN
F 1 "D" H -4250 5400 50  0000 C CNN
F 2 "" H -4250 5500 50  0000 C CNN
F 3 "" H -4250 5500 50  0000 C CNN
	1    -4250 5500
	-1   0    0    1   
$EndComp
$Comp
L R RSP1
U 1 1 57F55708
P -3800 5500
F 0 "RSP1" V -3720 5500 50  0000 C CNN
F 1 "100" V -3800 5500 50  0000 C CNN
F 2 "" V -3870 5500 50  0000 C CNN
F 3 "" H -3800 5500 50  0000 C CNN
	1    -3800 5500
	0    1    1    0   
$EndComp
Wire Wire Line
	-3500 5300 -3500 5500
Wire Wire Line
	-3500 5500 -3650 5500
Wire Wire Line
	-3950 5500 -4100 5500
Text Label -3500 5300 0    60   ~ 0
VIO
Wire Wire Line
	-5100 5500 -4950 5500
Wire Wire Line
	-4950 5500 -4400 5500
Text Label -5100 5500 0    60   ~ 0
CP_~SUSPEND~
Text Notes -5100 6250 0    60   ~ 0
~SUSPEND~ is asserted (goes low) when either;\n * CP2104 enters USB suspend mode\n * CP2104 is reset but not yet enumerated\n
Connection ~ -4950 5500
Wire Wire Line
	-4950 5500 -4950 5700
Wire Wire Line
	-4950 5700 -4900 5700
$Comp
L R RDSP1
U 1 1 57F55A10
P -4750 5700
F 0 "RDSP1" V -4670 5700 50  0000 C CNN
F 1 "10k" V -4750 5700 50  0000 C CNN
F 2 "" V -4820 5700 50  0000 C CNN
F 3 "" H -4750 5700 50  0000 C CNN
	1    -4750 5700
	0    1    1    0   
$EndComp
Wire Wire Line
	-4600 5700 -4500 5700
Wire Wire Line
	-4500 5700 -4500 5750
$Comp
L GND #PWR?
U 1 1 57F55C73
P -4500 5750
F 0 "#PWR?" H -4500 5500 50  0001 C CNN
F 1 "GND" H -4500 5600 50  0000 C CNN
F 2 "" H -4500 5750 50  0000 C CNN
F 3 "" H -4500 5750 50  0000 C CNN
	1    -4500 5750
	1    0    0    -1  
$EndComp
Wire Wire Line
	-3500 300  -3700 300 
Connection ~ -3700 300 
$Comp
L JUMPER JPIO11
U 1 1 57F56ED1
P -2600 300
F 0 "JPIO11" H -2600 450 50  0000 C CNN
F 1 "JUMPER" H -2600 220 50  0001 C CNN
F 2 "" H -2600 300 50  0000 C CNN
F 3 "" H -2600 300 50  0000 C CNN
	1    -2600 300 
	1    0    0    -1  
$EndComp
$Comp
L JUMPER JPIO12
U 1 1 57F57094
P -2600 550
F 0 "JPIO12" H -2600 700 50  0000 C CNN
F 1 "JUMPER" H -2600 470 50  0001 C CNN
F 2 "" H -2600 550 50  0000 C CNN
F 3 "" H -2600 550 50  0000 C CNN
	1    -2600 550 
	1    0    0    -1  
$EndComp
Wire Wire Line
	-2250 550  -2300 550 
Wire Wire Line
	-2300 300  -2250 300 
Wire Wire Line
	-3000 550  -2900 550 
Wire Wire Line
	-3700 300  -3800 300 
$Comp
L R RIO1
U 1 1 57F579B8
P -4100 800
F 0 "RIO1" V -4020 800 50  0000 C CNN
F 1 "50" V -4100 800 50  0000 C CNN
F 2 "" V -4170 800 50  0000 C CNN
F 3 "" H -4100 800 50  0000 C CNN
	1    -4100 800 
	0    -1   1    0   
$EndComp
Wire Wire Line
	-3700 800  -3950 800 
Wire Wire Line
	-4450 800  -4250 800 
$Comp
L JUMPER JPIO21
U 1 1 57F579C0
P -4100 300
F 0 "JPIO21" H -4100 450 50  0000 C CNN
F 1 "JUMPER" H -4100 220 50  0001 C CNN
F 2 "" H -4100 300 50  0000 C CNN
F 3 "" H -4100 300 50  0000 C CNN
	1    -4100 300 
	-1   0    0    -1  
$EndComp
$Comp
L JUMPER JPIO22
U 1 1 57F579C6
P -4100 550
F 0 "JPIO22" H -4100 700 50  0000 C CNN
F 1 "JUMPER" H -4100 470 50  0001 C CNN
F 2 "" H -4100 550 50  0000 C CNN
F 3 "" H -4100 550 50  0000 C CNN
	1    -4100 550 
	-1   0    0    -1  
$EndComp
Wire Wire Line
	-4450 550  -4400 550 
Wire Wire Line
	-4400 300  -4450 300 
Wire Wire Line
	-3700 550  -3800 550 
$EndSCHEMATC
