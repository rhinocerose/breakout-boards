EESchema Schematic File Version 2
LIBS:ARMKit2
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
LIBS:ARMKit2-cache
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
L STM32F405RG U1
U 1 1 561C5305
P 3100 4500
F 0 "U1" H 1700 7050 60  0000 C CNN
F 1 "STM32F405RG" H 4250 1900 60  0000 C CNN
F 2 "Housings_QFP:LQFP-64_10x10mm_Pitch0.5mm" H 3150 4550 60  0000 C CNN
F 3 "" H 3050 5800 60  0000 C CNN
	1    3100 4500
	1    0    0    -1  
$EndComp
Wire Wire Line
	2650 1700 2650 1425
Wire Wire Line
	2800 1700 2800 1425
Wire Wire Line
	2950 1700 2950 1425
Wire Wire Line
	3100 1425 3100 1700
Wire Wire Line
	3400 1700 3400 1425
$Comp
L C C4
U 1 1 561C573E
P 9175 1225
F 0 "C4" H 9200 1325 50  0000 L CNN
F 1 ".1uF" H 9200 1125 50  0000 L CNN
F 2 "Capacitors_SMD:C_0805" H 9213 1075 30  0001 C CNN
F 3 "" H 9175 1225 60  0000 C CNN
	1    9175 1225
	1    0    0    -1  
$EndComp
Text GLabel 2650 1425 1    60   Input ~ 0
VDD1
Text GLabel 2800 1425 1    60   Input ~ 0
VDD1
Text GLabel 2950 1425 1    60   Input ~ 0
VDD1
Text GLabel 3100 1425 1    60   Input ~ 0
VDD1
Text GLabel 3400 1425 1    60   Input ~ 0
VDD1
Text GLabel 9175 850  1    60   Input ~ 0
VDD1
Wire Wire Line
	9175 850  9175 1075
Connection ~ 9175 950 
Wire Wire Line
	9175 1375 9175 1700
Connection ~ 9175 1550
$Comp
L GND #PWR01
U 1 1 561C5CA0
P 9175 1700
F 0 "#PWR01" H 9175 1450 50  0001 C CNN
F 1 "GND" H 9175 1550 50  0000 C CNN
F 2 "" H 9175 1700 60  0000 C CNN
F 3 "" H 9175 1700 60  0000 C CNN
	1    9175 1700
	1    0    0    -1  
$EndComp
Wire Wire Line
	3850 1700 3850 1425
Wire Wire Line
	3700 1700 3700 1425
Text GLabel 3700 1425 1    60   Input ~ 0
VCAP1
Text GLabel 3850 1425 1    60   Input ~ 0
VCAP2
$Comp
L C C3
U 1 1 561C65F1
P 8500 1325
F 0 "C3" H 8525 1425 50  0000 L CNN
F 1 "2.2uF" H 8525 1225 50  0000 L CNN
F 2 "Capacitors_SMD:C_0805" H 8500 1325 60  0001 C CNN
F 3 "" H 8500 1325 60  0000 C CNN
	1    8500 1325
	1    0    0    -1  
$EndComp
$Comp
L C C1
U 1 1 561C6682
P 7875 1325
F 0 "C1" H 7900 1425 50  0000 L CNN
F 1 "2.2uF" H 7900 1225 50  0000 L CNN
F 2 "Capacitors_SMD:C_0805" H 7875 1325 60  0001 C CNN
F 3 "" H 7875 1325 60  0000 C CNN
	1    7875 1325
	-1   0    0    1   
$EndComp
Wire Wire Line
	8500 900  8500 1175
Wire Wire Line
	7875 1175 7875 900 
Text GLabel 7875 900  1    60   Input ~ 0
VCAP1
Text GLabel 8500 900  1    60   Input ~ 0
VCAP2
Wire Wire Line
	7875 1475 7875 1600
Wire Wire Line
	8500 1475 8500 1600
$Comp
L GND #PWR02
U 1 1 561C6856
P 7875 1600
F 0 "#PWR02" H 7875 1350 50  0001 C CNN
F 1 "GND" H 7875 1450 50  0000 C CNN
F 2 "" H 7875 1600 60  0000 C CNN
F 3 "" H 7875 1600 60  0000 C CNN
	1    7875 1600
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR03
U 1 1 561C6884
P 8500 1600
F 0 "#PWR03" H 8500 1350 50  0001 C CNN
F 1 "GND" H 8500 1450 50  0000 C CNN
F 2 "" H 8500 1600 60  0000 C CNN
F 3 "" H 8500 1600 60  0000 C CNN
	1    8500 1600
	1    0    0    -1  
$EndComp
Wire Wire Line
	2950 7300 2950 7425
$Comp
L GND #PWR04
U 1 1 561C6D3F
P 2950 7425
F 0 "#PWR04" H 2950 7175 50  0001 C CNN
F 1 "GND" H 2950 7275 50  0000 C CNN
F 2 "" H 2950 7425 60  0000 C CNN
F 3 "" H 2950 7425 60  0000 C CNN
	1    2950 7425
	1    0    0    -1  
$EndComp
Wire Wire Line
	3100 7300 3100 7425
$Comp
L GND #PWR05
U 1 1 561C6D8F
P 3100 7425
F 0 "#PWR05" H 3100 7175 50  0001 C CNN
F 1 "GND" H 3100 7275 50  0000 C CNN
F 2 "" H 3100 7425 60  0000 C CNN
F 3 "" H 3100 7425 60  0000 C CNN
	1    3100 7425
	1    0    0    -1  
$EndComp
Wire Wire Line
	3400 7300 3400 7425
$Comp
L GND #PWR06
U 1 1 561C6DBF
P 3400 7425
F 0 "#PWR06" H 3400 7175 50  0001 C CNN
F 1 "GND" H 3400 7275 50  0000 C CNN
F 2 "" H 3400 7425 60  0000 C CNN
F 3 "" H 3400 7425 60  0000 C CNN
	1    3400 7425
	1    0    0    -1  
$EndComp
Wire Wire Line
	1300 2500 1100 2500
Text GLabel 1100 2500 0    60   Input ~ 0
NRST
Text GLabel 4750 1125 0    60   Input ~ 0
NRST
$Comp
L R R1
U 1 1 561C7DBD
P 4950 900
F 0 "R1" V 5030 900 50  0000 C CNN
F 1 "10k" V 4900 900 50  0000 C CNN
F 2 "Capacitors_SMD:C_0805" V 4880 900 30  0001 C CNN
F 3 "" H 4950 900 30  0000 C CNN
	1    4950 900 
	-1   0    0    1   
