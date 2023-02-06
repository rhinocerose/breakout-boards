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
LIBS:special
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
LIBS:mine
LIBS:ulethe-cache
EELAYER 27 0
EELAYER END
$Descr A4 11693 8268
encoding utf-8
Sheet 1 1
Title "uLethe"
Date "27 nov 2014"
Rev "1"
Comp "Lethe"
Comment1 ""
Comment2 ""
Comment3 ""
Comment4 ""
$EndDescr
Text Notes 3400 850  0    60   ~ 0
Minimiman dev. board for most STM32 family of MCU with LQFP-48 packaging
$Comp
L LITHI_LOGO #G1
U 1 1 54763BE7
P 4800 600
F 0 "#G1" H 4790 434 60  0001 C CNN
F 1 "LITHI_LOGO" H 4810 766 60  0001 C CNN
F 2 "~" H 4800 600 60  0000 C CNN
F 3 "~" H 4800 600 60  0000 C CNN
	1    4800 600 
	1    0    0    -1  
$EndComp
$Comp
L CONN_6X2 P1
U 1 1 54763FEC
P 1950 4300
F 0 "P1" H 1950 4650 60  0000 C CNN
F 1 "HEADER 1" V 1950 4300 60  0000 C CNN
F 2 "" H 1950 4300 60  0000 C CNN
F 3 "" H 1950 4300 60  0000 C CNN
	1    1950 4300
	1    0    0    -1  
$EndComp
$Comp
L CONN_6X2 P2
U 1 1 54763FF9
P 4750 1700
F 0 "P2" H 4750 2050 60  0000 C CNN
F 1 "HEADER 2" V 4750 1700 60  0000 C CNN
F 2 "" H 4750 1700 60  0000 C CNN
F 3 "" H 4750 1700 60  0000 C CNN
	1    4750 1700
	0    -1   -1   0   
$EndComp
$Comp
L CONN_6X2 P4
U 1 1 54763FFF
P 8200 4350
F 0 "P4" H 8200 4700 60  0000 C CNN
F 1 "HEADER 3" V 8200 4350 60  0000 C CNN
F 2 "" H 8200 4350 60  0000 C CNN
F 3 "" H 8200 4350 60  0000 C CNN
	1    8200 4350
	1    0    0    -1  
$EndComp
$Comp
L CONN_6X2 P3
U 1 1 54764005
P 4800 6600
F 0 "P3" H 4800 6950 60  0000 C CNN
F 1 "HEADER 4" V 4800 6600 60  0000 C CNN
F 2 "" H 4800 6600 60  0000 C CNN
F 3 "" H 4800 6600 60  0000 C CNN
	1    4800 6600
	0    -1   -1   0   
$EndComp
Text Label 4300 3000 1    60   ~ 0
VDD
Text Label 4400 3000 1    60   ~ 0
VSS
Text Label 6200 3800 0    60   ~ 0
VDD
Text Label 6200 3900 0    60   ~ 0
VSS
Text Label 5400 5700 1    60   ~ 0
VDD
Text Label 5300 5700 1    60   ~ 0
VSS
Text Label 3500 3800 0    60   ~ 0
VDD
Text Label 3500 4500 0    60   ~ 0
VSS
Text Label 3500 4600 0    60   ~ 0
VDD
$Comp
L PWR_FLAG #FLG01
U 1 1 5476410A
P 7150 1400
F 0 "#FLG01" H 7150 1495 30  0001 C CNN
F 1 "PWR_FLAG" H 7150 1580 30  0000 C CNN
F 2 "" H 7150 1400 60  0000 C CNN
F 3 "" H 7150 1400 60  0000 C CNN
	1    7150 1400
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR02
U 1 1 54764119
P 7150 1600
F 0 "#PWR02" H 7150 1600 30  0001 C CNN
F 1 "GND" H 7150 1530 30  0001 C CNN
F 2 "" H 7150 1600 60  0000 C CNN
F 3 "" H 7150 1600 60  0000 C CNN
	1    7150 1600
	1    0    0    -1  
$EndComp
$Comp
L PWR_FLAG #FLG03
U 1 1 54764128
P 7500 1400
F 0 "#FLG03" H 7500 1495 30  0001 C CNN
F 1 "PWR_FLAG" H 7500 1580 30  0000 C CNN
F 2 "" H 7500 1400 60  0000 C CNN
F 3 "" H 7500 1400 60  0000 C CNN
	1    7500 1400
	1    0    0    -1  
$EndComp
$Comp
L C C1
U 1 1 54764164
P 7200 2550
F 0 "C1" H 7200 2650 40  0000 L CNN
F 1 "100nF" H 7206 2465 40  0000 L CNN
F 2 "~" H 7238 2400 30  0000 C CNN
F 3 "~" H 7200 2550 60  0000 C CNN
	1    7200 2550
	1    0    0    -1  
$EndComp
$Comp
L C C2
U 1 1 5476419B
P 7600 2550
F 0 "C2" H 7600 2650 40  0000 L CNN
F 1 "100nF" H 7606 2465 40  0000 L CNN
F 2 "~" H 7638 2400 30  0000 C CNN
F 3 "~" H 7600 2550 60  0000 C CNN
	1    7600 2550
	1    0    0    -1  
