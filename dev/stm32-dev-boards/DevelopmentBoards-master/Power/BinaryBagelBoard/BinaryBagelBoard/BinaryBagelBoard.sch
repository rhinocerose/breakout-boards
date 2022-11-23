EESchema Schematic File Version 4
LIBS:BinaryBagelBoard-cache
EELAYER 26 0
EELAYER END
$Descr A4 11693 8268
encoding utf-8
Sheet 1 1
Title "The BinaryBagelBoard"
Date "2018-12-29"
Rev "RevA"
Comp ""
Comment1 "Input: 9VDC single supply. "
Comment2 "Output: +/-5V @ 100mA (max)"
Comment3 "A regulated PSU bread board adaptor for FX pedal dev"
Comment4 ""
$EndDescr
$Comp
L Converter_DCDC:TC7662BxPA U_INV1
U 1 1 5C26C78C
P 4900 2650
F 0 "U_INV1" H 4950 3550 50  0000 C CNN
F 1 "TC7662BxPA" H 4950 3400 50  0000 C CNN
F 2 "Package_SO:SOIC-8_3.9x4.9mm_P1.27mm" H 5000 2550 50  0001 C CNN
F 3 "http://ww1.microchip.com/downloads/en/DeviceDoc/21469a.pdf" H 5000 2550 50  0001 C CNN
	1    4900 2650
	1    0    0    -1  
$EndComp
$Comp
L Regulator_Linear:MC78L05_SOT89 U_PR1
U 1 1 5C26C8ED
P 3100 3100
F 0 "U_PR1" H 3100 3342 50  0000 C CNN
F 1 "MC78L05_SOT89" H 3100 3251 50  0000 C CNN
F 2 "Package_TO_SOT_SMD:SOT-89-3_Handsoldering" H 3100 3300 50  0001 C CIN
F 3 "http://www.fairchildsemi.com/ds/LM/LM78L05A.pdf" H 3100 3050 50  0001 C CNN
	1    3100 3100
	1    0    0    -1  
$EndComp
$Comp
L Connector_Generic:Conn_01x03 J_OUT1
U 1 1 5C26CE74
P 9900 2400
F 0 "J_OUT1" H 9980 2442 50  0000 L CNN
F 1 "Conn_01x03" H 9980 2351 50  0000 L CNN
F 2 "TerminalBlock:TerminalBlock_bornier-3_P5.08mm" H 9900 2400 50  0001 C CNN
F 3 "~" H 9900 2400 50  0001 C CNN
	1    9900 2400
	1    0    0    -1  
$EndComp
$Comp
L Connector:Barrel_Jack J_IN1
U 1 1 5C26CFA1
P 1350 2100
F 0 "J_IN1" H 1350 1750 50  0000 C CNN
F 1 "Barrel_Jack" H 1350 1750 50  0001 C CNN
F 2 "Connector_BarrelJack:BarrelJack_Horizontal" H 1400 2060 50  0001 C CNN
F 3 "~" H 1400 2060 50  0001 C CNN
	1    1350 2100
	1    0    0    1   
$EndComp
$Comp
L Connector_Generic:Conn_01x02 J_IN2
U 1 1 5C26D0F0
P 1300 2700
F 0 "J_IN2" H 1220 2917 50  0000 C CNN
F 1 "Conn_01x02" H 1220 2826 50  0000 C CNN
F 2 "TerminalBlock:TerminalBlock_bornier-2_P5.08mm" H 1300 2700 50  0001 C CNN
F 3 "~" H 1300 2700 50  0001 C CNN
	1    1300 2700
	-1   0    0    -1  
$EndComp
$Comp
L Device:C C_NR1
U 1 1 5C26D5DE
P 7200 3350
F 0 "C_NR1" H 6800 3300 50  0000 L CNN
F 1 "330nF" H 6800 3400 50  0000 L CNN
F 2 "Capacitor_SMD:C_0805_2012Metric_Pad1.15x1.40mm_HandSolder" H 7238 3200 50  0001 C CNN
F 3 "~" H 7200 3350 50  0001 C CNN
	1    7200 3350
	1    0    0    1   
$EndComp
Wire Wire Line
	3400 3100 3600 3100
$Comp
L Device:C C_NR2
U 1 1 5C26D9DD
P 8200 3350
F 0 "C_NR2" H 8085 3304 50  0000 R CNN
F 1 "100nF" H 8085 3395 50  0000 R CNN
F 2 "Capacitor_SMD:C_0805_2012Metric_Pad1.15x1.40mm_HandSolder" H 8238 3200 50  0001 C CNN
F 3 "~" H 8200 3350 50  0001 C CNN
	1    8200 3350
	-1   0    0    1   