$EndComp
Wire Wire Line
	4950 1050 4950 1200
Wire Wire Line
	1300 2750 1100 2750
Wire Wire Line
	1300 2900 1100 2900
Text GLabel 1100 2750 0    60   Input ~ 0
OSCIN
Text GLabel 1100 2900 0    60   Input ~ 0
OSCOUT
Wire Wire Line
	7125 4375 6925 4375
Text GLabel 6900 3925 0    60   Input ~ 0
OSCIN
Text GLabel 6925 4375 0    60   Input ~ 0
OSCOUT
$Comp
L Crystal Y1
U 1 1 561C8D7E
P 7500 4150
F 0 "Y1" V 7500 4300 50  0000 C CNN
F 1 "Crystal" H 7500 4000 50  0000 C CNN
F 2 "Crystals:Crystal_SMD_5032_2Pads" H 7500 4150 60  0001 C CNN
F 3 "" H 7500 4150 60  0000 C CNN
	1    7500 4150
	0    -1   -1   0   
$EndComp
$Comp
L C C6
U 1 1 561C8DE7
P 7925 3925
F 0 "C6" V 8000 4025 50  0000 L CNN
F 1 "12pF" V 7875 4025 50  0000 L CNN
F 2 "Capacitors_SMD:C_0805" H 7963 3775 30  0001 C CNN
F 3 "" H 7925 3925 60  0000 C CNN
	1    7925 3925
	0    1    1    0   
$EndComp
$Comp
L C C7
U 1 1 561C8E54
P 7925 4375
F 0 "C7" V 8000 4450 50  0000 L CNN
F 1 "12pF" V 7875 4450 50  0000 L CNN
F 2 "Capacitors_SMD:C_0805" H 7963 4225 30  0001 C CNN
F 3 "" H 7925 4375 60  0000 C CNN
	1    7925 4375
	0    1    1    0   
$EndComp
Wire Wire Line
	7500 4300 7500 4375
Wire Wire Line
	7425 4375 7775 4375
Wire Wire Line
	8075 3925 8225 3925
Wire Wire Line
	8225 3925 8225 4375
Wire Wire Line
	8225 4375 8075 4375
Wire Wire Line
	8225 4150 8325 4150
Wire Wire Line
	8325 4150 8325 4200
Connection ~ 8225 4150
$Comp
L GND #PWR07
U 1 1 561C9036
P 8325 4200
F 0 "#PWR07" H 8325 3950 50  0001 C CNN
F 1 "GND" H 8325 4050 50  0000 C CNN
F 2 "" H 8325 4200 60  0000 C CNN
F 3 "" H 8325 4200 60  0000 C CNN
	1    8325 4200
	1    0    0    -1  
$EndComp
$Comp
L R R2
U 1 1 561C9116
P 7275 4375
F 0 "R2" V 7355 4375 50  0000 C CNN
F 1 "0" V 7225 4375 50  0000 C CNN
F 2 "Capacitors_SMD:C_0805" V 7205 4375 30  0001 C CNN
F 3 "" H 7275 4375 30  0000 C CNN
	1    7275 4375
	0    1    1    0   
$EndComp
Connection ~ 7500 4375
Wire Wire Line
	1025 6600 1300 6600
Wire Wire Line
	1300 6750 1025 6750
Text GLabel 1025 6600 0    60   Input ~ 0
SWDIO
Text GLabel 1025 6750 0    60   Input ~ 0
SWCLK
Wire Wire Line
	4950 2550 5200 2550
Text GLabel 5200 2550 2    60   Input ~ 0
TRACESWO
Wire Wire Line
	8225 6100 7975 6100
Text GLabel 7975 6100 0    60   Input ~ 0
TRACESWO
Wire Wire Line
	7875 5900 8225 5900
Wire Wire Line
	8225 5700 7875 5700
Text GLabel 7875 5900 0    60   Input ~ 0
SWDIO
Text GLabel 7875 5700 0    60   Input ~ 0
SWCLK
Wire Wire Line
	8225 6000 7450 6000
Text GLabel 7450 6000 0    60   Input ~ 0
NRST
$Comp
L CONN_01X06 P1
U 1 1 561CA664
P 8425 5850
F 0 "P1" H 8425 6200 50  0000 C CNN
F 1 "CONN_01X06" V 8525 5850 50  0000 C CNN
F 2 "Pin_Headers:Pin_Header_Straight_1x06" H 8425 5850 60  0001 C CNN
F 3 "" H 8425 5850 60  0000 C CNN
	1    8425 5850
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR08
U 1 1 561CA8BC
P 8150 5800
F 0 "#PWR08" H 8150 5550 50  0001 C CNN
F 1 "GND" H 8150 5650 50  0000 C CNN
F 2 "" H 8150 5800 60  0000 C CNN
F 3 "" H 8150 5800 60  0000 C CNN
	1    8150 5800
	0    1    1    0   
$EndComp
Wire Wire Line
	8150 5800 8225 5800
Wire Wire Line
	8175 5600 8225 5600
$Comp
L C C2
U 1 1 561CB51F
P 4950 1350
F 0 "C2" H 4975 1450 50  0000 L CNN
F 1 ".1uF" H 4975 1250 50  0000 L CNN
F 2 "Capacitors_SMD:C_0805" H 4988 1200 30  0001 C CNN
F 3 "" H 4950 1350 60  0000 C CNN
	1    4950 1350
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR09
U 1 1 561CB6CC
P 5650 1550
F 0 "#PWR09" H 5650 1300 50  0001 C CNN
F 1 "GND" H 5650 1400 50  0000 C CNN
F 2 "" H 5650 1550 60  0000 C CNN
F 3 "" H 5650 1550 60  0000 C CNN
	1    5650 1550
	1    0    0    -1  
$EndComp
Wire Wire Line
	5650 1500 5650 1550
Wire Wire Line
	5975 925  5975 1200
Text GLabel 5975 925  1    60   Input ~ 0
BOOT0
$Comp
L R R3
U 1 1 561CCC5F
P 5975 1350
F 0 "R3" V 6055 1350 50  0000 C CNN
F 1 "10k" V 5925 1350 50  0000 C CNN
F 2 "Capacitors_SMD:C_0805" V 5905 1350 30  0001 C CNN
F 3 "" H 5975 1350 30  0000 C CNN
	1    5975 1350
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR010
U 1 1 561CCCB8
P 5975 1550
F 0 "#PWR010" H 5975 1300 50  0001 C CNN
F 1 "GND" H 5975 1400 50  0000 C CNN
F 2 "" H 5975 1550 60  0000 C CNN
F 3 "" H 5975 1550 60  0000 C CNN
	1    5975 1550
	1    0    0    -1  
