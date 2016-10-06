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
LIBS:cp2104
LIBS:pmod-cp2104-cache
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
P 2200 2450
F 0 "P1" H 2200 2800 60  0000 C CNN
F 1 "PMOD-CONN_6X2" V 2200 2450 39  0000 C CNN
F 2 "Pin_Headers:Pin_Header_Angled_2x06" H 2200 2450 60  0001 C CNN
F 3 "" H 2200 2450 60  0000 C CNN
	1    2200 2450
	-1   0    0    -1  
$EndComp
Text Notes 9500 2850 0    60   ~ 0
UART with hardware flow Control\n-------------------\nTXD ->\nRXD <-\nCTS <-\nRTS ->\n
$Comp
L D DTX1
U 1 1 57F4CF9B
P 2500 5200
F 0 "DTX1" H 2500 5300 50  0000 C CNN
F 1 "D" H 2500 5100 50  0001 C CNN
F 2 "LEDs:LED_0402" H 2500 5200 50  0001 C CNN
F 3 "" H 2500 5200 50  0000 C CNN
	1    2500 5200
	1    0    0    1   
$EndComp
$Comp
L D DRX1
U 1 1 57F4D00A
P 2500 5000
F 0 "DRX1" H 2500 5100 50  0000 C CNN
F 1 "D" H 2500 4900 50  0001 C CNN
F 2 "LEDs:LED_0402" H 2500 5000 50  0001 C CNN
F 3 "" H 2500 5000 50  0000 C CNN
	1    2500 5000
	1    0    0    1   
$EndComp
Text Notes 600  2000 0    60   ~ 0
Pmod Interface Type 4A (expanded UART) \n-----------\nPin 1 - CTS - In  - Peripheral can transmit\nPin 2 - TXD - Out - Data - Host to peripheral\nPin 3 - RXD - In  - Data - Peripheral to host\nPin 4 - RTS - Out - Peripheral ready for data\nPin 5 - GND\nPin 6 - VCC\n\nPin  7 - INT - In -  Interrupt signal from peripheral to host \nPin  8 - RESET - Out - Reset signal for host to reset peripheral \nPin  9 - IO1 - BiDir\nPin 10 - IO2 - BiDir\nPin 11 - GND\nPin 12 - VCC
Text Label 3700 2200 2    60   ~ 0
PMOD_CTS
Text Label 3700 2300 2    60   ~ 0
PMOD_TXD
Text Label 3700 2400 2    60   ~ 0
PMOD_RXD
Text Label 3700 2500 2    60   ~ 0
PMOD_RTS
Text Label 600  2200 0    60   ~ 0
PMOD_INT
Text Label 600  2300 0    60   ~ 0
PMOD_RST
Text Label 600  2400 0    60   ~ 0
PMOD_IO1
Text Label 600  2500 0    60   ~ 0
PMOD_IO2
Text Label 7900 5200 0    60   ~ 0
VUSB
Text Label 2350 2900 2    60   ~ 0
VPMOD
$Comp
L GND #PWR01
U 1 1 57F4D651
P 2200 3100
F 0 "#PWR01" H 2200 2850 50  0001 C CNN
F 1 "GND" H 2200 2950 50  0000 C CNN
F 2 "" H 2200 3100 50  0000 C CNN
F 3 "" H 2200 3100 50  0000 C CNN
	1    2200 3100
	-1   0    0    -1  
$EndComp
$Comp
L USB_OTG P2
U 1 1 57F4D6DE
P 8550 5400
F 0 "P2" H 8875 5275 50  0000 C CNN
F 1 "USB_OTG" H 8550 5600 50  0000 C CNN
F 2 "Connect:USB_Mini-B" V 8500 5300 50  0001 C CNN
F 3 "" V 8500 5300 50  0000 C CNN
	1    8550 5400
	0    1    1    0   
$EndComp
Text Label 7900 5300 0    60   ~ 0
D-
Text Label 7900 5400 0    60   ~ 0
D+
NoConn ~ 8250 5500
$Comp
L GND #PWR02
U 1 1 57F4D8AA
P 8400 5950
F 0 "#PWR02" H 8400 5700 50  0001 C CNN
F 1 "GND" H 8400 5800 50  0000 C CNN
F 2 "" H 8400 5950 50  0000 C CNN
F 3 "" H 8400 5950 50  0000 C CNN
	1    8400 5950
	1    0    0    -1  