$EndComp
$Comp
L Device:C C_PR2
U 1 1 5C26DA13
P 3600 3350
F 0 "C_PR2" H 3715 3396 50  0000 L CNN
F 1 "100nF" H 3715 3305 50  0000 L CNN
F 2 "Capacitor_SMD:C_0805_2012Metric_Pad1.15x1.40mm_HandSolder" H 3638 3200 50  0001 C CNN
F 3 "~" H 3600 3350 50  0001 C CNN
	1    3600 3350
	1    0    0    -1  
$EndComp
$Comp
L Device:C C_PR1
U 1 1 5C26DA3F
P 2600 3350
F 0 "C_PR1" H 2200 3400 50  0000 L CNN
F 1 "330nF" H 2200 3300 50  0000 L CNN
F 2 "Capacitor_SMD:C_0805_2012Metric_Pad1.15x1.40mm_HandSolder" H 2638 3200 50  0001 C CNN
F 3 "~" H 2600 3350 50  0001 C CNN
	1    2600 3350
	1    0    0    -1  
$EndComp
Wire Wire Line
	2800 3100 2600 3100
Wire Wire Line
	4900 2000 4900 2250
Wire Wire Line
	1500 2700 1900 2700
Wire Wire Line
	1900 2700 1900 2000
Wire Wire Line
	1500 2800 1750 2800
Wire Wire Line
	1750 2800 1750 3000
Wire Wire Line
	4900 3150 4900 4100
$Comp
L Device:CP C_INV1
U 1 1 5C270C48
P 5550 2750
F 0 "C_INV1" H 5668 2796 50  0000 L CNN
F 1 "10uF" H 5668 2705 50  0000 L CNN
F 2 "Capacitor_SMD:CP_Elec_4x5.7" H 5588 2600 50  0001 C CNN
F 3 "~" H 5550 2750 50  0001 C CNN
	1    5550 2750
	1    0    0    -1  
$EndComp
Wire Wire Line
	5300 2550 5550 2550
Wire Wire Line
	5550 2550 5550 2600
Wire Wire Line
	5300 2950 5550 2950
Wire Wire Line
	5550 2950 5550 2900
Wire Wire Line
	8000 3100 8200 3100
Wire Wire Line
	7200 3200 7200 3100
Wire Wire Line
	7200 3100 7400 3100
Wire Wire Line
	8200 3200 8200 3100
Wire Wire Line
	2600 3100 2600 2000
Wire Wire Line
	2600 2000 4300 2000
Wire Wire Line
	5300 2350 6200 2350
Wire Wire Line
	7200 2350 7200 3100
Connection ~ 7200 3100
$Comp
L Device:CP C_INV2
U 1 1 5C27D751
P 6200 2750
F 0 "C_INV2" H 6082 2704 50  0000 R CNN
F 1 "10uF" H 6082 2795 50  0000 R CNN
F 2 "Capacitor_SMD:CP_Elec_4x5.7" H 6238 2600 50  0001 C CNN
F 3 "~" H 6200 2750 50  0001 C CNN
	1    6200 2750
	-1   0    0    1   
$EndComp
Wire Wire Line
	6200 2600 6200 2350
Connection ~ 6200 2350
Wire Wire Line
	6200 2350 7200 2350
Wire Wire Line
	6200 2900 6200 4100
Wire Wire Line
	4500 2350 4300 2350
Wire Wire Line
	4300 2350 4300 2000
Connection ~ 4300 2000
Wire Wire Line
	4300 2000 4900 2000
Wire Wire Line
	4500 2850 4400 2850
Wire Wire Line
	4400 2850 4400 4100
NoConn ~ 4500 2650
Wire Wire Line
	7200 3500 7200 3600
Wire Wire Line
	7200 3600 7700 3600
Wire Wire Line
	8200 3600 8200 3500
Wire Wire Line
	7700 3400 7700 3600
Connection ~ 7700 3600
Wire Wire Line
	7700 3600 8200 3600
Wire Wire Line
	7700 3600 7700 4100
Wire Wire Line
	3100 3400 3100 3600
Wire Wire Line
	3600 3500 3600 3600
Wire Wire Line
	3600 3600 3100 3600
Connection ~ 3100 3600
Wire Wire Line
	3100 3600 3100 4100
Wire Wire Line
	2600 3500 2600 3600