$EndComp
Wire Wire Line
	5975 1550 5975 1500
Wire Wire Line
	1300 3200 1100 3200
Text GLabel 1100 3200 0    60   Input ~ 0
BOOT0
Wire Wire Line
	4950 2100 5200 2100
Wire Wire Line
	4950 2250 5200 2250
Wire Wire Line
	4950 2400 5200 2400
Wire Wire Line
	4950 2700 5200 2700
Wire Wire Line
	4950 2850 5200 2850
Wire Wire Line
	4950 3000 5200 3000
Wire Wire Line
	4950 3150 5200 3150
Wire Wire Line
	4950 3300 5200 3300
Wire Wire Line
	4950 3450 5200 3450
Wire Wire Line
	4950 3600 5200 3600
Text GLabel 5200 2100 2    60   Input ~ 0
PB0
Text GLabel 5200 2250 2    60   Input ~ 0
PB1
Text GLabel 5200 2400 2    60   Input ~ 0
PB2
Text GLabel 5200 2700 2    60   Input ~ 0
PB4
Text GLabel 5200 2850 2    60   Input ~ 0
PB5
Text GLabel 5200 3000 2    60   Input ~ 0
PB6
Text GLabel 5200 3150 2    60   Input ~ 0
PB7
Text GLabel 5200 3300 2    60   Input ~ 0
PB8
Text GLabel 5200 3450 2    60   Input ~ 0
PB9
Text GLabel 5200 3600 2    60   Input ~ 0
PB10
Wire Wire Line
	4950 3750 5200 3750
Wire Wire Line
	4950 3900 5200 3900
Wire Wire Line
	4950 4050 5200 4050
Wire Wire Line
	4950 4200 5200 4200
Wire Wire Line
	4950 4350 5200 4350
Text GLabel 5200 3750 2    60   Input ~ 0
PB11_VCAP1
Text GLabel 5200 3900 2    60   Input ~ 0
PB12
Text GLabel 5200 4050 2    60   Input ~ 0
PB13
Text GLabel 5200 4200 2    60   Input ~ 0
PB14
Text GLabel 5200 4350 2    60   Input ~ 0
PB15
Wire Wire Line
	4950 4650 5200 4650
Wire Wire Line
	4950 4800 5200 4800
Wire Wire Line
	4950 4950 5200 4950
Wire Wire Line
	4950 5100 5200 5100
Wire Wire Line
	4950 5250 5200 5250
Wire Wire Line
	4950 5400 5200 5400
Wire Wire Line
	4950 5550 5200 5550
Wire Wire Line
	4950 5700 5200 5700
Wire Wire Line
	4950 5850 5200 5850
Wire Wire Line
	4950 6000 5200 6000
Wire Wire Line
	4950 6150 5200 6150
Wire Wire Line
	4950 6300 5200 6300
Wire Wire Line
	4950 6450 5200 6450
Wire Wire Line
	4950 6600 5200 6600
Wire Wire Line
	4950 6750 5200 6750
Wire Wire Line
	4950 6900 5200 6900
Text GLabel 5200 4650 2    60   Input ~ 0
PC0
Text GLabel 5200 4800 2    60   Input ~ 0
PC1
Text GLabel 5200 4950 2    60   Input ~ 0
PC2
Text GLabel 5200 5100 2    60   Input ~ 0
PC3
Text GLabel 5200 5250 2    60   Input ~ 0
PC4
Text GLabel 5200 5400 2    60   Input ~ 0
PC5
Text GLabel 5200 5550 2    60   Input ~ 0
PC6
Text GLabel 5200 5700 2    60   Input ~ 0
PC7
Text GLabel 5200 5850 2    60   Input ~ 0
PC8
Text GLabel 5200 6000 2    60   Input ~ 0
PC9
Text GLabel 5200 6150 2    60   Input ~ 0
PC10
Text GLabel 5200 6300 2    60   Input ~ 0
PC11
Text GLabel 5200 6450 2    60   Input ~ 0
PC12
Text GLabel 5200 6600 2    60   Input ~ 0
PC13
Text GLabel 5200 6750 2    60   Input ~ 0
OSC32_IN
Text GLabel 5200 6900 2    60   Input ~ 0
OSC32_OUT
Wire Wire Line
	1300 4650 1025 4650
Wire Wire Line
	1300 4800 1025 4800
Wire Wire Line
	1300 4950 1025 4950
Wire Wire Line
	1025 5100 1300 5100
Wire Wire Line
	1300 5250 1025 5250
Wire Wire Line
	1300 5400 1025 5400
Wire Wire Line
	1300 5550 1025 5550
Wire Wire Line
	1300 5700 1025 5700
Wire Wire Line
	1300 5850 1025 5850
Wire Wire Line
	1025 6000 1300 6000
Wire Wire Line
	1300 6150 1025 6150
Wire Wire Line
	1300 6300 1025 6300
Wire Wire Line
	1300 6450 1025 6450
Wire Wire Line
	1300 6900 1025 6900
Text GLabel 1025 4650 0    60   Input ~ 0
PA0
Text GLabel 1025 4800 0    60   Input ~ 0
PA1
Text GLabel 1025 4950 0    60   Input ~ 0
PA2
Text GLabel 1025 5100 0    60   Input ~ 0
PA3
Text GLabel 1025 5250 0    60   Input ~ 0
PA4
Text GLabel 1025 5400 0    60   Input ~ 0
PA5
Text GLabel 1025 5550 0    60   Input ~ 0
PA6
Text GLabel 1025 5700 0    60   Input ~ 0
PA7
Text GLabel 1025 5850 0    60   Input ~ 0
PA8
Text GLabel 1025 6000 0    60   Input ~ 0
PA9
Text GLabel 1025 6150 0    60   Input ~ 0
PA10
Text GLabel 1025 6300 0    60   Input ~ 0
PA11
Text GLabel 1025 6450 0    60   Input ~ 0
PA12
Text GLabel 1025 6900 0    60   Input ~ 0
PA15
Wire Wire Line
	2350 1700 2350 1425
Text GLabel 2350 1425 1    60   Input ~ 0
VBAT
Wire Wire Line
	7225 4750 7775 4750
