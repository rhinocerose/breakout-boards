EESchema Schematic File Version 4
LIBS:BinauralBagelBoard-cache
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
L socket_custom:JACK__MONO_2P_NC J_INOUT1
U 1 1 5C6B5D7F
P 2850 2200
F 0 "J_INOUT1" H 2850 1950 50  0000 R CNN
F 1 "JACK__MONO_2P_NC" H 2372 2300 50  0001 R CNN
F 2 "custom_sockets:JackSocket_Mono_PCB" H 2850 2200 50  0001 C CNN
F 3 "" H 2850 2200 50  0001 C CNN
	1    2850 2200
	1    0    0    1   
$EndComp
$Comp
L Amplifier_Operational:TL072 U_OA1
U 1 1 5C6B612C
P 5900 2200
F 0 "U_OA1" H 5900 2567 50  0000 C CNN
F 1 "TL072" H 5900 2476 50  0000 C CNN
F 2 "Package_SO:SOIC-8_3.9x4.9mm_P1.27mm" H 5900 2200 50  0001 C CNN
F 3 "http://www.ti.com/lit/ds/symlink/tl071.pdf" H 5900 2200 50  0001 C CNN
	1    5900 2200
	1    0    0    -1  
$EndComp
$Comp
L Amplifier_Operational:TL072 U_OA1
U 2 1 5C6B618A
P 9100 2200
F 0 "U_OA1" H 9100 2567 50  0000 C CNN
F 1 "TL072" H 9100 2476 50  0000 C CNN
F 2 "Package_SO:SOIC-8_3.9x4.9mm_P1.27mm" H 9100 2200 50  0001 C CNN
F 3 "http://www.ti.com/lit/ds/symlink/tl071.pdf" H 9100 2200 50  0001 C CNN
	2    9100 2200
	1    0    0    -1  
$EndComp
$Comp
L Amplifier_Operational:TL072 U_OA1
U 3 1 5C6B61EA
P 5500 5000
F 0 "U_OA1" H 5458 5046 50  0000 L CNN
F 1 "TL072" H 5458 4955 50  0000 L CNN
F 2 "Package_SO:SOIC-8_3.9x4.9mm_P1.27mm" H 5500 5000 50  0001 C CNN
F 3 "http://www.ti.com/lit/ds/symlink/tl071.pdf" H 5500 5000 50  0001 C CNN
	3    5500 5000
	1    0    0    -1  
$EndComp
Wire Wire Line
	5400 4700 5400 4400
Text Label 5400 4400 3    50   ~ 0
+5V
Wire Wire Line
	5400 5300 5400 5600
Text Label 5400 5600 1    50   ~ 0
-5V
Wire Wire Line
	3300 2200 3600 2200
Wire Wire Line
	3600 2200 3600 2300
Wire Wire Line
	3300 2300 3600 2300
Connection ~ 3600 2300
Wire Wire Line
	3600 2300 3600 2400
Wire Wire Line
	3300 2400 3600 2400
Connection ~ 3600 2400
Wire Wire Line
	3600 2400 3600 2700
Text Label 3600 2700 1    50   ~ 0
GND
$Comp
L Connector_Generic:Conn_02x02_Odd_Even JIO1
U 1 1 5C6B67ED
P 2800 3400
F 0 "JIO1" H 2850 3525 50  0000 C CNN
F 1 "Conn_02x02_Odd_Even" H 2850 3526 50  0001 C CNN
F 2 "Connector_PinSocket_2.54mm:PinSocket_2x02_P2.54mm_Vertical" H 2800 3400 50  0001 C CNN
F 3 "~" H 2800 3400 50  0001 C CNN
	1    2800 3400
	1    0    0    -1  
$EndComp
$Comp
L Connector_Generic:Conn_02x03_Odd_Even JOA1
U 1 1 5C6B6A90
P 5900 3400
F 0 "JOA1" H 5950 3625 50  0000 C CNN
F 1 "Conn_02x03_Odd_Even" H 5950 3626 50  0001 C CNN
F 2 "Connector_PinSocket_2.54mm:PinSocket_2x03_P2.54mm_Vertical" H 5900 3400 50  0001 C CNN
F 3 "~" H 5900 3400 50  0001 C CNN
	1    5900 3400
	1    0    0    -1  
