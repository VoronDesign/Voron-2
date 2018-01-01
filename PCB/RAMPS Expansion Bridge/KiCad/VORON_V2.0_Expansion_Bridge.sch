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
LIBS:VORON_V2.0_Expander_Bridge-cache
EELAYER 25 0
EELAYER END
$Descr A4 11693 8268
encoding utf-8
Sheet 1 1
Title "VORON Expansion Bridge"
Date "2017-09-08"
Rev "A"
Comp ""
Comment1 ""
Comment2 ""
Comment3 " CARLOS RUIZ"
Comment4 " MAKSIM ZOLIN"
$EndDescr
$Comp
L CONN_02X05 J3
U 1 1 59B1EFC0
P 4575 3800
F 0 "J3" H 4575 4100 50  0000 C CNN
F 1 "CONN_02X05" H 4575 3500 50  0001 C CNN
F 2 "VORON_V2.0:PIN_SOCKET_BOTTOM_2X5" H 4575 2600 50  0001 C CNN
F 3 "" H 4575 2600 50  0000 C CNN
	1    4575 3800
	1    0    0    -1  
$EndComp
$Comp
L VCC #PWR03
U 1 1 59B292FF
P 4275 3550
F 0 "#PWR03" H 4275 3400 50  0001 C CNN
F 1 "VCC" H 4275 3700 50  0000 C CNN
F 2 "" H 4275 3550 50  0000 C CNN
F 3 "" H 4275 3550 50  0000 C CNN
	1    4275 3550
	1    0    0    -1  
$EndComp
Text GLabel 4250 3700 0    49   Input ~ 0
DIR_1(A5/D59)
Text GLabel 4250 3800 0    49   Input ~ 0
STEP_1(A10/D64)
Text GLabel 4250 3900 0    49   Input ~ 0
EN_1(D44)
Text GLabel 4950 3700 2    49   Input ~ 0
DIR_2(A9/D63)
Text GLabel 4950 3800 2    49   Input ~ 0
STEP_2(D48)
Text GLabel 4950 3900 2    49   Input ~ 0
EN_2(D42)
$Comp
L GND #PWR04
U 1 1 59B2A908
P 4875 4150
F 0 "#PWR04" H 4875 3900 50  0001 C CNN
F 1 "GND" H 4875 4000 50  0000 C CNN
F 2 "" H 4875 4150 50  0000 C CNN
F 3 "" H 4875 4150 50  0000 C CNN
	1    4875 4150
	1    0    0    -1  
$EndComp
Text GLabel 4200 3075 0    49   Input ~ 0
EN_3(A4/D58)
Text GLabel 4200 2975 0    49   Input ~ 0
STEP_3(A3/D57)
$Comp
L CONN_01X04 J1
U 1 1 59B33222
P 4525 4625
F 0 "J1" H 4525 4875 50  0000 C CNN
F 1 " " V 4625 4625 50  0001 C CNN
F 2 "VORON_V2.0:PIN_SOCKET_BOTTOM_1X4" H 4525 4625 50  0001 C CNN
F 3 "" H 4525 4625 50  0000 C CNN
	1    4525 4625
	-1   0    0    -1  
$EndComp
Text Notes 3725 4525 0    60   ~ 0
PWM GPIOs
Text Notes 3725 4800 0    60   ~ 0
TOP ROW ON\nRAMP SERVO\nPORT
Wire Wire Line
	4275 3550 4275 3600
Wire Wire Line
	4275 3600 4325 3600
Wire Wire Line
	4825 3600 4875 3600
Wire Wire Line
	4325 3700 4250 3700
Wire Wire Line
	4250 3800 4325 3800
Wire Wire Line
	4250 3900 4325 3900
Wire Wire Line
	4950 3700 4825 3700
Wire Wire Line
	4950 3800 4825 3800
Wire Wire Line
	4825 3900 4950 3900
Wire Wire Line
	4875 3600 4875 4150
Wire Wire Line
	4200 2975 4325 2975
Wire Wire Line
	4200 3075 4325 3075
Wire Wire Line
	4725 4475 4800 4475
Wire Wire Line
	4725 4575 4800 4575
Wire Wire Line
	4725 4675 4800 4675
Wire Wire Line
	4725 4775 4800 4775
$Comp
L CONN_02X04 J2
U 1 1 59B1EDFA
P 4575 2925
F 0 "J2" H 4575 3175 50  0000 C CNN
F 1 "CONN_02X04" H 4575 2675 50  0001 C CNN
F 2 "VORON_V2.0:PIN_SOCKET_BOTTON_2X4" H 4575 1725 50  0001 C CNN
F 3 "" H 4575 1725 50  0000 C CNN
	1    4575 2925
	1    0    0    -1  
$EndComp
Wire Wire Line
	6800 4225 6675 4225
Text GLabel 7425 4025 2    49   Input ~ 0
EN_1(D44)
Text GLabel 7425 3725 2    49   Input ~ 0
EN_2(D42)
Wire Wire Line
	7300 4225 7425 4225
Text GLabel 7425 4125 2    49   Input ~ 0
STEP_1(A10/D64)
Text GLabel 7425 3825 2    49   Input ~ 0
STEP_2(D48)
Wire Wire Line
	7300 4125 7425 4125