$Comp
L Crystal Y2
U 1 1 561D4E6B
P 7500 4975
F 0 "Y2" V 7500 5125 50  0000 C CNN
F 1 "Crystal" H 7500 4825 50  0000 C CNN
F 2 "SMD_Packages:SMD-1206_Pol" H 7500 4975 60  0001 C CNN
F 3 "" H 7500 4975 60  0000 C CNN
	1    7500 4975
	0    1    1    0   
$EndComp
$Comp
L C C8
U 1 1 561D4E71
P 7925 4750
F 0 "C8" V 8000 4850 50  0000 L CNN
F 1 "12pF" V 7875 4850 50  0000 L CNN
F 2 "Capacitors_SMD:C_0805" H 7963 4600 30  0001 C CNN
F 3 "" H 7925 4750 60  0000 C CNN
	1    7925 4750
	0    1    1    0   
$EndComp
$Comp
L C C9
U 1 1 561D4E77
P 7925 5200
F 0 "C9" V 8000 5275 50  0000 L CNN
F 1 "12pF" V 7875 5275 50  0000 L CNN
F 2 "Capacitors_SMD:C_0805" H 7963 5050 30  0001 C CNN
F 3 "" H 7925 5200 60  0000 C CNN
	1    7925 5200
	0    1    1    0   
$EndComp
Wire Wire Line
	7500 5125 7500 5200
Wire Wire Line
	7225 5200 7775 5200
Wire Wire Line
	8075 4750 8225 4750
Wire Wire Line
	8225 4750 8225 5200
Wire Wire Line
	8225 5200 8075 5200
Wire Wire Line
	8225 4975 8325 4975
Wire Wire Line
	8325 4975 8325 5025
Connection ~ 8225 4975
$Comp
L GND #PWR011
U 1 1 561D4E86
P 8325 5025
F 0 "#PWR011" H 8325 4775 50  0001 C CNN
F 1 "GND" H 8325 4875 50  0000 C CNN
F 2 "" H 8325 5025 60  0000 C CNN
F 3 "" H 8325 5025 60  0000 C CNN
	1    8325 5025
	1    0    0    -1  
$EndComp
Connection ~ 7500 5200
Text GLabel 7225 4750 0    60   Input ~ 0
OSC32_IN
Text GLabel 7225 5200 0    60   Input ~ 0
OSC32_OUT
Wire Wire Line
	1300 3500 1100 3500
Text GLabel 1100 3500 0    60   Input ~ 0
PD2
Wire Wire Line
	9525 4075 9125 4075
Wire Wire Line
	9525 4175 9425 4175
Wire Wire Line
	9525 4275 9125 4275
Wire Wire Line
	9425 4375 9525 4375
Wire Wire Line
	9525 4475 9125 4475
Wire Wire Line
	9525 4575 9425 4575
Wire Wire Line
	9525 4675 9125 4675
Wire Wire Line
	9525 4775 9425 4775
Wire Wire Line
	10775 5800 10375 5800
Wire Wire Line
	10700 5700 10775 5700
Wire Wire Line
	10775 5600 10375 5600
Wire Wire Line
	10775 5500 10700 5500
Wire Wire Line
	10775 5400 10375 5400
Text GLabel 9125 4075 0    60   Input ~ 0
PA0
Text GLabel 9425 4175 0    60   Input ~ 0
PA1
Text GLabel 9125 4275 0    60   Input ~ 0
PA2
Text GLabel 9425 4375 0    60   Input ~ 0
PA3
Text GLabel 9125 4475 0    60   Input ~ 0
PA4
Text GLabel 9425 4575 0    60   Input ~ 0
PA5
Text GLabel 9125 4675 0    60   Input ~ 0
PA6
Text GLabel 9425 4775 0    60   Input ~ 0
PA7
Text GLabel 10375 5800 0    60   Input ~ 0
PA8
Text GLabel 10700 5700 0    60   Input ~ 0
PA9
Text GLabel 10375 5600 0    60   Input ~ 0
PA10
Text GLabel 10700 5500 0    60   Input ~ 0
PA11
Text GLabel 10375 5400 0    60   Input ~ 0
PA12
Wire Wire Line
	10775 3700 10675 3700
Text GLabel 10675 3700 0    60   Input ~ 0
NRST
Wire Wire Line
	10775 4100 10675 4100
Text GLabel 10675 4100 0    60   Input ~ 0
BOOT0
$Comp
L CONN_01X32 P2
U 1 1 561D7D63
P 9725 4825
F 0 "P2" H 9725 6475 50  0000 C CNN
F 1 "CONN_01X32" V 9825 4825 50  0000 C CNN
F 2 "Pin_Headers:Pin_Header_Straight_2x16" H 9725 4825 60  0001 C CNN
F 3 "" H 9725 4825 60  0000 C CNN
	1    9725 4825
	1    0    0    -1  
$EndComp
$Comp
L CONN_01X32 P3
U 1 1 561D7E0E
P 10975 4850
F 0 "P3" H 10975 6500 50  0000 C CNN
F 1 "CONN_01X32" V 11075 4850 50  0000 C CNN
F 2 "Pin_Headers:Pin_Header_Straight_2x16" H 10975 4850 60  0001 C CNN
F 3 "" H 10975 4850 60  0000 C CNN
	1    10975 4850
	1    0    0    -1  
$EndComp
Wire Wire Line
	10700 5300 10775 5300
Wire Wire Line
	10775 5200 10375 5200
Text GLabel 10700 5300 0    60   Input ~ 0
SWDIO
Text GLabel 10375 5200 0    60   Input ~ 0
SWCLK
Wire Wire Line
	10775 5100 10700 5100
Text GLabel 10700 5100 0    60   Input ~ 0
PA15
Wire Wire Line
	10775 4600 10375 4600
Text GLabel 10375 4600 0    60   Input ~ 0
TRACESWO
Wire Wire Line
	9525 5075 9125 5075
Wire Wire Line
	9525 5175 9425 5175
Wire Wire Line
	9525 5275 9125 5275
Wire Wire Line
	10775 4500 10700 4500
Text GLabel 9125 5075 0    60   Input ~ 0
PB0
Text GLabel 9425 5175 0    60   Input ~ 0
PB1
Text GLabel 9125 5275 0    60   Input ~ 0
PB2
Text GLabel 10700 4500 0    60   Input ~ 0
PB4
Text GLabel 9400 3375 0    60   Input ~ 0
VDD1
Wire Wire Line
	9400 3375 9525 3375
Text GLabel 9100 3275 0    60   Input ~ 0
VDD1
Wire Wire Line
	9100 3275 9525 3275
Text GLabel 10675 3300 0    60   Input ~ 0
VDD1
Wire Wire Line
	10675 3300 10775 3300