$EndComp
Text Notes 3950 -450 0    60   ~ 0
PModUSBUART\n---\nPin 1 - RTS\nPin 2 - RXD\nPin 3 - TXD\nPin 4 - CTS\nPin 5 - GND\nPin 6 - VCC\n\nLCL3V3 - Board *gets* power from VPMOD\nSYS3V3 - Board *provides* power to VPMOD
Text Notes 4000 2550 0    60   ~ 0
VIO ==VPMOD\n Thus VPMOD always sets the IO voltage level\n\nREGIN - Regulator input - Feed from VUSB\n\nTake output at VDD to feed PMOD / VIO\n\n\nRegulator can supply 100mA output
Text Label 5800 4400 1    60   ~ 0
CP_~RST
$Comp
L R RURST1
U 1 1 57F4DB18
P 5800 3850
F 0 "RURST1" V 5700 3850 50  0000 C CNN
F 1 "4k7" V 5800 3850 50  0000 C CNN
F 2 "Resistors_SMD:R_0603" V 5730 3850 50  0001 C CNN
F 3 "" H 5800 3850 50  0000 C CNN
	1    5800 3850
	1    0    0    -1  
$EndComp
Text Label 5800 3550 0    60   ~ 0
VIO
$Comp
L R RDRX1
U 1 1 57F4DD2D
P 2050 5000
F 0 "RDRX1" V 2130 5000 50  0000 C CNN
F 1 "LEDO" V 2050 5000 50  0000 C CNN
F 2 "Resistors_SMD:R_0603" V 1980 5000 50  0001 C CNN
F 3 "" H 2050 5000 50  0000 C CNN
	1    2050 5000
	0    -1   1    0   
$EndComp
$Comp
L R RDTX1
U 1 1 57F4DE41
P 2050 5200
F 0 "RDTX1" V 2130 5200 50  0000 C CNN
F 1 "LEDO" V 2050 5200 50  0000 C CNN
F 2 "Resistors_SMD:R_0603" V 1980 5200 50  0001 C CNN
F 3 "" H 2050 5200 50  0000 C CNN
	1    2050 5200
	0    -1   1    0   
$EndComp
Text Label 1750 4700 2    60   ~ 0
VDD
Text Label 2650 5200 0    60   ~ 0
CP_GPIO.0
Text Label 2650 5000 0    60   ~ 0
CP_GPIO.1
$Comp
L GND #PWR03
U 1 1 57F4E126
P 4200 5900
F 0 "#PWR03" H 4200 5650 50  0001 C CNN
F 1 "GND" H 4200 5750 50  0000 C CNN
F 2 "" H 4200 5900 50  0000 C CNN
F 3 "" H 4200 5900 50  0000 C CNN
	1    4200 5900
	1    0    0    -1  
$EndComp
$Comp
L C CVPP1
U 1 1 57F4E149
P 4200 5650
F 0 "CVPP1" H 4225 5750 50  0000 L CNN
F 1 "4.7uF" H 4225 5550 50  0000 L CNN
F 2 "Capacitors_SMD:C_0805" H 4238 5500 50  0001 C CNN
F 3 "" H 4200 5650 50  0000 C CNN
	1    4200 5650
	1    0    0    -1  
$EndComp
Text Label 4500 5400 0    60   ~ 0
CP_VPP
$Comp
L GND #PWR04
U 1 1 57F4E327
P 6750 4300
F 0 "#PWR04" H 6750 4050 50  0001 C CNN
F 1 "GND" H 6750 4150 50  0000 C CNN
F 2 "" H 6750 4300 50  0000 C CNN
F 3 "" H 6750 4300 50  0000 C CNN
	1    6750 4300
	-1   0    0    -1  
$EndComp
$Comp
L C CREGIN1
U 1 1 57F4E32D
P 6750 4050
F 0 "CREGIN1" H 6775 4150 50  0000 L CNN
F 1 "1uF" H 6775 3950 50  0000 L CNN
F 2 "Capacitors_SMD:C_0805" H 6788 3900 50  0001 C CNN
F 3 "" H 6750 4050 50  0000 C CNN
	1    6750 4050
	-1   0    0    -1  