$EndComp
$Comp
L Connector_Generic:Conn_02x03_Odd_Even JOA2
U 1 1 5C6B6ABA
P 9000 3400
F 0 "JOA2" H 9050 3625 50  0000 C CNN
F 1 "Conn_02x03_Odd_Even" H 9050 3626 50  0001 C CNN
F 2 "Connector_PinSocket_2.54mm:PinSocket_2x03_P2.54mm_Vertical" H 9000 3400 50  0001 C CNN
F 3 "~" H 9000 3400 50  0001 C CNN
	1    9000 3400
	1    0    0    -1  
$EndComp
Wire Wire Line
	3300 2100 3700 2100
Text Label 3700 2100 2    50   ~ 0
INOUT
Wire Wire Line
	2600 3400 2300 3400
Text Label 2300 3400 0    50   ~ 0
INOUT
Wire Wire Line
	2600 3500 2300 3500
Text Label 2300 3500 0    50   ~ 0
INOUT
Wire Wire Line
	3100 3400 3400 3400
Text Label 3400 3400 2    50   ~ 0
GND
Wire Wire Line
	3100 3500 3400 3500
Text Label 3400 3500 2    50   ~ 0
GND
Wire Wire Line
	5600 2100 5300 2100
Wire Wire Line
	8800 2100 8400 2100
Wire Wire Line
	5700 3300 5300 3300
Wire Wire Line
	5700 3400 5300 3400
Wire Wire Line
	5300 3500 5700 3500
Wire Wire Line
	6200 3300 6600 3300
Wire Wire Line
	6200 3400 6600 3400
Wire Wire Line
	6200 3500 6600 3500
Wire Wire Line
	8800 3300 8400 3300
Wire Wire Line
	8800 3400 8400 3400
Wire Wire Line
	8400 3500 8800 3500
Wire Wire Line
	9300 3300 9700 3300
Wire Wire Line
	9300 3400 9700 3400
Wire Wire Line
	9300 3500 9700 3500
Text Label 5300 2100 0    50   ~ 0
OAPA
Text Label 5300 2300 0    50   ~ 0
OAMA
Text Label 6600 2200 2    50   ~ 0
OAOA
Text Label 8400 2100 0    50   ~ 0
OAPB
Text Label 8400 2300 0    50   ~ 0
OAMB
Text Label 9800 2200 2    50   ~ 0
OAOB
Text Label 5300 3300 0    50   ~ 0
OAPA
Text Label 6600 3300 2    50   ~ 0
OAPA
Text Label 5300 3400 0    50   ~ 0
OAMA
Text Label 6600 3400 2    50   ~ 0
OAMA
Text Label 5300 3500 0    50   ~ 0
OAOA
Text Label 6600 3500 2    50   ~ 0
OAOA
Text Label 8400 3300 0    50   ~ 0
OAPB
Text Label 9700 3300 2    50   ~ 0
OAPB
Text Label 8400 3400 0    50   ~ 0
OAMB
Text Label 9700 3400 2    50   ~ 0
OAMB
Text Label 8400 3500 0    50   ~ 0
OAOB
Text Label 9700 3500 2    50   ~ 0
OAOB
$Comp
L Device:Jumper JP_OA1
U 1 1 5C6BBE61
P 6050 2750
F 0 "JP_OA1" H 6050 3014 50  0000 C CNN
F 1 "Jumper" H 6050 2923 50  0000 C CNN
F 2 "Jumper:SolderJumper-2_P1.3mm_Open_TrianglePad1.0x1.5mm" H 6050 2750 50  0001 C CNN
F 3 "~" H 6050 2750 50  0001 C CNN
	1    6050 2750
	1    0    0    -1  
$EndComp
Wire Wire Line
	5750 2750 5100 2750
Wire Wire Line
	5100 2750 5100 2300
Wire Wire Line
	5100 2300 5600 2300
Wire Wire Line
	6350 2750 6750 2750
Wire Wire Line
	6750 2750 6750 2200
Wire Wire Line
	6200 2200 6750 2200
$Comp
L Device:Jumper JP_OA2
U 1 1 5C6BCB39
P 9000 2750
F 0 "JP_OA2" H 9000 3014 50  0000 C CNN
F 1 "Jumper" H 9000 2923 50  0000 C CNN
F 2 "Jumper:SolderJumper-2_P1.3mm_Open_TrianglePad1.0x1.5mm" H 9000 2750 50  0001 C CNN
F 3 "~" H 9000 2750 50  0001 C CNN
	1    9000 2750
	1    0    0    -1  