Text GLabel 10350 3400 0    60   Input ~ 0
VDD1
Wire Wire Line
	10350 3400 10775 3400
$Comp
L GND #PWR012
U 1 1 561DA4FA
P 9100 3475
F 0 "#PWR012" H 9100 3225 50  0001 C CNN
F 1 "GND" H 9100 3325 50  0000 C CNN
F 2 "" H 9100 3475 60  0000 C CNN
F 3 "" H 9100 3475 60  0000 C CNN
	1    9100 3475
	0    1    1    0   
$EndComp
$Comp
L GND #PWR013
U 1 1 561DA58E
P 9450 3575
F 0 "#PWR013" H 9450 3325 50  0001 C CNN
F 1 "GND" H 9450 3425 50  0000 C CNN
F 2 "" H 9450 3575 60  0000 C CNN
F 3 "" H 9450 3575 60  0000 C CNN
	1    9450 3575
	0    1    1    0   
$EndComp
$Comp
L GND #PWR014
U 1 1 561DA5D8
P 10400 3600
F 0 "#PWR014" H 10400 3350 50  0001 C CNN
F 1 "GND" H 10400 3450 50  0000 C CNN
F 2 "" H 10400 3600 60  0000 C CNN
F 3 "" H 10400 3600 60  0000 C CNN
	1    10400 3600
	0    1    1    0   
$EndComp
Wire Wire Line
	9100 3475 9525 3475
Wire Wire Line
	9450 3575 9525 3575
Wire Wire Line
	10400 3600 10775 3600
Wire Wire Line
	10775 4400 10350 4400
Wire Wire Line
	10775 4300 10675 4300
Text GLabel 10350 4400 0    60   Input ~ 0
PB5
Text GLabel 10675 4300 0    60   Input ~ 0
PB6
Text GLabel 9100 6275 0    60   Input ~ 0
VDD1
Wire Wire Line
	9100 6275 9525 6275
$Comp
L GND #PWR015
U 1 1 561DC569
P 9450 6375
F 0 "#PWR015" H 9450 6125 50  0001 C CNN
F 1 "GND" H 9450 6225 50  0000 C CNN
F 2 "" H 9450 6375 60  0000 C CNN
F 3 "" H 9450 6375 60  0000 C CNN
	1    9450 6375
	0    1    1    0   
$EndComp
Wire Wire Line
	9450 6375 9525 6375
Wire Wire Line
	10775 4200 10325 4200
Wire Wire Line
	10775 4000 10325 4000
Wire Wire Line
	10775 3900 10675 3900
Wire Wire Line
	9525 5375 9425 5375
Text GLabel 10325 4200 0    60   Input ~ 0
PB7
Text GLabel 10325 4000 0    60   Input ~ 0
PB8
Text GLabel 10675 3900 0    60   Input ~ 0
PB9
Text GLabel 9425 5375 0    60   Input ~ 0
PB10
Wire Wire Line
	9525 5475 9125 5475
Wire Wire Line
	9525 5575 9425 5575
Wire Wire Line
	9525 5675 9125 5675
Wire Wire Line
	9525 5775 9425 5775
Wire Wire Line
	9525 5875 9125 5875
Text GLabel 9125 5475 0    60   Input ~ 0
PB11_VCAP1
Text GLabel 9425 5575 0    60   Input ~ 0
PB12
Text GLabel 9125 5675 0    60   Input ~ 0
PB13
Text GLabel 9425 5775 0    60   Input ~ 0
PB14
Text GLabel 9125 5875 0    60   Input ~ 0
PB15
Wire Wire Line
	9525 3675 9125 3675
Wire Wire Line
	9525 3775 9425 3775
Wire Wire Line
	9525 3875 9125 3875
Wire Wire Line
	9525 3975 9425 3975
Wire Wire Line
	9525 4875 9125 4875
Wire Wire Line
	9525 4975 9425 4975
Wire Wire Line
	9525 5975 9425 5975
Wire Wire Line
	9525 6075 9125 6075
Wire Wire Line
	9525 6175 9425 6175
Wire Wire Line
	10775 5900 10700 5900
Wire Wire Line
	10775 5000 10375 5000
Wire Wire Line
	10775 4900 10700 4900
Wire Wire Line
	10775 4800 10375 4800
Wire Wire Line
	10775 3500 10675 3500
Text GLabel 9125 3675 0    60   Input ~ 0
PC0
Text GLabel 9425 3775 0    60   Input ~ 0
PC1
Text GLabel 9125 3875 0    60   Input ~ 0
PC2
Text GLabel 9425 3975 0    60   Input ~ 0
PC3
Text GLabel 9125 4875 0    60   Input ~ 0
PC4
Text GLabel 9425 4975 0    60   Input ~ 0
PC5
Text GLabel 9425 5975 0    60   Input ~ 0
PC6
Text GLabel 9125 6075 0    60   Input ~ 0
PC7
Text GLabel 9425 6175 0    60   Input ~ 0
PC8
Text GLabel 10700 5900 0    60   Input ~ 0
PC9
Text GLabel 10375 5000 0    60   Input ~ 0
PC10
Text GLabel 10700 4900 0    60   Input ~ 0
PC11
Text GLabel 10375 4800 0    60   Input ~ 0
PC12
Text GLabel 10675 3500 0    60   Input ~ 0
PC13
Wire Wire Line
	10400 6000 10775 6000
$Comp
L GND #PWR016
U 1 1 561DE647
P 10425 6400
F 0 "#PWR016" H 10425 6150 50  0001 C CNN
F 1 "GND" H 10425 6250 50  0000 C CNN
F 2 "" H 10425 6400 60  0000 C CNN
F 3 "" H 10425 6400 60  0000 C CNN
	1    10425 6400
	0    1    1    0   
$EndComp
Wire Wire Line
	10425 6400 10775 6400
Text GLabel 10700 6100 0    60   Input ~ 0
VDD1
Wire Wire Line
	10700 6100 10775 6100
$Comp
L GND #PWR017
U 1 1 561DEBF5
P 10725 6300
F 0 "#PWR017" H 10725 6050 50  0001 C CNN
F 1 "GND" H 10725 6150 50  0000 C CNN
F 2 "" H 10725 6300 60  0000 C CNN
F 3 "" H 10725 6300 60  0000 C CNN
	1    10725 6300
	0    1    1    0   
$EndComp
Wire Wire Line
	10725 6300 10775 6300
