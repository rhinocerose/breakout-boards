EESchema Schematic File Version 4
EELAYER 26 0
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
L DummyQFN:DummyQFN32 U1
U 1 1 5C4CA01A
P 2700 3250
F 0 "U1" H 2625 3325 50  0000 L CNN
F 1 "DummyQFN32" H 2425 3200 50  0000 L CNN
F 2 "Package_DFN_QFN:Texas_S-PVQFN-N32_EP3.45x3.45mm_ThermalVias" H 2700 3250 50  0001 C CNN
F 3 "" H 2700 3250 50  0001 C CNN
	1    2700 3250
	1    0    0    -1  
$EndComp
$Comp
L DummyQFN:DummyQFN32 U1
U 2 1 5C4CA05A
P 2700 4600
F 0 "U1" V 2435 4706 50  0000 C CNN
F 1 "DummyQFN32" V 2526 4706 50  0000 C CNN
F 2 "Package_DFN_QFN:Texas_S-PVQFN-N32_EP3.45x3.45mm_ThermalVias" H 2700 4600 50  0001 C CNN
F 3 "" H 2700 4600 50  0001 C CNN
	2    2700 4600
	0    1    1    0   
$EndComp
$Comp
L Connector_Generic:Conn_01x01 J2
U 1 1 5C4CA20F
P 3850 4800
F 0 "J2" H 3930 4842 50  0000 L CNN
F 1 "Conn_01x01" H 3930 4751 50  0000 L CNN
F 2 "Connector_PinHeader_2.54mm:PinHeader_1x01_P2.54mm_Vertical" H 3850 4800 50  0001 C CNN
F 3 "~" H 3850 4800 50  0001 C CNN
	1    3850 4800
	1    0    0    -1  
$EndComp
$Comp
L Connector_Generic:Conn_01x01 J1
U 1 1 5C4CA25B
P 3850 4400
F 0 "J1" H 3930 4442 50  0000 L CNN
F 1 "Conn_01x01" H 3930 4351 50  0000 L CNN
F 2 "Connector_PinHeader_2.54mm:PinHeader_1x01_P2.54mm_Vertical" H 3850 4400 50  0001 C CNN
F 3 "~" H 3850 4400 50  0001 C CNN
	1    3850 4400
	1    0    0    -1  
$EndComp
Wire Wire Line
	3000 4600 3125 4600
Wire Wire Line
	3125 4600 3125 4400
Wire Wire Line
	3125 4400 3650 4400
Wire Wire Line
	3125 4600 3125 4800
Wire Wire Line
	3125 4800 3650 4800
Connection ~ 3125 4600
Text Label 3125 4400 0    50   ~ 0
THERMAL_PAD
Wire Wire Line
	2350 2650 2350 2400
Wire Wire Line
	2450 2650 2450 2400
Wire Wire Line
	2550 2650 2550 2400
Wire Wire Line
	2650 2650 2650 2400
Wire Wire Line
	2750 2650 2750 2400
Wire Wire Line
	2850 2650 2850 2400
Wire Wire Line
	2950 2650 2950 2400
Wire Wire Line
	3050 2650 3050 2400
Wire Wire Line
	2350 4100 2350 3850
Wire Wire Line
	2450 4100 2450 3850
Wire Wire Line
	2550 4100 2550 3850
Wire Wire Line
	2650 4100 2650 3850
Wire Wire Line
	2750 4100 2750 3850
Wire Wire Line
	2850 4100 2850 3850
Wire Wire Line
	2950 4100 2950 3850
Wire Wire Line
	3050 4100 3050 3850
Wire Wire Line
	2100 3600 1850 3600
Wire Wire Line
	2100 3500 1850 3500
Wire Wire Line
	2100 3400 1850 3400
Wire Wire Line
	2100 3300 1850 3300
Wire Wire Line
	2100 3200 1850 3200
Wire Wire Line
	2100 3100 1850 3100
Wire Wire Line
	2100 3000 1850 3000
Wire Wire Line
	2100 2900 1850 2900
Wire Wire Line
	3550 3600 3300 3600
Wire Wire Line
	3550 3500 3300 3500
Wire Wire Line
	3550 3400 3300 3400
Wire Wire Line
	3550 3300 3300 3300
Wire Wire Line
	3550 3200 3300 3200
Wire Wire Line
	3550 3100 3300 3100
Wire Wire Line
	3550 3000 3300 3000
Wire Wire Line
	3550 2900 3300 2900
$Comp
L Connector_Generic:Conn_01x16 J3
U 1 1 5C4D41D8
P 5350 2700
F 0 "J3" H 5270 3617 50  0000 C CNN
F 1 "Conn_01x16" H 5270 3526 50  0000 C CNN
F 2 "Connector_PinHeader_2.54mm:PinHeader_1x16_P2.54mm_Vertical" H 5350 2700 50  0001 C CNN
F 3 "~" H 5350 2700 50  0001 C CNN
	1    5350 2700
	-1   0    0    -1  
$EndComp
$Comp
L Connector_Generic:Conn_01x16 J4
U 1 1 5C4D562C
P 6650 2800
F 0 "J4" H 6569 1775 50  0000 C CNN
F 1 "Conn_01x16" H 6569 1866 50  0000 C CNN
F 2 "Connector_PinHeader_2.54mm:PinHeader_1x16_P2.54mm_Vertical" H 6650 2800 50  0001 C CNN
F 3 "~" H 6650 2800 50  0001 C CNN
	1    6650 2800
	1    0    0    1   
