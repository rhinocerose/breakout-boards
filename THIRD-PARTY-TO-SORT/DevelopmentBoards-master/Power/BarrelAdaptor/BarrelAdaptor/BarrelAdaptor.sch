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
L Connector:Barrel_Jack_Switch JIN1
U 1 1 5C7AA5F3
P 3000 2850
F 0 "JIN1" H 3050 3200 50  0000 C CNN
F 1 "Barrel_Jack_Switch" H 3050 3100 50  0000 C CNN
F 2 "Connector_BarrelJack:BarrelJack_Horizontal" H 3050 2810 50  0001 C CNN
F 3 "~" H 3050 2810 50  0001 C CNN
	1    3000 2850
	1    0    0    -1  
$EndComp
$Comp
L Connector_Generic:Conn_01x02 JOUT1
U 1 1 5C7AA83B
P 4150 2750
F 0 "JOUT1" H 4050 3000 50  0000 L CNN
F 1 "Conn_01x02" H 3950 2900 50  0000 L CNN
F 2 "Connector_PinSocket_2.54mm:PinSocket_1x02_P2.54mm_Vertical" H 4150 2750 50  0001 C CNN
F 3 "~" H 4150 2750 50  0001 C CNN
	1    4150 2750
	1    0    0    -1  
$EndComp
Wire Wire Line
	3300 2750 3850 2750
Wire Wire Line
	3300 2850 3400 2850
Wire Wire Line
	3300 2950 3400 2950
Wire Wire Line
	3400 2950 3400 2850
Connection ~ 3400 2850
Wire Wire Line
	3400 2850 3750 2850
$Comp
L Connector_Generic:Conn_01x02 JOUT2
U 1 1 5C7AA97D
P 4150 3250
F 0 "JOUT2" H 4050 3500 50  0000 L CNN
F 1 "Conn_01x02" H 3950 3400 50  0000 L CNN
F 2 "Connector_PinSocket_2.54mm:PinSocket_1x02_P2.54mm_Vertical" H 4150 3250 50  0001 C CNN
F 3 "~" H 4150 3250 50  0001 C CNN
	1    4150 3250
	1    0    0    -1  
$EndComp
Wire Wire Line
	3850 2750 3850 3250
Wire Wire Line
	3850 3250 3950 3250
Connection ~ 3850 2750
Wire Wire Line
	3850 2750 3950 2750
Wire Wire Line
	3750 2850 3750 3350
Wire Wire Line
	3750 3350 3950 3350
Connection ~ 3750 2850
Wire Wire Line
	3750 2850 3950 2850
$Comp
L Connector_Generic:Conn_01x02 JOUT3
U 1 1 5C7AAC69
P 4150 3700
F 0 "JOUT3" H 4050 3950 50  0000 L CNN
F 1 "Conn_01x02" H 3950 3850 50  0000 L CNN
F 2 "Connector_PinSocket_2.54mm:PinSocket_1x02_P2.54mm_Vertical" H 4150 3700 50  0001 C CNN
F 3 "~" H 4150 3700 50  0001 C CNN
	1    4150 3700
	1    0    0    -1  
$EndComp
Wire Wire Line
	3950 3700 3850 3700
Wire Wire Line
	3850 3700 3850 3250
Connection ~ 3850 3250
Wire Wire Line
	3750 3350 3750 3800
Wire Wire Line
	3750 3800 3950 3800
Connection ~ 3750 3350
$EndSCHEMATC