Wire Wire Line
	2600 3600 3100 3600
Wire Wire Line
	2600 3200 2600 3100
Connection ~ 2600 3100
Wire Wire Line
	3600 3100 3600 3200
Text Label 3100 4100 1    50   ~ 0
GND
Text Label 4400 4100 1    50   ~ 0
GND
Text Label 4900 4100 1    50   ~ 0
GND
Text Label 6200 4100 1    50   ~ 0
GND
Text Label 7700 4100 1    50   ~ 0
GND
Text Label 1750 3000 1    50   ~ 0
GND
Text Label 1750 2450 1    50   ~ 0
GND
Text Label 9500 2950 1    50   ~ 0
GND
Wire Wire Line
	9500 2950 9500 2500
Wire Wire Line
	9500 2500 9700 2500
Wire Wire Line
	9700 2400 9300 2400
Wire Wire Line
	9700 2300 9300 2300
Text Label 9300 2300 0    50   ~ 0
+5V
Text Label 9300 2400 0    50   ~ 0
-5V
Wire Wire Line
	3600 3100 4000 3100
Connection ~ 3600 3100
Text Label 4000 3100 2    50   ~ 0
+5V
Wire Wire Line
	8200 3100 8600 3100
Connection ~ 8200 3100
Text Label 8600 3100 2    50   ~ 0
-5V
$Comp
L Connector_Generic:Conn_01x08 J_MNT1
U 1 1 5C2987BB
P 2400 5900
F 0 "J_MNT1" H 2480 5892 50  0000 L CNN
F 1 "Conn_01x08" H 2480 5801 50  0000 L CNN
F 2 "Connector_PinHeader_2.54mm:PinHeader_1x08_P2.54mm_Vertical" H 2400 5900 50  0001 C CNN
F 3 "~" H 2400 5900 50  0001 C CNN
	1    2400 5900
	1    0    0    -1  
$EndComp
$Comp
L Connector_Generic:Conn_01x08 J_MNT2
U 1 1 5C2987F7
P 3400 5900
F 0 "J_MNT2" H 3480 5892 50  0000 L CNN
F 1 "Conn_01x08" H 3480 5801 50  0000 L CNN
F 2 "Connector_PinHeader_2.54mm:PinHeader_1x08_P2.54mm_Vertical" H 3400 5900 50  0001 C CNN
F 3 "~" H 3400 5900 50  0001 C CNN
	1    3400 5900
	1    0    0    -1  
$EndComp
NoConn ~ 3200 5600
NoConn ~ 3200 5700
NoConn ~ 3200 5800
NoConn ~ 3200 5900
NoConn ~ 3200 6000
NoConn ~ 3200 6100
NoConn ~ 3200 6200
NoConn ~ 3200 6300
NoConn ~ 2200 6300
NoConn ~ 2200 6200
NoConn ~ 2200 6100
NoConn ~ 2200 6000
NoConn ~ 2200 5900
NoConn ~ 2200 5800
NoConn ~ 2200 5700
NoConn ~ 2200 5600
Wire Wire Line
	1650 2200 1750 2200
Wire Wire Line
	1750 2200 1750 2450
Wire Wire Line
	1650 2000 1900 2000
Text Notes 1050 1900 0    50   ~ 0
Centre Negative
$Comp
L Device:D_Schottky DP1
U 1 1 5C28AAA5
P 2250 2000
F 0 "DP1" H 2250 1784 50  0000 C CNN
F 1 "D_Schottky" H 2250 1875 50  0000 C CNN
F 2 "Diode_SMD:D_SOD-123" H 2250 2000 50  0001 C CNN
F 3 "~" H 2250 2000 50  0001 C CNN
	1    2250 2000
	-1   0    0    1   
$EndComp
Wire Wire Line
	1900 2000 2100 2000
Connection ~ 1900 2000
Wire Wire Line
	2400 2000 2600 2000
Connection ~ 2600 2000
$Comp
L Regulator_Linear:L79L05_SOT89 U_NR1
U 1 1 5C3DA091
P 7700 3100
F 0 "U_NR1" H 7700 2858 50  0000 C CNN
F 1 "L79L05_SOT89" H 7700 2949 50  0000 C CNN
F 2 "Package_TO_SOT_SMD:SOT-89-3" H 7700 2900 50  0001 C CIN
F 3 "http://www.farnell.com/datasheets/1827870.pdf" H 7700 3100 50  0001 C CNN
	1    7700 3100
	1    0    0    1   
$EndComp
$EndSCHEMATC
