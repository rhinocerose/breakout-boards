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
Wire Wire Line
	4000 2900 5000 2900
Wire Wire Line
	4000 3000 5000 3000
Wire Wire Line
	4000 3100 5000 3100
Wire Wire Line
	4000 3200 5000 3200
Wire Wire Line
	4000 3300 5000 3300
Wire Wire Line
	5000 3400 4000 3400
Wire Wire Line
	4000 3500 5000 3500
Wire Wire Line
	5000 3600 4000 3600
Wire Wire Line
	4000 3700 5000 3700
Wire Wire Line
	5000 3800 4000 3800
Wire Wire Line
	4000 3900 5000 3900
Wire Wire Line
	4000 4000 5000 4000
Wire Wire Line
	4000 4100 5000 4100
Wire Wire Line
	4000 4200 5000 4200
Wire Wire Line
	4000 4300 5000 4300
Wire Wire Line
	4000 4400 5000 4400
$Comp
L Connector_Generic:Conn_01x16 J_DIP16
U 1 1 5C8461D0
P 5200 3600
F 0 "J_DIP16" H 5500 3550 50  0000 L CNN
F 1 "Conn_01x16" H 5450 3450 50  0000 L CNN
F 2 "Package_DIP:DIP-16_W7.62mm_Socket" H 5200 3600 50  0001 C CNN
F 3 "~" H 5200 3600 50  0001 C CNN
	1    5200 3600
	1    0    0    -1  
$EndComp
Wire Wire Line
	4500 4600 5000 4600
$Comp
L Connector_Generic:Conn_01x17 J_QFN16
U 1 1 5C847F21
P 3800 3700
F 0 "J_QFN16" H 3720 4717 50  0000 C CNN
F 1 "Conn_01x17" H 3720 4626 50  0000 C CNN
F 2 "Package_DFN_QFN:QFN-16-1EP_4x4mm_P0.65mm_EP2.7x2.7mm_ThermalVias" H 3800 3700 50  0001 C CNN
F 3 "~" H 3800 3700 50  0001 C CNN
	1    3800 3700
	-1   0    0    -1  
$EndComp
Wire Wire Line
	4500 4600 4500 4500
Wire Wire Line
	4500 4500 4000 4500
Wire Wire Line
	5000 4800 4500 4800
Wire Wire Line
	4500 4800 4500 4600
Connection ~ 4500 4600
$Comp
L Connector_Generic:Conn_01x01 J_EP1
U 1 1 5C848C61
P 5200 4600
F 0 "J_EP1" H 5280 4642 50  0000 L CNN
F 1 "Conn_01x01" H 5280 4551 50  0000 L CNN
F 2 "Connector_PinHeader_2.54mm:PinHeader_1x01_P2.54mm_Vertical" H 5200 4600 50  0001 C CNN
F 3 "~" H 5200 4600 50  0001 C CNN
	1    5200 4600
	1    0    0    -1  
$EndComp
$Comp
L Connector_Generic:Conn_01x01 J_EP2
U 1 1 5C848D15
P 5200 4800
F 0 "J_EP2" H 5280 4842 50  0000 L CNN
F 1 "Conn_01x01" H 5280 4751 50  0000 L CNN
F 2 "Connector_PinHeader_2.54mm:PinHeader_1x01_P2.54mm_Vertical" H 5200 4800 50  0001 C CNN
F 3 "~" H 5200 4800 50  0001 C CNN
	1    5200 4800
	1    0    0    -1  
$EndComp
$EndSCHEMATC