$EndComp
Text Label 6450 3800 2    60   ~ 0
CP_REGIN
Text Notes 15050 6600 0    60   ~ 0
RI - Ring Indicator\n * Peripheral -> USB\n * Active Low\n * "Wake host up" signal\n\nMapping to PMOD_INT
Text Notes 15050 5150 0    60   ~ 0
DTR - Data Terminal Ready\n * USB -> Peripheral\n * Active Low\n * On Windows, DTR is held low while serial port is unopened\n\nMapping to PMOD_RST line
Text Notes 17350 3150 0    60   ~ 0
DCD -- Data Carrier Detect\n * Peripheral -> USB\n * Active Low\n * On Linux, while DCD is low, nothing to do.
Text Notes 15050 3150 0    60   ~ 0
DSR -- Data Set Ready\n * Peripheral -> USB\n * Active Low\n * Tied to DCD in "null modem" config.
$Comp
L D DDTR1
U 1 1 57F4F1C0
P 16450 4150
F 0 "DDTR1" H 16450 4250 50  0000 C CNN
F 1 "D" H 16450 4050 50  0000 C CNN
F 2 "LEDs:LED_0402" H 16450 4150 50  0001 C CNN
F 3 "" H 16450 4150 50  0000 C CNN
	1    16450 4150
	-1   0    0    1   
$EndComp
$Comp
L R RDDTR1
U 1 1 57F4F1C6
P 16900 4150
F 0 "RDDTR1" V 16980 4150 50  0000 C CNN
F 1 "LEDO" V 16900 4150 50  0000 C CNN
F 2 "Resistors_SMD:R_0603" V 16830 4150 50  0001 C CNN
F 3 "" H 16900 4150 50  0000 C CNN
	1    16900 4150
	0    1    1    0   
$EndComp
Text Label 17200 3950 0    60   ~ 0
VDD
Text Label 15050 4150 0    60   ~ 0
CP_DTR
$Comp
L D DRI1
U 1 1 57F4FF84
P 16450 5850
F 0 "DRI1" H 16450 5950 50  0000 C CNN
F 1 "D" H 16450 5750 50  0000 C CNN
F 2 "LEDs:LED_0402" H 16450 5850 50  0001 C CNN
F 3 "" H 16450 5850 50  0000 C CNN
	1    16450 5850
	-1   0    0    1   
$EndComp
$Comp
L R RDRI1
U 1 1 57F4FF8B
P 16900 5850
F 0 "RDRI1" V 16980 5850 50  0000 C CNN
F 1 "LEDO" V 16900 5850 50  0000 C CNN
F 2 "Resistors_SMD:R_0603" V 16830 5850 50  0001 C CNN
F 3 "" H 16900 5850 50  0000 C CNN
	1    16900 5850
	0    1    1    0   
$EndComp
Text Label 15050 5700 0    60   ~ 0
CP_RI
Text Label 17200 5550 0    60   ~ 0
VDD
$Comp
L R RINT1
U 1 1 57F500C7
P 1500 2200
F 0 "RINT1" V 1450 1950 50  0000 C CNN
F 1 "50" V 1500 2200 50  0000 C CNN
F 2 "Resistors_SMD:R_0603" V 1430 2200 50  0001 C CNN
F 3 "" H 1500 2200 50  0000 C CNN
	1    1500 2200
	0    1    1    0   
$EndComp
Text Label 15050 5850 0    60   ~ 0
PMOD_INT
Text Notes 15050 3600 0    60   ~ 0
GPIO.3\n * USB->Peripheral\n * Active Low
Text Notes 17350 3600 0    60   ~ 0
GPIO.2\n * USB->Peripheral\n * Active Low
$Comp
L D DIO2
U 1 1 57F51146
P 16850 1650
F 0 "DIO2" H 16850 1750 50  0000 C CNN
F 1 "D" H 16850 1550 50  0000 C CNN
F 2 "LEDs:LED_0402" H 16850 1650 50  0001 C CNN
F 3 "" H 16850 1650 50  0000 C CNN
	1    16850 1650
	0    -1   1    0   
$EndComp
$Comp
L D DIO1
U 1 1 57F5114C
P 17150 1650
F 0 "DIO1" H 17150 1750 50  0000 C CNN
F 1 "D" H 17150 1550 50  0000 C CNN
F 2 "LEDs:LED_0402" H 17150 1650 50  0001 C CNN
F 3 "" H 17150 1650 50  0000 C CNN
	1    17150 1650
	0    -1   1    0   