Wire Wire Line
	6800 4125 6675 4125
Text GLabel 7425 4225 2    49   Input ~ 0
DIR_1(A5/D59)
Wire Wire Line
	6675 4025 6800 4025
Text GLabel 7425 3925 2    49   Input ~ 0
DIR_2(A9/D63)
Wire Wire Line
	7300 4025 7425 4025
Text GLabel 7425 3425 2    49   Input ~ 0
EN_3(A4/D58)
Wire Wire Line
	7300 3825 7425 3825
Text GLabel 7425 3525 2    49   Input ~ 0
STEP_3(A3/D57)
Wire Wire Line
	7300 3725 7425 3725
Wire Wire Line
	7425 3625 7300 3625
$Comp
L GND #PWR07
U 1 1 5A11EBA9
P 6475 3450
F 0 "#PWR07" H 6475 3200 50  0001 C CNN
F 1 "GND" H 6475 3300 50  0000 C CNN
F 2 "" H 6475 3450 50  0000 C CNN
F 3 "" H 6475 3450 50  0000 C CNN
	1    6475 3450
	1    0    0    -1  
$EndComp
Text GLabel 6675 4025 0    49   Input ~ 0
D4
Text GLabel 6675 4125 0    49   Input ~ 0
D5
Wire Wire Line
	7425 3425 7300 3425
Text GLabel 6675 4225 0    49   Input ~ 0
FAN2(D6)
Text GLabel 6675 4325 0    49   Input ~ 0
FAN1(D11)
Text GLabel 4800 4475 2    49   Input ~ 0
D4
Text GLabel 4800 4575 2    49   Input ~ 0
D5
Text GLabel 4800 4675 2    49   Input ~ 0
FAN2(D6)
Text GLabel 4800 4775 2    49   Input ~ 0
FAN1(D11)
Text GLabel 4250 4000 0    49   Input ~ 0
DIR_3(A12/D66)
Wire Wire Line
	4250 4000 4325 4000
Wire Wire Line
	4950 4000 4825 4000
Wire Wire Line
	7425 3925 7300 3925
Wire Wire Line
	7425 3525 7300 3525
Text GLabel 7425 3625 2    49   Input ~ 0
DIR_3(A12/D66)
Wire Wire Line
	7350 4325 7300 4325
$Comp
L VCC #PWR08
U 1 1 5A3838AB
P 7350 3125
F 0 "#PWR08" H 7350 2975 50  0001 C CNN
F 1 "VCC" H 7350 3275 50  0000 C CNN
F 2 "" H 7350 3125 50  0000 C CNN
F 3 "" H 7350 3125 50  0000 C CNN
	1    7350 3125
	1    0    0    -1  
$EndComp
Wire Wire Line
	7350 3125 7350 3225
Wire Wire Line
	8250 3325 7300 3325
Text GLabel 7350 4325 2    49   Input ~ 0
Z_PROBE(A11/D65)
Wire Wire Line
	6675 4325 6800 4325
Wire Wire Line
	6750 3225 6750 3125
Text GLabel 4950 4000 2    49   Input ~ 0
Z_PROBE(A11/D65)
$Comp
L CONN_02X12 J4
U 1 1 5A11DE4E
P 7050 3775
F 0 "J4" H 7050 4425 50  0000 C CNN
F 1 "CONN_02X12" V 7050 3775 50  0000 C CNN
F 2 "VORON_V2.0:PIN_SOCKET_BOTTON_2X12" H 7050 2575 50  0001 C CNN
F 3 "" H 7050 2575 50  0000 C CNN
	1    7050 3775
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR09
U 1 1 5A387BC9
P 8250 3450
F 0 "#PWR09" H 8250 3200 50  0001 C CNN
F 1 "GND" H 8250 3300 50  0000 C CNN
F 2 "" H 8250 3450 50  0000 C CNN
F 3 "" H 8250 3450 50  0000 C CNN
	1    8250 3450
	1    0    0    -1  
$EndComp
Wire Wire Line
	8250 3325 8250 3450
$Comp
L VCC #PWR010
U 1 1 5A387CD9
P 6750 3125
F 0 "#PWR010" H 6750 2975 50  0001 C CNN
F 1 "VCC" H 6750 3275 50  0000 C CNN
F 2 "" H 6750 3125 50  0000 C CNN
F 3 "" H 6750 3125 50  0000 C CNN
	1    6750 3125
	1    0    0    -1  
$EndComp
Wire Wire Line
	6475 3325 6475 3450
Wire Wire Line
	6475 3325 6800 3325
Wire Wire Line
	6800 3425 6750 3425
Wire Wire Line
	6750 3425 6750 3325
Connection ~ 6750 3325
Wire Wire Line
	6750 3225 6800 3225
Wire Wire Line
	7350 3225 7300 3225
NoConn ~ 4325 2775
NoConn ~ 4325 2875
NoConn ~ 4825 2775
NoConn ~ 4825 2875
NoConn ~ 4825 2975
NoConn ~ 4825 3075
NoConn ~ 6800 3525
NoConn ~ 6800 3625
NoConn ~ 6800 3725
NoConn ~ 6800 3825
NoConn ~ 6800 3925
$EndSCHEMATC