$EndComp
$Comp
L C C3
U 1 1 547641A1
P 7950 2550
F 0 "C3" H 7950 2650 40  0000 L CNN
F 1 "100nF" H 7956 2465 40  0000 L CNN
F 2 "~" H 7988 2400 30  0000 C CNN
F 3 "~" H 7950 2550 60  0000 C CNN
	1    7950 2550
	1    0    0    -1  
$EndComp
$Comp
L C C4
U 1 1 547641A7
P 8300 2550
F 0 "C4" H 8300 2650 40  0000 L CNN
F 1 "100nF" H 8306 2465 40  0000 L CNN
F 2 "~" H 8338 2400 30  0000 C CNN
F 3 "~" H 8300 2550 60  0000 C CNN
	1    8300 2550
	1    0    0    -1  
$EndComp
Wire Wire Line
	7200 2350 8300 2350
Connection ~ 7950 2350
Wire Wire Line
	7200 2750 8300 2750
Connection ~ 7600 2750
Connection ~ 7950 2750
Wire Wire Line
	7800 2350 7800 2150
Connection ~ 7800 2350
Text Label 7800 2150 0    60   ~ 0
VDD
Wire Wire Line
	7800 2750 7800 2950
Connection ~ 7800 2750
Text Label 7800 2950 0    60   ~ 0
VSS
Text Label 3500 3900 0    60   ~ 0
PC13
Text Label 3500 4000 0    60   ~ 0
PC14
Text Label 3500 4100 0    60   ~ 0
PC15
Text Label 3500 4200 0    60   ~ 0
OSC_IN
Text Label 3500 4300 0    60   ~ 0
OSC_OUT
Text Label 3500 4400 0    60   ~ 0
NRST
Text Label 3500 4700 0    60   ~ 0
PA0
Text Label 3500 4800 0    60   ~ 0
PA1
Text Label 3500 4900 0    60   ~ 0
PA2
Text Label 4300 5700 1    60   ~ 0
PA3
Text Label 4400 5700 1    60   ~ 0
PA4
Text Label 4500 5700 1    60   ~ 0
PA5
Text Label 4600 5700 1    60   ~ 0
PA6
Text Label 4700 5700 1    60   ~ 0
PA7
Text Label 4800 5700 1    60   ~ 0
PB0
Text Label 4900 5700 1    60   ~ 0
PB1
Text Label 5000 5700 1    60   ~ 0
BOOT1
Text Label 5100 5700 1    60   ~ 0
PB10
Text Label 5200 5700 1    60   ~ 0
PB11
Text Label 6200 4900 0    60   ~ 0
PB12
Text Label 6200 4800 0    60   ~ 0
PB13
Text Label 6200 4700 0    60   ~ 0
PB14
Text Label 6200 4600 0    60   ~ 0
PB15
Text Label 6200 4500 0    60   ~ 0
PA8
Text Label 6200 4400 0    60   ~ 0
TX1
Text Label 6200 4300 0    60   ~ 0
RX1
Text Label 6200 4200 0    60   ~ 0
PA11
Text Label 6200 4100 0    60   ~ 0
PA12
Text Label 6200 4000 0    60   ~ 0
SWDIO
Text Label 5400 3000 1    60   ~ 0
SWCLK
Text Label 5300 3000 1    60   ~ 0
PA15
Text Label 5200 3000 1    60   ~ 0
PB3
Text Label 5100 3000 1    60   ~ 0
PB4
Text Label 5000 3000 1    60   ~ 0
PB5
Text Label 4900 3000 1    60   ~ 0
PB6
Text Label 4800 3000 1    60   ~ 0
PB7
Text Label 4700 3000 1    60   ~ 0
BOOT0
Text Label 4600 3000 1    60   ~ 0
PB8
Text Label 4500 3000 1    60   ~ 0
PB9
Text Label 1550 4050 2    60   ~ 0
VDD
Text Label 2350 4050 0    60   ~ 0
PC13
Text Label 1550 4150 2    60   ~ 0
PC14
Text Label 2350 4150 0    60   ~ 0
PC15
Text Label 1550 4250 2    60   ~ 0
OSC_IN
Text Label 2350 4250 0    60   ~ 0
OSC_OUT
Text Label 1550 4350 2    60   ~ 0
NRST
Text Label 2350 4350 0    60   ~ 0
VSS
Text Label 1550 4450 2    60   ~ 0
VDD
Text Label 2350 4450 0    60   ~ 0
PA0
Text Label 1550 4550 2    60   ~ 0
PA1
Text Label 2350 4550 0    60   ~ 0
PA2
$Comp
L STM32L15X_QFN48 U1
U 1 1 54763FDD
P 4850 4350
F 0 "U1" H 4850 4250 50  0000 C CNN
F 1 "STM32L15X_QFN48" H 4850 4450 50  0000 C CNN
F 2 "" H 4850 4350 60  0000 C CNN
F 3 "" H 4850 4350 60  0000 C CNN
	1    4850 4350
	1    0    0    -1  