$Comp
L C C10
U 1 1 561DFAEA
P 9600 1225
F 0 "C10" H 9625 1325 50  0000 L CNN
F 1 ".1uF" H 9625 1125 50  0000 L CNN
F 2 "Capacitors_SMD:C_0805" H 9638 1075 30  0001 C CNN
F 3 "" H 9600 1225 60  0000 C CNN
	1    9600 1225
	1    0    0    -1  
$EndComp
Text GLabel 9600 850  1    60   Input ~ 0
VDD1
Wire Wire Line
	9600 850  9600 1075
Connection ~ 9600 950 
Wire Wire Line
	9600 1375 9600 1700
Connection ~ 9600 1550
$Comp
L GND #PWR018
U 1 1 561DFB01
P 9600 1700
F 0 "#PWR018" H 9600 1450 50  0001 C CNN
F 1 "GND" H 9600 1550 50  0000 C CNN
F 2 "" H 9600 1700 60  0000 C CNN
F 3 "" H 9600 1700 60  0000 C CNN
	1    9600 1700
	1    0    0    -1  
$EndComp
$Comp
L C C12
U 1 1 561DFB77
P 10000 1225
F 0 "C12" H 10025 1325 50  0000 L CNN
F 1 ".1uF" H 10025 1125 50  0000 L CNN
F 2 "Capacitors_SMD:C_0805" H 10038 1075 30  0001 C CNN
F 3 "" H 10000 1225 60  0000 C CNN
	1    10000 1225
	1    0    0    -1  
$EndComp
Text GLabel 10000 850  1    60   Input ~ 0
VDD1
Wire Wire Line
	10000 850  10000 1075
Connection ~ 10000 950 
Wire Wire Line
	10000 1375 10000 1700
Connection ~ 10000 1550
$Comp
L GND #PWR019
U 1 1 561DFB8E
P 10000 1700
F 0 "#PWR019" H 10000 1450 50  0001 C CNN
F 1 "GND" H 10000 1550 50  0000 C CNN
F 2 "" H 10000 1700 60  0000 C CNN
F 3 "" H 10000 1700 60  0000 C CNN
	1    10000 1700
	1    0    0    -1  
$EndComp
$Comp
L C C14
U 1 1 561DFCAE
P 10375 1225
F 0 "C14" H 10400 1325 50  0000 L CNN
F 1 ".1uF" H 10400 1125 50  0000 L CNN
F 2 "Capacitors_SMD:C_0805" H 10413 1075 30  0001 C CNN
F 3 "" H 10375 1225 60  0000 C CNN
	1    10375 1225
	1    0    0    -1  
$EndComp
Text GLabel 10375 850  1    60   Input ~ 0
VDD1
Wire Wire Line
	10375 850  10375 1075
Connection ~ 10375 950 
Wire Wire Line
	10375 1375 10375 1700
Connection ~ 10375 1550
$Comp
L GND #PWR020
U 1 1 561DFCC5
P 10375 1700
F 0 "#PWR020" H 10375 1450 50  0001 C CNN
F 1 "GND" H 10375 1550 50  0000 C CNN
F 2 "" H 10375 1700 60  0000 C CNN
F 3 "" H 10375 1700 60  0000 C CNN
	1    10375 1700
	1    0    0    -1  
$EndComp
$Comp
L C C16
U 1 1 561DFCCB
P 10750 1225
F 0 "C16" H 10775 1325 50  0000 L CNN
F 1 ".1uF" H 10775 1125 50  0000 L CNN
F 2 "Capacitors_SMD:C_0805" H 10788 1075 30  0001 C CNN
F 3 "" H 10750 1225 60  0000 C CNN
	1    10750 1225
	1    0    0    -1  
$EndComp
Text GLabel 10750 850  1    60   Input ~ 0
VDD1
Wire Wire Line
	10750 850  10750 1075
Connection ~ 10750 950 
Wire Wire Line
	10750 1375 10750 1700
Connection ~ 10750 1550
$Comp
L GND #PWR021
U 1 1 561DFCE2
P 10750 1700
F 0 "#PWR021" H 10750 1450 50  0001 C CNN
F 1 "GND" H 10750 1550 50  0000 C CNN
F 2 "" H 10750 1700 60  0000 C CNN
F 3 "" H 10750 1700 60  0000 C CNN
	1    10750 1700
	1    0    0    -1  
$EndComp
Wire Wire Line
	10775 4700 10700 4700
Text GLabel 10700 4700 0    60   Input ~ 0
PD2
$Comp
L LT1761 U2
U 1 1 561F69BC
P 7375 2500
F 0 "U2" H 7525 2150 60  0000 C CNN
F 1 "LT1761" H 7375 2850 60  0000 C CNN
F 2 "TO_SOT_Packages_SMD:SOT-23-5" H 7375 2500 60  0001 C CNN
F 3 "" H 7375 2500 60  0000 C CNN
	1    7375 2500
	1    0    0    -1  
$EndComp
$Comp
L C C19
U 1 1 561F7117
P 8150 2500
F 0 "C19" H 8175 2600 50  0000 L CNN
F 1 "10nF" H 8175 2400 50  0000 L CNN
F 2 "Capacitors_SMD:C_0805" H 8188 2350 30  0001 C CNN
F 3 "" H 8150 2500 60  0000 C CNN
	1    8150 2500
	1    0    0    -1  
$EndComp
$Comp
L C C20
U 1 1 561F7192
P 8475 2525
F 0 "C20" H 8500 2625 50  0000 L CNN
F 1 "10uF" H 8500 2425 50  0000 L CNN
F 2 "Capacitors_SMD:C_1210" H 8513 2375 30  0001 C CNN
F 3 "" H 8475 2525 60  0000 C CNN
	1    8475 2525
	1    0    0    -1  
$EndComp
$Comp
L C C18
U 1 1 561F7243
P 6400 2525
F 0 "C18" H 6425 2625 50  0000 L CNN
F 1 "1uF" H 6425 2425 50  0000 L CNN
F 2 "Capacitors_SMD:C_1210" H 6438 2375 30  0001 C CNN
F 3 "" H 6400 2525 60  0000 C CNN
	1    6400 2525
	1    0    0    -1  
$EndComp
Wire Wire Line
	6775 2700 6650 2700
Wire Wire Line
	6650 2700 6650 2300
Wire Wire Line
	6275 2300 6775 2300
Wire Wire Line
	7975 2700 8150 2700
Wire Wire Line
	8150 2700 8150 2650
Wire Wire Line
	8150 2350 8150 2300
Wire Wire Line
	7975 2300 8625 2300
Wire Wire Line
	8475 2300 8475 2375