$EndComp
$Comp
L R RDIO1
U 1 1 57F51152
P 17150 1200
F 0 "RDIO1" V 17230 1200 50  0000 C CNN
F 1 "LEDO" V 17150 1200 50  0000 C CNN
F 2 "Resistors_SMD:R_0603" V 17080 1200 50  0001 C CNN
F 3 "" H 17150 1200 50  0000 C CNN
	1    17150 1200
	-1   0    0    -1  
$EndComp
$Comp
L R RDIO2
U 1 1 57F51158
P 16850 1200
F 0 "RDIO2" V 16930 1200 50  0000 C CNN
F 1 "LEDO" V 16850 1200 50  0000 C CNN
F 2 "Resistors_SMD:R_0603" V 16780 1200 50  0001 C CNN
F 3 "" H 16850 1200 50  0000 C CNN
	1    16850 1200
	-1   0    0    -1  
$EndComp
Text Label 17000 650  0    60   ~ 0
VIO
Text Label 18100 2100 0    60   ~ 0
CP_GPIO.2
$Comp
L R RUIO1
U 1 1 57F51574
P 17350 1200
F 0 "RUIO1" V 17430 1200 50  0000 C CNN
F 1 "10k" V 17350 1200 50  0000 C CNN
F 2 "Resistors_SMD:R_0603" V 17280 1200 50  0001 C CNN
F 3 "" H 17350 1200 50  0000 C CNN
	1    17350 1200
	-1   0    0    -1  
$EndComp
Text Notes 18600 2100 0    60   ~ 0
< Out
Text Notes 18600 2350 0    60   ~ 0
> In
Text Label 18100 2350 0    60   ~ 0
CP_DCD
Text Label 18100 2600 0    60   ~ 0
PMOD_IO1
Text Notes 18600 2600 0    60   ~ 0
<>BiDir
Text Label 15900 2100 2    60   ~ 0
CP_GPIO.3
Text Notes 15400 2100 2    60   ~ 0
Out >
Text Notes 15400 2350 2    60   ~ 0
In <
Text Label 15900 2350 2    60   ~ 0
CP_DSR
Text Label 15900 2600 2    60   ~ 0
PMOD_IO2
Text Notes 15050 2600 0    60   ~ 0
BiDir<>
$Comp
L R RUIO2
U 1 1 57F51C24
P 16650 1200
F 0 "RUIO2" V 16730 1200 50  0000 C CNN
F 1 "10k" V 16650 1200 50  0000 C CNN
F 2 "Resistors_SMD:R_0603" V 16580 1200 50  0001 C CNN
F 3 "" H 16650 1200 50  0000 C CNN
	1    16650 1200
	-1   0    0    -1  
$EndComp
$Comp
L JUMPER JPDTR1
U 1 1 57F52AB5
P 15850 4400
F 0 "JPDTR1" H 15850 4550 50  0000 C CNN
F 1 "JUMPER" H 15850 4320 50  0000 C CNN
F 2 "Pin_Headers:Pin_Header_Straight_1x02" H 15850 4400 50  0001 C CNN
F 3 "" H 15850 4400 50  0000 C CNN
	1    15850 4400
	1    0    0    -1  
$EndComp
Text Label 15050 4400 0    60   ~ 0
PMOD_RST
$Comp
L R RRST1
U 1 1 57F52EB3
P 1500 2300
F 0 "RRST1" V 1450 2050 50  0000 C CNN
F 1 "50" V 1500 2300 50  0000 C CNN
F 2 "Resistors_SMD:R_0603" V 1430 2300 50  0001 C CNN
F 3 "" H 1500 2300 50  0000 C CNN
	1    1500 2300
	0    1    1    0   
$EndComp
$Comp
L R RIO2
U 1 1 57F53D72
P 1500 2500
F 0 "RIO2" V 1450 2250 50  0000 C CNN
F 1 "50" V 1500 2500 50  0000 C CNN
F 2 "Resistors_SMD:R_0603" V 1430 2500 50  0001 C CNN
F 3 "" H 1500 2500 50  0000 C CNN
	1    1500 2500
	0    1    1    0   