$EndComp
Text Label 1850 2900 0    50   ~ 0
1
Text Label 1850 3000 0    50   ~ 0
2
Text Label 1850 3100 0    50   ~ 0
3
Text Label 1850 3200 0    50   ~ 0
4
Text Label 1850 3300 0    50   ~ 0
5
Text Label 1850 3400 0    50   ~ 0
6
Text Label 1850 3500 0    50   ~ 0
7
Text Label 1850 3600 0    50   ~ 0
8
Text Label 2350 4100 1    50   ~ 0
9
Text Label 2450 4100 1    50   ~ 0
10
Text Label 2550 4100 1    50   ~ 0
11
Text Label 2650 4100 1    50   ~ 0
12
Text Label 2750 4100 1    50   ~ 0
13
Text Label 2850 4100 1    50   ~ 0
14
Text Label 2950 4100 1    50   ~ 0
15
Text Label 3050 4100 1    50   ~ 0
16
Text Label 3550 3600 2    50   ~ 0
17
Text Label 3550 3500 2    50   ~ 0
18
Text Label 3550 3400 2    50   ~ 0
19
Text Label 3550 3300 2    50   ~ 0
20
Text Label 3550 3200 2    50   ~ 0
21
Text Label 3550 3100 2    50   ~ 0
22
Text Label 3550 3000 2    50   ~ 0
23
Text Label 3550 2900 2    50   ~ 0
24
Text Label 3050 2400 3    50   ~ 0
25
Text Label 2950 2400 3    50   ~ 0
26
Text Label 2850 2400 3    50   ~ 0
27
Text Label 2750 2400 3    50   ~ 0
28
Text Label 2650 2400 3    50   ~ 0
29
Text Label 2550 2400 3    50   ~ 0
30
Text Label 2450 2400 3    50   ~ 0
31
Text Label 2350 2400 3    50   ~ 0
32
Wire Wire Line
	5550 2700 5800 2700
Wire Wire Line
	5550 2600 5800 2600
Wire Wire Line
	5550 2500 5800 2500
Wire Wire Line
	5550 2400 5800 2400
Wire Wire Line
	5550 2300 5800 2300
Wire Wire Line
	5550 2200 5800 2200
Wire Wire Line
	5550 2100 5800 2100
Wire Wire Line
	5550 2000 5800 2000
Text Label 5800 2000 2    50   ~ 0
1
Text Label 5800 2100 2    50   ~ 0
2
Text Label 5800 2200 2    50   ~ 0
3
Text Label 5800 2300 2    50   ~ 0
4
Text Label 5800 2400 2    50   ~ 0
5
Text Label 5800 2500 2    50   ~ 0
6
Text Label 5800 2600 2    50   ~ 0
7
Text Label 5800 2700 2    50   ~ 0
8
Wire Wire Line
	5800 2800 5550 2800
Wire Wire Line
	5800 2900 5550 2900
Wire Wire Line
	5800 3000 5550 3000
Wire Wire Line
	5800 3100 5550 3100
Wire Wire Line
	5800 3200 5550 3200
Wire Wire Line
	5800 3300 5550 3300
Wire Wire Line
	5800 3400 5550 3400
Wire Wire Line
	5800 3500 5550 3500
Text Label 5800 2800 2    50   ~ 0
9
Text Label 5800 2900 2    50   ~ 0
10
Text Label 5800 3000 2    50   ~ 0
11
Text Label 5800 3100 2    50   ~ 0
12
Text Label 5800 3200 2    50   ~ 0
13
Text Label 5800 3300 2    50   ~ 0
14
Text Label 5800 3400 2    50   ~ 0
15
Text Label 5800 3500 2    50   ~ 0
16
Wire Wire Line
	6200 3500 6450 3500
Wire Wire Line
	6200 3400 6450 3400
Wire Wire Line
	6200 3300 6450 3300
Wire Wire Line
	6200 3200 6450 3200
Wire Wire Line
	6200 3100 6450 3100
Wire Wire Line
	6200 3000 6450 3000
Wire Wire Line
	6200 2900 6450 2900
Wire Wire Line
	6200 2800 6450 2800
Text Label 6200 3500 0    50   ~ 0
17
Text Label 6200 3400 0    50   ~ 0
18
Text Label 6200 3300 0    50   ~ 0
19
Text Label 6200 3200 0    50   ~ 0
20
Text Label 6200 3100 0    50   ~ 0
21
Text Label 6200 3000 0    50   ~ 0
22
Text Label 6200 2900 0    50   ~ 0
23
Text Label 6200 2800 0    50   ~ 0
24
Wire Wire Line
	6450 2000 6200 2000
Wire Wire Line
	6450 2100 6200 2100
Wire Wire Line
	6450 2200 6200 2200
Wire Wire Line
	6450 2300 6200 2300
Wire Wire Line
	6450 2400 6200 2400
Wire Wire Line
	6450 2500 6200 2500
Wire Wire Line
	6450 2600 6200 2600
Wire Wire Line
	6450 2700 6200 2700
Text Label 6200 2700 0    50   ~ 0
25
Text Label 6200 2600 0    50   ~ 0
26
Text Label 6200 2500 0    50   ~ 0
27
Text Label 6200 2400 0    50   ~ 0
28
Text Label 6200 2300 0    50   ~ 0
29
Text Label 6200 2200 0    50   ~ 0
30
Text Label 6200 2100 0    50   ~ 0
31
Text Label 6200 2000 0    50   ~ 0
32
$EndSCHEMATC