Connection ~ 8150 2300
Connection ~ 6650 2300
$Comp
L GND #PWR022
U 1 1 561F7AB6
P 7375 3125
F 0 "#PWR022" H 7375 2875 50  0001 C CNN
F 1 "GND" H 7375 2975 50  0000 C CNN
F 2 "" H 7375 3125 60  0000 C CNN
F 3 "" H 7375 3125 60  0000 C CNN
	1    7375 3125
	1    0    0    -1  
$EndComp
Wire Wire Line
	7375 3125 7375 3000
$Comp
L GND #PWR023
U 1 1 561F7AFD
P 8475 2800
F 0 "#PWR023" H 8475 2550 50  0001 C CNN
F 1 "GND" H 8475 2650 50  0000 C CNN
F 2 "" H 8475 2800 60  0000 C CNN
F 3 "" H 8475 2800 60  0000 C CNN
	1    8475 2800
	1    0    0    -1  
$EndComp
Wire Wire Line
	8475 2800 8475 2675
$Comp
L GND #PWR024
U 1 1 561F7B44
P 6400 2800
F 0 "#PWR024" H 6400 2550 50  0001 C CNN
F 1 "GND" H 6400 2650 50  0000 C CNN
F 2 "" H 6400 2800 60  0000 C CNN
F 3 "" H 6400 2800 60  0000 C CNN
	1    6400 2800
	1    0    0    -1  
$EndComp
Wire Wire Line
	6400 2800 6400 2675
Text GLabel 8625 2300 2    60   Input ~ 0
VDD1
Connection ~ 8475 2300
Text GLabel 6275 2300 0    60   Input ~ 0
5V_IN
$Comp
L LED D1
U 1 1 561F9BE8
P 6225 4400
F 0 "D1" H 6225 4500 50  0000 C CNN
F 1 "LED" H 6225 4300 50  0000 C CNN
F 2 "LEDs:LED-0805" H 6225 4400 60  0001 C CNN
F 3 "" H 6225 4400 60  0000 C CNN
	1    6225 4400
	0    -1   -1   0   
$EndComp
$Comp
L R R4
U 1 1 561FA1F2
P 6225 4825
F 0 "R4" V 6305 4825 50  0000 C CNN
F 1 "470" V 6175 4825 50  0000 C CNN
F 2 "Capacitors_SMD:C_0805" V 6155 4825 30  0001 C CNN
F 3 "" H 6225 4825 30  0000 C CNN
	1    6225 4825
	1    0    0    -1  
$EndComp
Wire Wire Line
	6225 4975 6225 5025
$Comp
L GND #PWR025
U 1 1 561FA330
P 6225 5025
F 0 "#PWR025" H 6225 4775 50  0001 C CNN
F 1 "GND" H 6225 4875 50  0000 C CNN
F 2 "" H 6225 5025 60  0000 C CNN
F 3 "" H 6225 5025 60  0000 C CNN
	1    6225 5025
	1    0    0    -1  
$EndComp
Wire Wire Line
	6225 4675 6225 4600
Wire Wire Line
	6225 4100 6225 4200
Wire Wire Line
	6900 3925 7775 3925
Wire Wire Line
	7500 4000 7500 3925
Connection ~ 7500 3925
Wire Wire Line
	7500 4825 7500 4750
Connection ~ 7500 4750
Wire Wire Line
	6400 2375 6400 2300
Connection ~ 6400 2300
Text GLabel 8175 5600 0    60   Input ~ 0
VDD1
Text GLabel 4775 675  0    60   Input ~ 0
VDD1
$Comp
L GND #PWR026
U 1 1 56281D50
P 6375 6300
F 0 "#PWR026" H 6375 6050 50  0001 C CNN
F 1 "GND" H 6375 6150 50  0000 C CNN
F 2 "" H 6375 6300 60  0000 C CNN
F 3 "" H 6375 6300 60  0000 C CNN
	1    6375 6300
	-1   0    0    1   
$EndComp
Wire Wire Line
	6575 6350 6575 6400
Wire Wire Line
	6475 5975 6475 6400
$Comp
L USB_B P4
U 1 1 5628307A
P 6475 6700
F 0 "P4" H 6675 6500 50  0000 C CNN
F 1 "USB_B" H 6425 6900 50  0000 C CNN
F 2 "Connect:USB_Mini-B" V 6425 6600 60  0001 C CNN
F 3 "" V 6425 6600 60  0000 C CNN
	1    6475 6700
	-1   0    0    1   
$EndComp
Wire Wire Line
	6375 6300 6375 6400
$Comp
L D D2
U 1 1 56283E9C
P 6675 5900
F 0 "D2" H 6675 6000 50  0000 C CNN
F 1 "D" H 6675 5800 50  0000 C CNN
F 2 "SMD_Packages:SMD-1206_Pol" H 6675 5900 60  0001 C CNN
F 3 "" H 6675 5900 60  0000 C CNN
	1    6675 5900
	0    1    1    0   
$EndComp
Wire Wire Line
	6675 6050 6675 6400
Text GLabel 6675 5675 1    60   Input ~ 0
5V_IN
Wire Wire Line
	6675 5675 6675 5750
$Comp
L GND #PWR027
U 1 1 5629398F
P 6075 6800
F 0 "#PWR027" H 6075 6550 50  0001 C CNN
F 1 "GND" H 6075 6650 50  0000 C CNN
F 2 "" H 6075 6800 60  0000 C CNN
F 3 "" H 6075 6800 60  0000 C CNN
	1    6075 6800
	0    1    1    0   
$EndComp
Wire Wire Line
	6075 6800 6175 6800
$Comp
L LED D4
U 1 1 562941BA
P 5900 4400
F 0 "D4" H 5900 4500 50  0000 C CNN
F 1 "LED" H 5900 4300 50  0000 C CNN
F 2 "LEDs:LED-0805" H 5900 4400 60  0001 C CNN
F 3 "" H 5900 4400 60  0000 C CNN
	1    5900 4400
	0    -1   -1   0   
$EndComp
$Comp
L R R5
U 1 1 562941C0
P 5900 4825
F 0 "R5" V 5980 4825 50  0000 C CNN
F 1 "470" V 5850 4825 50  0000 C CNN
F 2 "Capacitors_SMD:C_0805" V 5830 4825 30  0001 C CNN
F 3 "" H 5900 4825 30  0000 C CNN
	1    5900 4825
	1    0    0    -1  
$EndComp
Wire Wire Line
	5900 4975 5900 5025