$EndComp
$Comp
L R RTX1
U 1 1 57F54253
P 2850 2300
F 0 "RTX1" V 2800 2550 50  0000 C CNN
F 1 "50" V 2850 2300 50  0000 C CNN
F 2 "Resistors_SMD:R_0603" V 2780 2300 50  0001 C CNN
F 3 "" H 2850 2300 50  0000 C CNN
	1    2850 2300
	0    1    1    0   
$EndComp
$Comp
L R RRX1
U 1 1 57F543D4
P 2850 2400
F 0 "RRX1" V 2800 2650 50  0000 C CNN
F 1 "50" V 2850 2400 50  0000 C CNN
F 2 "Resistors_SMD:R_0603" V 2780 2400 50  0001 C CNN
F 3 "" H 2850 2400 50  0000 C CNN
	1    2850 2400
	0    1    1    0   
$EndComp
$Comp
L R RCTS1
U 1 1 57F54490
P 2850 2200
F 0 "RCTS1" V 2800 2450 50  0000 C CNN
F 1 "50" V 2850 2200 50  0000 C CNN
F 2 "Resistors_SMD:R_0603" V 2780 2200 50  0001 C CNN
F 3 "" H 2850 2200 50  0000 C CNN
	1    2850 2200
	0    1    1    0   
$EndComp
$Comp
L R RRTS1
U 1 1 57F545A3
P 2850 2500
F 0 "RRTS1" V 2800 2750 50  0000 C CNN
F 1 "50" V 2850 2500 50  0000 C CNN
F 2 "Resistors_SMD:R_0603" V 2780 2500 50  0001 C CNN
F 3 "" H 2850 2500 50  0000 C CNN
	1    2850 2500
	0    1    1    0   
$EndComp
$Comp
L D DSP1
U 1 1 57F55702
P 2500 5600
F 0 "DSP1" H 2500 5700 50  0000 C CNN
F 1 "D" H 2500 5500 50  0000 C CNN
F 2 "LEDs:LED_0402" H 2500 5600 50  0001 C CNN
F 3 "" H 2500 5600 50  0000 C CNN
	1    2500 5600
	1    0    0    1   
$EndComp
$Comp
L R RDSP1
U 1 1 57F55708
P 2050 5600
F 0 "RDSP1" V 2130 5600 50  0000 C CNN
F 1 "LEDO" V 2050 5600 50  0000 C CNN
F 2 "Resistors_SMD:R_0603" V 1980 5600 50  0001 C CNN
F 3 "" H 2050 5600 50  0000 C CNN
	1    2050 5600
	0    -1   1    0   
$EndComp
Text Label 2650 5600 0    60   ~ 0
CP_~SUSPEND~
Text Notes 1800 6050 0    60   ~ 0
~SUSPEND~ is asserted (goes low) when either;\n * CP2104 enters USB suspend mode\n * CP2104 is reset but not yet enumerated\n
$Comp
L R RUSP1
U 1 1 57F55A10
P 3550 5300
F 0 "RUSP1" V 3630 5300 50  0000 C CNN
F 1 "10k" V 3550 5300 50  0000 C CNN
F 2 "Resistors_SMD:R_0603" V 3480 5300 50  0001 C CNN
F 3 "" H 3550 5300 50  0000 C CNN
	1    3550 5300
	0    -1   1    0   
$EndComp
$Comp
L GND #PWR05
U 1 1 57F55C73
P 3350 5350
F 0 "#PWR05" H 3350 5100 50  0001 C CNN
F 1 "GND" H 3350 5200 50  0000 C CNN
F 2 "" H 3350 5350 50  0000 C CNN
F 3 "" H 3350 5350 50  0000 C CNN
	1    3350 5350
	-1   0    0    -1  
$EndComp
$Comp
L JUMPER JPIO11
U 1 1 57F56ED1
P 17750 2100
F 0 "JPIO11" H 17750 2250 50  0000 C CNN
F 1 "JUMPER" H 17750 2020 50  0001 C CNN
F 2 "Pin_Headers:Pin_Header_Straight_1x02" H 17750 2100 50  0001 C CNN
F 3 "" H 17750 2100 50  0000 C CNN
	1    17750 2100
	1    0    0    -1  
