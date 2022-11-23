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
L Connector_Generic:Conn_01x17 J_BRD1
U 1 1 5C01C12E
P 2600 3300
F 0 "J_BRD1" H 3050 3300 50  0000 C CNN
F 1 "Conn_01x17" V 2520 4225 50  0001 C CNN
F 2 "Connector_PinHeader_2.54mm:PinHeader_1x17_P2.54mm_Vertical" H 2600 3300 50  0001 C CNN
F 3 "~" H 2600 3300 50  0001 C CNN
	1    2600 3300
	-1   0    0    -1  
$EndComp
$Comp
L Connector_Generic:Conn_02x05_Odd_Even J_JTAG1
U 1 1 5C01C1EE
P 3000 4850
F 0 "J_JTAG1" H 3050 5175 50  0000 C CNN
F 1 "Conn_02x05_Odd_Even" H 3050 5175 50  0001 C CNN
F 2 "Connector_IDC:IDC-Header_2x05_P2.54mm_Horizontal" H 3000 4850 50  0001 C CNN
F 3 "~" H 3000 4850 50  0001 C CNN
	1    3000 4850
	1    0    0    -1  
$EndComp
$Comp
L Connector_Generic:Conn_01x17 J_AUX1
U 1 1 5C01C220
P 3500 3300
F 0 "J_AUX1" H 3750 3300 50  0000 L CNN
F 1 "Conn_01x17" H 3450 4250 50  0001 L CNN
F 2 "Connector_PinSocket_2.54mm:PinSocket_1x17_P2.54mm_Vertical" H 3500 3300 50  0001 C CNN
F 3 "~" H 3500 3300 50  0001 C CNN
	1    3500 3300
	1    0    0    -1  
$EndComp
Wire Wire Line
	2800 2500 3300 2500
Wire Wire Line
	2800 2600 3300 2600
Wire Wire Line
	2800 2700 3300 2700
Wire Wire Line
	2800 2800 3300 2800
Wire Wire Line
	2800 2900 3300 2900
Wire Wire Line
	2800 3000 3300 3000
Wire Wire Line
	2800 3100 3300 3100
Wire Wire Line
	2800 3200 3300 3200
Wire Wire Line
	2800 3400 3300 3400
Wire Wire Line
	2800 3500 3300 3500
Wire Wire Line
	2800 3600 3300 3600
Wire Wire Line
	2800 3700 3300 3700
Wire Wire Line
	2800 3800 3300 3800
Wire Wire Line
	2800 3900 3300 3900
Wire Wire Line
	2800 4000 3300 4000
Wire Wire Line
	2800 4100 3300 4100
Text Label 2850 2500 0    50   ~ 0
A7_TDI_9
Text Label 2400 5050 0    50   ~ 0
A7_TDI_9
Text Label 2850 2600 0    50   ~ 0
A6_TDO_3
Text Label 2400 4750 0    50   ~ 0
A6_TDO_3
Wire Wire Line
	2400 4750 2800 4750
Text Label 2850 2700 0    50   ~ 0
A5_TMS_5
Wire Wire Line
	2800 4850 2400 4850
Text Label 2400 4850 0    50   ~ 0
A5_TMS_5
Text Label 2850 2800 0    50   ~ 0
A4_TCK_1
Wire Wire Line
	2800 4650 2400 4650
Text Label 2400 4650 0    50   ~ 0
A4_TCK_1
Text Label 2950 3500 0    50   ~ 0
GND
Wire Wire Line
	3300 4650 3700 4650
Text Label 3700 4650 2    50   ~ 0
GND
Wire Wire Line
	3300 5050 3700 5050
Text Label 3700 5050 2    50   ~ 0
GND
Text Label 3000 3700 0    50   ~ 0
5V
Text Label 2900 3900 0    50   ~ 0
RESET
Wire Wire Line
	3300 4750 3700 4750
Text Label 3700 4750 2    50   ~ 0
5V
Wire Wire Line
	3300 4850 3700 4850
Text Label 3700 4850 2    50   ~ 0
RESET
NoConn ~ 2800 3300
NoConn ~ 3300 3300
NoConn ~ 2800 4950
NoConn ~ 3300 4950
Wire Wire Line
	2800 5050 2400 5050
$EndSCHEMATC
