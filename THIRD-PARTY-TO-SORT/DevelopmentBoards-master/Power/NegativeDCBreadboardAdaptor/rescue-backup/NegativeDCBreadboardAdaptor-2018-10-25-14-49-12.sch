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
LIBS:_tc7662b
LIBS:NegativeDCBreadboardAdaptor-cache
EELAYER 25 0
EELAYER END
$Descr User 8268 5827
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
L CP C_NEG1
U 1 1 5AEB9CA7
P 3150 2000
F 0 "C_NEG1" H 3175 2100 50  0000 L CNN
F 1 "10uF" H 3175 1900 50  0000 L CNN
F 2 "Capacitors_SMD:CP_Elec_4x5.3" H 3188 1850 50  0001 C CNN
F 3 "" H 3150 2000 50  0001 C CNN
	1    3150 2000
	1    0    0    -1  
$EndComp
$Comp
L CP C_NEG2
U 1 1 5AEB9CE5
P 4700 2550
F 0 "C_NEG2" H 4725 2650 50  0000 L CNN
F 1 "10uF" H 4725 2450 50  0000 L CNN
F 2 "Capacitors_SMD:CP_Elec_4x5.3" H 4738 2400 50  0001 C CNN
F 3 "" H 4700 2550 50  0001 C CNN
	1    4700 2550
	-1   0    0    1   
$EndComp
$Comp
L CP C_BP1
U 1 1 5AEBA0C3
P 2150 1850
F 0 "C_BP1" H 2175 1950 50  0000 L CNN
F 1 "2.2uF" H 2175 1750 50  0000 L CNN
F 2 "Capacitors_SMD:CP_Elec_4x5.3" H 2188 1700 50  0001 C CNN
F 3 "" H 2150 1850 50  0001 C CNN
	1    2150 1850
	1    0    0    -1  
$EndComp
Text Label 4700 3450 1    60   ~ 0
GND
NoConn ~ 4550 1850
$Comp
L _TC7662B U_NEGDC1
U 1 1 5AEBAD9E
P 4050 1925
F 0 "U_NEGDC1" H 4050 2375 60  0000 C CNN
F 1 "_TC7662B" H 4025 2275 60  0000 C CNN
F 2 "SMD_Packages:SOIC-8-N" H 4050 1925 60  0001 C CNN
F 3 "" H 4050 1925 60  0001 C CNN
	1    4050 1925
	1    0    0    -1  
$EndComp
$Comp
L PWR_FLAG #FLG01
U 1 1 5AEBAEC4
P 1825 1300
F 0 "#FLG01" H 1825 1375 50  0001 C CNN
F 1 "PWR_FLAG" H 1825 1450 50  0000 C CNN
F 2 "" H 1825 1300 50  0001 C CNN
F 3 "" H 1825 1300 50  0001 C CNN
	1    1825 1300
	1    0    0    -1  
$EndComp
$Comp
L C C_BP2
U 1 1 5AECD463
P 2650 1850
F 0 "C_BP2" H 2675 1950 50  0000 L CNN
F 1 "100nF" H 2675 1750 50  0000 L CNN
F 2 "Capacitors_SMD:CP_Elec_4x5.3" H 2688 1700 50  0001 C CNN
F 3 "" H 2650 1850 50  0001 C CNN
	1    2650 1850
	1    0    0    -1  
$EndComp
Wire Wire Line
	3150 2150 3550 2150
Wire Wire Line
	3150 1850 3550 1850
Wire Wire Line
	4550 2150 6250 2150
Wire Wire Line
	4700 2150 4700 2400
Wire Wire Line
	3550 2000 3400 2000
Wire Wire Line
	3400 2000 3400 3150
Connection ~ 4700 2150
Wire Wire Line
	3550 1700 3400 1700
Wire Wire Line
	3400 1700 3400 1350
Wire Wire Line
	1700 1350 5950 1350
Wire Wire Line
	4750 1350 4750 1700
Wire Wire Line
	4750 1700 4550 1700
Connection ~ 3400 1350
Wire Wire Line
	1700 2350 3400 2350
Connection ~ 3400 2350
Wire Wire Line
	2150 1700 2150 1350
Connection ~ 2150 1350
Wire Wire Line
	2150 2000 2150 2350
Connection ~ 2150 2350
Connection ~ 4750 1350
Wire Wire Line
	3400 3150 5950 3150
Wire Wire Line
	5050 2000 4550 2000
Wire Wire Line
	4700 2700 4700 3450
Wire Wire Line
	1825 1300 1825 1350
Connection ~ 1825 1350
Wire Wire Line
	2650 1700 2650 1350
Connection ~ 2650 1350
Wire Wire Line
	2650 2000 2650 2350
Connection ~ 2650 2350
Connection ~ 4700 3150
Wire Wire Line
	5050 3150 5050 2000
Connection ~ 5050 3150
Wire Wire Line
	1700 1350 1700 1650
Wire Wire Line
	1700 1650 1475 1650
Wire Wire Line
	1700 2350 1700 2050
Wire Wire Line
	1700 2050 1475 2050
NoConn ~ 1475 1750
NoConn ~ 1475 1950
$Comp
L Conn_01x05 J_IN1
U 1 1 5AED9D68
P 1275 1850
F 0 "J_IN1" H 1275 2150 50  0000 C CNN
F 1 "Conn_01x05" H 1275 1550 50  0000 C CNN
F 2 "Pin_Headers:Pin_Header_Straight_1x05_Pitch2.54mm" H 1275 1850 50  0001 C CNN
F 3 "" H 1275 1850 50  0001 C CNN
	1    1275 1850
	-1   0    0    -1  
$EndComp
NoConn ~ 1475 1850
$Comp
L Conn_01x05 J_OUT1
U 1 1 5AED9E9B
P 6450 2150
F 0 "J_OUT1" H 6450 2450 50  0000 C CNN
F 1 "Conn_01x05" H 6450 1850 50  0000 C CNN
F 2 "Pin_Headers:Pin_Header_Straight_1x05_Pitch2.54mm" H 6450 2150 50  0001 C CNN
F 3 "" H 6450 2150 50  0001 C CNN
	1    6450 2150
	1    0    0    -1  
$EndComp
Wire Wire Line
	5950 1350 5950 1950
Wire Wire Line
	5950 1950 6250 1950
Wire Wire Line
	5950 3150 5950 2350
Wire Wire Line
	5950 2350 6250 2350
NoConn ~ 6250 2050
NoConn ~ 6250 2250
$EndSCHEMATC