$Comp
L GND #PWR028
U 1 1 562941C7
P 5900 5025
F 0 "#PWR028" H 5900 4775 50  0001 C CNN
F 1 "GND" H 5900 4875 50  0000 C CNN
F 2 "" H 5900 5025 60  0000 C CNN
F 3 "" H 5900 5025 60  0000 C CNN
	1    5900 5025
	1    0    0    -1  
$EndComp
Wire Wire Line
	5900 4675 5900 4600
Wire Wire Line
	5900 4100 5900 4200
Text GLabel 5900 4100 1    60   Input ~ 0
PC9
Text GLabel 6225 4100 1    60   Input ~ 0
PC8
Wire Wire Line
	10775 3800 10350 3800
Text GLabel 10350 3800 0    60   Input ~ 0
VBAT
Text GLabel 6575 6350 1    60   Input ~ 0
PA11
Text GLabel 6475 5975 1    60   Input ~ 0
PA12
$Comp
L SW_PUSH SW1
U 1 1 564AB04F
P 5300 1125
F 0 "SW1" H 5450 1235 50  0000 C CNN
F 1 "SW_PUSH" H 5300 1045 50  0000 C CNN
F 2 "Buttons_Switches_SMD:SW_SPST_FSMSM" H 5300 1125 60  0001 C CNN
F 3 "" H 5300 1125 60  0000 C CNN
	1    5300 1125
	1    0    0    -1  
$EndComp
Connection ~ 4950 1125
$Comp
L R R6
U 1 1 564ABC53
P 5650 1350
F 0 "R6" V 5730 1350 50  0000 C CNN
F 1 "1k" V 5600 1350 50  0000 C CNN
F 2 "Capacitors_SMD:C_0805" V 5580 1350 30  0001 C CNN
F 3 "" H 5650 1350 30  0000 C CNN
	1    5650 1350
	1    0    0    -1  
$EndComp
Wire Wire Line
	5600 1125 5650 1125
Wire Wire Line
	5650 1125 5650 1200
$Comp
L GND #PWR029
U 1 1 564ABF58
P 4950 1550
F 0 "#PWR029" H 4950 1300 50  0001 C CNN
F 1 "GND" H 4950 1400 50  0000 C CNN
F 2 "" H 4950 1550 60  0000 C CNN
F 3 "" H 4950 1550 60  0000 C CNN
	1    4950 1550
	1    0    0    -1  
$EndComp
Wire Wire Line
	4950 1500 4950 1550
Wire Wire Line
	4775 675  4950 675 
Wire Wire Line
	4950 675  4950 750 
Wire Wire Line
	4750 1125 5000 1125
$Comp
L SW_PUSH SW2
U 1 1 564AE0CA
P 6375 1125
F 0 "SW2" H 6525 1235 50  0000 C CNN
F 1 "SW_PUSH" H 6375 1045 50  0000 C CNN
F 2 "Buttons_Switches_SMD:SW_SPST_FSMSM" H 6375 1125 60  0001 C CNN
F 3 "" H 6375 1125 60  0000 C CNN
	1    6375 1125
	1    0    0    -1  
$EndComp
$Comp
L R R7
U 1 1 564AE533
P 6725 925
F 0 "R7" V 6805 925 50  0000 C CNN
F 1 "1k" V 6675 925 50  0000 C CNN
F 2 "Capacitors_SMD:C_0805" V 6655 925 30  0001 C CNN
F 3 "" H 6725 925 30  0000 C CNN
	1    6725 925 
	-1   0    0    1   
$EndComp
Text GLabel 6550 700  0    60   Input ~ 0
VDD1
Wire Wire Line
	6550 700  6725 700 
Wire Wire Line
	6725 700  6725 775 
Wire Wire Line
	6675 1125 6725 1125
Wire Wire Line
	6725 1125 6725 1075
Wire Wire Line
	6075 1125 5975 1125
Connection ~ 5975 1125
Text GLabel 10400 6200 0    60   Input ~ 0
VDD1
Wire Wire Line
	10400 6200 10775 6200
Text GLabel 10400 6000 0    60   Input ~ 0
5V_IN
Text Notes 7325 7500 0    60   ~ 0
ARMKit2
Text Notes 7275 7250 0    60   ~ 0
1
Text Notes 7375 7250 0    60   ~ 0
1
Text Notes 10550 7650 0    60   ~ 0
B
Text Notes 8125 7650 0    60   ~ 0
November 24, 2015
Text Notes 7750 7500 0    60   ~ 0
(stm32-breakout-mk2)
$Comp
L R R9
U 1 1 576DE496
P 8800 1325
F 0 "R9" H 8900 1300 50  0000 C CNN
F 1 "DNP" H 8925 1400 50  0000 C CNN
F 2 "Capacitors_SMD:C_0805" V 8730 1325 30  0001 C CNN
F 3 "" H 8800 1325 30  0000 C CNN
	1    8800 1325
	1    0    0    -1  
$EndComp
Wire Wire Line
	8500 1025 8800 1025
Wire Wire Line
	8800 1025 8800 1175
Connection ~ 8500 1025
Wire Wire Line
	8500 1550 8800 1550
Wire Wire Line
	8800 1550 8800 1475
Connection ~ 8500 1550
Text GLabel 7300 1175 1    60   Input ~ 0
PB11_VCAP1
$Comp
L C C5
U 1 1 576E0E98
P 7300 1475
F 0 "C5" H 7325 1575 50  0000 L CNN
F 1 "4.7uF" H 7325 1375 50  0000 L CNN
F 2 "Capacitors_SMD:C_0805" H 7300 1475 60  0001 C CNN
F 3 "" H 7300 1475 60  0000 C CNN
	1    7300 1475
	-1   0    0    1   
$EndComp
$Comp
L GND #PWR030
U 1 1 576E0F4A
P 7300 1750
F 0 "#PWR030" H 7300 1500 50  0001 C CNN
F 1 "GND" H 7300 1600 50  0000 C CNN
F 2 "" H 7300 1750 60  0000 C CNN
F 3 "" H 7300 1750 60  0000 C CNN
	1    7300 1750
	1    0    0    -1  
$EndComp
Wire Wire Line
	7300 1625 7300 1750
Wire Wire Line
	7300 1325 7300 1175
Text Notes 550  975  0    60   ~ 0
Notes:\nFor STM32F405 parts, Populate C1 and C3 with 2.2uF capacitors.  \nDo not populate C5, R9.\nFor STM32F41x, STM32F4x1 parts, Populate R9 and C1 with 0 ohm resistor. \nPopulate C5 with 4.7uF capacitor.  Do not populate C3.
$EndSCHEMATC