$EndComp
$Comp
L JUMPER JPIO12
U 1 1 57F57094
P 17750 2350
F 0 "JPIO12" H 17750 2500 50  0000 C CNN
F 1 "JUMPER" H 17750 2270 50  0001 C CNN
F 2 "Pin_Headers:Pin_Header_Straight_1x02" H 17750 2350 50  0001 C CNN
F 3 "" H 17750 2350 50  0000 C CNN
	1    17750 2350
	1    0    0    -1  
$EndComp
$Comp
L R RIO1
U 1 1 57F579B8
P 1500 2400
F 0 "RIO1" V 1450 2650 50  0000 C CNN
F 1 "50" V 1500 2400 50  0000 C CNN
F 2 "Resistors_SMD:R_0603" V 1430 2400 50  0001 C CNN
F 3 "" H 1500 2400 50  0000 C CNN
	1    1500 2400
	0    -1   1    0   
$EndComp
$Comp
L JUMPER JPIO21
U 1 1 57F579C0
P 16250 2100
F 0 "JPIO21" H 16250 2250 50  0000 C CNN
F 1 "JUMPER" H 16250 2020 50  0001 C CNN
F 2 "Pin_Headers:Pin_Header_Straight_1x02" H 16250 2100 50  0001 C CNN
F 3 "" H 16250 2100 50  0000 C CNN
	1    16250 2100
	-1   0    0    -1  
$EndComp
$Comp
L JUMPER JPIO22
U 1 1 57F579C6
P 16250 2350
F 0 "JPIO22" H 16250 2500 50  0000 C CNN
F 1 "JUMPER" H 16250 2270 50  0001 C CNN
F 2 "Pin_Headers:Pin_Header_Straight_1x02" H 16250 2350 50  0001 C CNN
F 3 "" H 16250 2350 50  0000 C CNN
	1    16250 2350
	-1   0    0    -1  
$EndComp
Text Notes 3450 4850 2    60   ~ 0
Transmit and Receive indicator LEDs
Text Label 3000 2900 0    60   ~ 0
VIO
$Comp
L JUMPER JPVDD1
U 1 1 57F5C981
P 3800 2900
F 0 "JPVDD1" H 3800 3050 50  0000 C CNN
F 1 "JUMPER" H 3800 2820 50  0001 C CNN
F 2 "Pin_Headers:Pin_Header_Straight_1x02" H 3800 2900 50  0001 C CNN
F 3 "" H 3800 2900 50  0000 C CNN
	1    3800 2900
	1    0    0    -1  
$EndComp
Text Label 4400 2900 0    60   ~ 0
VDD
$Comp
L VDD #PWR06
U 1 1 57F5D066
P 4400 2750
F 0 "#PWR06" H 4400 2600 50  0001 C CNN
F 1 "VDD" H 4400 2900 50  0000 C CNN
F 2 "" H 4400 2750 50  0000 C CNN
F 3 "" H 4400 2750 50  0000 C CNN
	1    4400 2750
	1    0    0    -1  
$EndComp
Text Notes 3400 3150 0    60   ~ 0
UART Providing 3.3V power to PMOD Connector\nPMOD VCC <-- UART
Text Label 17000 850  0    60   ~ 0
VDD
Text Notes -3750 -1800 0    60   ~ 0
Indicator LEDs are between VIO and VDD. \nPulling low will cause them to light up.\n\nVIO - High - Min 1V8, Max 3V3\nVDD - 3V3\n\n3.3 - 1.8 == 1.5V -> LED doesn't conduct / turn on\n
$Comp
L CP2104 U1
U 1 1 57F63224
P 6300 5900
F 0 "U1" V 6625 5400 60  0000 C CNN
F 1 "CP2104" V 6725 5400 60  0000 C CNN
F 2 "Housings_DFN_QFN:QFN-24_4x4mm_Pitch0.5mm" H 6850 5300 60  0001 C CNN
F 3 "" H 6850 5300 60  0001 C CNN
	1    6300 5900
	-1   0    0    1   
$EndComp
Wire Wire Line
	1800 2700 1750 2700
Wire Wire Line
	1750 2700 1750 2900
Wire Wire Line
	1750 2900 3500 2900
Wire Wire Line
	2650 2900 2650 2700
Wire Wire Line
	2650 2700 2600 2700
Wire Wire Line
	2600 2600 2700 2600