$EndComp
Text Label 4500 2100 3    60   ~ 0
VDD
Text Label 4500 1300 1    60   ~ 0
VSS
Text Label 4600 2100 3    60   ~ 0
PB9
Text Label 4600 1300 1    60   ~ 0
PB8
Text Label 4700 2100 3    60   ~ 0
BOOT0
Text Label 4700 1300 1    60   ~ 0
PB7
Text Label 4800 2100 3    60   ~ 0
PB6
Text Label 4800 1300 1    60   ~ 0
PB5
Text Label 4900 2100 3    60   ~ 0
PB4
Text Label 4900 1300 1    60   ~ 0
PB3
Text Label 5000 2100 3    60   ~ 0
PA15
Text Label 5000 1300 1    60   ~ 0
SWCLK
Text Label 7800 4100 2    60   ~ 0
VDD
Text Label 8600 4100 0    60   ~ 0
VSS
Text Label 7800 4200 2    60   ~ 0
SWDIO
Text Label 8600 4200 0    60   ~ 0
PA12
Text Label 7800 4300 2    60   ~ 0
PA11
Text Label 8600 4300 0    60   ~ 0
RX1
Text Label 7800 4400 2    60   ~ 0
TX1
Text Label 8600 4400 0    60   ~ 0
PA8
Text Label 7800 4500 2    60   ~ 0
PB15
Text Label 8600 4500 0    60   ~ 0
PB14
Text Label 7800 4600 2    60   ~ 0
PB13
Text Label 8600 4600 0    60   ~ 0
PB12
Text Label 4550 7000 3    60   ~ 0
PA3
Text Label 4550 6200 1    60   ~ 0
PA4
Text Label 4650 7000 3    60   ~ 0
PA5
Text Label 4650 6200 1    60   ~ 0
PA6
Text Label 4750 7000 3    60   ~ 0
PA7
Text Label 4750 6200 1    60   ~ 0
PB0
Text Label 4850 7000 3    60   ~ 0
PB1
Text Label 4850 6200 1    60   ~ 0
BOOT1
Text Label 4950 7000 3    60   ~ 0
PB10
Text Label 4950 6200 1    60   ~ 0
PB11
Text Label 5050 7000 3    60   ~ 0
VSS
Text Label 5050 6200 1    60   ~ 0
VDD
Connection ~ 7600 2350
Connection ~ 7200 2350
Connection ~ 7200 2750
Connection ~ 8300 2350
Connection ~ 8300 2750
$Comp
L CRYSTAL X1
U 1 1 547647A1
P 1950 1850
F 0 "X1" H 1950 2000 60  0000 C CNN
F 1 "HSE" H 1950 1700 60  0000 C CNN
F 2 "~" H 1950 1850 60  0000 C CNN
F 3 "~" H 1950 1850 60  0000 C CNN
	1    1950 1850
	-1   0    0    1   
$EndComp
Wire Notes Line
	3100 1400 1100 1400
Text Notes 1500 1600 0    60   ~ 0
Optional HSE Crystal\n
$Comp
L C C5
U 1 1 547647EE
P 1650 2050
F 0 "C5" H 1650 2150 40  0000 L CNN
F 1 "20pF" H 1656 1965 40  0000 L CNN
F 2 "~" H 1688 1900 30  0000 C CNN
F 3 "~" H 1650 2050 60  0000 C CNN
	1    1650 2050
	1    0    0    -1  
$EndComp
$Comp
L C C6
U 1 1 547647FB
P 2250 2050
F 0 "C6" H 2250 2150 40  0000 L CNN
F 1 "20pF" H 2256 1965 40  0000 L CNN
F 2 "~" H 2288 1900 30  0000 C CNN
F 3 "~" H 2250 2050 60  0000 C CNN
	1    2250 2050
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR04
U 1 1 5476483D
P 1650 2250
F 0 "#PWR04" H 1650 2250 30  0001 C CNN
F 1 "GND" H 1650 2180 30  0001 C CNN
F 2 "" H 1650 2250 60  0000 C CNN
F 3 "" H 1650 2250 60  0000 C CNN
	1    1650 2250
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR05
U 1 1 54764843
P 2250 2250
F 0 "#PWR05" H 2250 2250 30  0001 C CNN
F 1 "GND" H 2250 2180 30  0001 C CNN
F 2 "" H 2250 2250 60  0000 C CNN
F 3 "" H 2250 2250 60  0000 C CNN
	1    2250 2250
	1    0    0    -1  
$EndComp
Text Label 1650 1850 2    60   ~ 0
OSC_IN
Text Label 2250 1850 0    60   ~ 0
OSC_OUT
Wire Notes Line
	3100 1400 3100 2350
Wire Notes Line
	3100 2350 1100 2350
Wire Notes Line
	1100 2350 1100 1400
Wire Wire Line
	7150 1400 7150 1600
Wire Wire Line
	7500 1400 7500 1600
Text Label 7150 1600 0    60   ~ 0
VSS
Text Label 7500 1600 0    60   ~ 0
VDD
$EndSCHEMATC