$EndComp
Wire Wire Line
	8700 2750 8200 2750
Wire Wire Line
	8200 2750 8200 2300
Wire Wire Line
	8200 2300 8800 2300
Wire Wire Line
	9900 2200 9900 2750
Wire Wire Line
	9900 2750 9300 2750
Wire Wire Line
	9400 2200 9900 2200
$Comp
L Connector_Generic:Conn_01x03 J_PWRTHRU1
U 1 1 5C6C646A
P 2900 4500
F 0 "J_PWRTHRU1" H 2979 4496 50  0000 L CNN
F 1 "Conn_01x03" H 2980 4451 50  0001 L CNN
F 2 "Connector_PinHeader_2.54mm:PinHeader_1x03_P2.54mm_Horizontal" H 2900 4500 50  0001 C CNN
F 3 "~" H 2900 4500 50  0001 C CNN
	1    2900 4500
	1    0    0    -1  
$EndComp
Wire Wire Line
	2700 4400 2300 4400
Wire Wire Line
	2700 4500 2300 4500
Wire Wire Line
	2700 4600 2300 4600
Text Label 2300 4400 0    50   ~ 0
GND
Text Label 2300 4500 0    50   ~ 0
-5V
Text Label 2300 4600 0    50   ~ 0
+5V
$Comp
L Connector_Generic:Conn_01x03 J_PWRTHRU2
U 1 1 5C6C8976
P 2600 5300
F 0 "J_PWRTHRU2" H 2520 5525 50  0000 C CNN
F 1 "Conn_01x03" H 2680 5251 50  0001 L CNN
F 2 "Connector_PinHeader_2.54mm:PinHeader_1x03_P2.54mm_Horizontal" H 2600 5300 50  0001 C CNN
F 3 "~" H 2600 5300 50  0001 C CNN
	1    2600 5300
	-1   0    0    -1  
$EndComp
Wire Wire Line
	2800 5200 3200 5200
Wire Wire Line
	2800 5300 3200 5300
Wire Wire Line
	2800 5400 3200 5400
Text Label 3200 5200 2    50   ~ 0
GND
Text Label 3200 5300 2    50   ~ 0
-5V
Text Label 3200 5400 2    50   ~ 0
+5V
$Comp
L Connector_Generic:Conn_01x06 JMNT2
U 1 1 5C6CC4DE
P 7400 4900
F 0 "JMNT2" H 7300 5350 50  0000 C CNN
F 1 "Conn_01x06" H 7300 5250 50  0001 C CNN
F 2 "Connector_PinHeader_2.54mm:PinHeader_1x06_P2.54mm_Vertical" H 7400 4900 50  0001 C CNN
F 3 "~" H 7400 4900 50  0001 C CNN
	1    7400 4900
	-1   0    0    -1  
$EndComp
$Comp
L Connector_Generic:Conn_01x06 JMNT1
U 1 1 5C6CC51A
P 6900 4900
F 0 "JMNT1" H 6800 5350 50  0000 L CNN
F 1 "Conn_01x06" H 6600 5250 50  0001 L CNN
F 2 "Connector_PinHeader_2.54mm:PinHeader_1x06_P2.54mm_Vertical" H 6900 4900 50  0001 C CNN
F 3 "~" H 6900 4900 50  0001 C CNN
	1    6900 4900
	1    0    0    -1  
$EndComp
Wire Wire Line
	6700 4700 6400 4700
Wire Wire Line
	6700 4800 6400 4800
Wire Wire Line
	6400 4900 6700 4900
Wire Wire Line
	6700 5000 6400 5000
Wire Wire Line
	6400 5100 6700 5100
Wire Wire Line
	6700 5200 6400 5200
Wire Wire Line
	7600 5200 7900 5200
Wire Wire Line
	7600 5100 7900 5100
Wire Wire Line
	7600 5000 7900 5000
Wire Wire Line
	7600 4900 7900 4900
Wire Wire Line
	7600 4800 7900 4800
Wire Wire Line
	7600 4700 7900 4700
NoConn ~ 7900 4700
NoConn ~ 7900 4800
NoConn ~ 7900 4900
NoConn ~ 7900 5000
NoConn ~ 7900 5100
NoConn ~ 7900 5200
NoConn ~ 6400 5200
NoConn ~ 6400 5100
NoConn ~ 6400 5000
NoConn ~ 6400 4900
NoConn ~ 6400 4800
NoConn ~ 6400 4700
$EndSCHEMATC