Wire Wire Line
	2700 2600 2700 3050
Wire Wire Line
	2700 3050 1700 3050
Wire Wire Line
	1700 3050 1700 2600
Wire Wire Line
	1700 2600 1800 2600
Wire Wire Line
	2200 3100 2200 3050
Connection ~ 2200 3050
Wire Wire Line
	7500 5200 8250 5200
Wire Wire Line
	6500 5300 8250 5300
Wire Wire Line
	6500 5400 8250 5400
Wire Wire Line
	8650 5900 8650 5800
Wire Wire Line
	8150 5900 8650 5900
Wire Wire Line
	8150 5900 8150 5600
Wire Wire Line
	8150 5600 8250 5600
Wire Wire Line
	8400 5900 8400 5950
Connection ~ 8400 5900
Wire Wire Line
	5800 4000 5800 4600
Wire Wire Line
	5800 3700 5800 3550
Wire Wire Line
	1750 5200 1900 5200
Wire Wire Line
	1750 4700 1750 5600
Wire Wire Line
	1900 5000 1750 5000
Connection ~ 1750 5000
Wire Wire Line
	2200 5000 2350 5000
Wire Wire Line
	2350 5200 2200 5200
Wire Wire Line
	2650 5000 4450 5000
Wire Wire Line
	2650 5200 5000 5200
Wire Wire Line
	4200 5900 4200 5800
Wire Wire Line
	4200 5500 4200 5400
Wire Wire Line
	4200 5400 5000 5400
Wire Wire Line
	6750 4300 6750 4200
Wire Wire Line
	6750 3800 6750 3900
Wire Wire Line
	6000 3800 6750 3800
Wire Wire Line
	17200 4150 17050 4150
Wire Wire Line
	16750 4150 16600 4150
Wire Wire Line
	15050 4150 16300 4150
Wire Wire Line
	17200 3950 17200 4150
Wire Wire Line
	17200 5550 17200 5850
Wire Wire Line
	17200 5850 17050 5850
Wire Wire Line
	16600 5850 16750 5850
Wire Wire Line
	15050 5850 16300 5850
Wire Wire Line
	15050 5700 15650 5700
Wire Wire Line
	15650 5700 15650 5850
Connection ~ 15650 5850
Wire Wire Line
	16850 900  16850 1050
Wire Wire Line
	17150 900  17150 1050
Wire Wire Line
	17150 1350 17150 1500
Wire Wire Line
	16850 1500 16850 1350
Wire Wire Line
	17150 1800 17150 2100
Wire Wire Line
	16850 2100 16850 1800
Wire Wire Line
	17000 900  17000 850 
Connection ~ 17000 900 
Wire Wire Line
	17150 2100 17450 2100
Wire Wire Line
	17350 1350 17350 2600
Connection ~ 17350 2100
Wire Wire Line
	17350 700  17350 1050
Connection ~ 17350 2350
Wire Wire Line
	16650 1350 16650 2600
Wire Wire Line
	16650 700  16650 1050
Connection ~ 16650 2350
Wire Wire Line
	16150 4400 16200 4400
Wire Wire Line
	16200 4400 16200 4150
Connection ~ 16200 4150
Wire Wire Line
	15050 4400 15550 4400
Wire Wire Line
	17350 2600 18100 2600
Wire Wire Line
	1750 5600 1900 5600
Wire Wire Line
	2200 5600 2350 5600
Wire Wire Line
	2650 5600 3900 5600
Connection ~ 3750 5600
Wire Wire Line
	3750 5600 3750 5300
Wire Wire Line
	3750 5300 3700 5300
Wire Wire Line
	3400 5300 3350 5300
Wire Wire Line
	3350 5300 3350 5350
Wire Wire Line
	16550 2100 16850 2100
Connection ~ 16650 2100
Wire Wire Line
	18100 2350 18050 2350
Wire Wire Line
	18050 2100 18100 2100
Wire Wire Line
	17350 2350 17450 2350
Wire Wire Line
	16650 2600 15900 2600
Wire Wire Line
	15900 2350 15950 2350
Wire Wire Line
	15950 2100 15900 2100
Wire Wire Line
	16650 2350 16550 2350
Wire Wire Line
	2600 2200 2700 2200
Wire Wire Line
	2600 2300 2700 2300
Wire Wire Line
	2600 2400 2700 2400
Wire Wire Line
	2600 2500 2700 2500
Wire Wire Line
	3000 2200 3700 2200
Wire Wire Line
	3700 2300 3000 2300
Wire Wire Line
	3000 2400 3700 2400
Wire Wire Line
	3700 2500 3000 2500
Wire Wire Line
	1800 2200 1650 2200
Wire Wire Line
	1650 2300 1800 2300
Wire Wire Line
	1800 2400 1650 2400
Wire Wire Line
	1650 2500 1800 2500
Wire Wire Line
	1350 2200 600  2200
Wire Wire Line
	600  2300 1350 2300
Wire Wire Line
	600  2400 1350 2400
Wire Wire Line
	600  2500 1350 2500
Connection ~ 2650 2900
Wire Wire Line
	4100 2900 4400 2900
Wire Wire Line
	4400 2900 4400 2750
Wire Wire Line
	16850 900  17150 900 
Wire Wire Line
	16650 700  17350 700 
Wire Wire Line
	17000 700  17000 650 
Connection ~ 17000 700 
Wire Wire Line
	5000 5100 4450 5100
Wire Wire Line
	4450 5100 4450 5000
Wire Wire Line
	5000 5300 3900 5300
Wire Wire Line
	3900 5300 3900 5600
Connection ~ 1750 5200
NoConn ~ 5700 4600
NoConn ~ 5000 5500
Text Label 4250 6450 0    60   ~ 0
PMOD_CTS
Text Label 4250 6750 0    60   ~ 0
PMOD_TXD
Text Label 4250 6650 0    60   ~ 0
PMOD_RXD
Text Label 4250 6550 0    60   ~ 0
PMOD_RTS
Wire Wire Line
	4950 6450 4250 6450
Wire Wire Line
	4250 6750 5700 6750
Wire Wire Line
	4250 6650 5600 6650
Wire Wire Line
	4250 6550 5500 6550
Wire Wire Line
	5000 5600 4950 5600
Wire Wire Line
	4950 5600 4950 6450
Wire Wire Line
	5500 6550 5500 6100
Wire Wire Line
	5600 6650 5600 6100
Wire Wire Line
	5700 6750 5700 6100
Wire Wire Line
	5800 6100 5800 7000
Wire Wire Line
	5800 7000 4250 7000
Wire Wire Line
	5900 6100 5900 7100
Wire Wire Line
	5900 7100 4250 7100
Wire Wire Line
	6000 6100 6000 7200
Wire Wire Line
	6000 7200 4250 7200
Text Label 4250 7000 0    60   ~ 0
CP_DSR
Text Label 4250 7100 0    60   ~ 0
CP_DTR
Text Label 4250 7200 0    60   ~ 0
CP_DCD
Wire Wire Line
	6000 4600 6000 3800
Wire Wire Line
	5900 4600 5900 3600
Wire Wire Line
	5900 3600 7500 3600
Wire Wire Line
	7500 3600 7500 5200
Wire Wire Line
	5500 4600 5500 4400
Wire Wire Line
	5500 4400 4250 4400
Wire Wire Line
	5600 4600 5600 4300
Wire Wire Line
	5600 4300 4250 4300
Text Label 4250 4400 0    60   ~ 0
CP_GPIO.2
Text Label 4250 4300 0    60   ~ 0
CP_GPIO.3
Wire Wire Line
	4250 7300 6650 7300
Wire Wire Line
	6650 7300 6650 5600
Wire Wire Line
	6650 5600 6500 5600
Text Label 4250 7300 0    60   ~ 0
CP_RI
Wire Wire Line
	6500 5200 6900 5200
Text Label 6900 5200 0    60   ~ 0
VIO
Wire Wire Line
	6500 5500 6800 5500
Wire Wire Line
	6800 5500 6800 5750
$Comp
L GND #PWR07
U 1 1 57F6A228
P 6800 5750
F 0 "#PWR07" H 6800 5500 50  0001 C CNN
F 1 "GND" H 6800 5600 50  0000 C CNN
F 2 "" H 6800 5750 50  0000 C CNN
F 3 "" H 6800 5750 50  0000 C CNN
	1    6800 5750
	1    0    0    -1  
$EndComp
$EndSCHEMATC
