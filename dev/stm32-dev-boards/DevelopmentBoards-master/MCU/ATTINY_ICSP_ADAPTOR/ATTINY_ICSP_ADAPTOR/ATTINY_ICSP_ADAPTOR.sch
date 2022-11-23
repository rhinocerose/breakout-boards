EESchema Schematic File Version 4
LIBS:ATTINY_ICSP_ADAPTOR-cache
EELAYER 26 0
EELAYER END
$Descr User 7874 5906
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
L MCU_Microchip_ATtiny:ATtiny85-20PU U_MCU1
U 1 1 5BF324D6
P 2825 2525
F 0 "U_MCU1" H 2295 2571 50  0000 R CNN
F 1 "ATtiny85-20PU" H 2295 2480 50  0000 R CNN
F 2 "Package_DIP:DIP-8_W7.62mm_Socket" H 2825 2525 50  0001 C CIN
F 3 "http://ww1.microchip.com/downloads/en/DeviceDoc/atmel-2586-avr-8-bit-microcontroller-attiny25-attiny45-attiny85_datasheet.pdf" H 2825 2525 50  0001 C CNN
	1    2825 2525
	1    0    0    -1  
$EndComp
$Comp
L Connector_Generic:Conn_01x04 J_PINS_5-8
U 1 1 5BF3274E
P 4225 1725
F 0 "J_PINS_5-8" H 4305 1671 50  0000 L CNN
F 1 "Conn_01x04" H 4305 1626 50  0001 L CNN
F 2 "Connector_PinHeader_2.54mm:PinHeader_1x04_P2.54mm_Vertical" H 4225 1725 50  0001 C CNN
F 3 "~" H 4225 1725 50  0001 C CNN
	1    4225 1725
	1    0    0    -1  
$EndComp
$Comp
L Connector_Generic:Conn_01x04 J_PINS_1-4
U 1 1 5BF327C4
P 4175 3025
F 0 "J_PINS_1-4" H 4255 2971 50  0000 L CNN
F 1 "Conn_01x04" H 4255 2926 50  0001 L CNN
F 2 "Connector_PinHeader_2.54mm:PinHeader_1x04_P2.54mm_Vertical" H 4175 3025 50  0001 C CNN
F 3 "~" H 4175 3025 50  0001 C CNN
	1    4175 3025
	1    0    0    -1  
$EndComp
$Comp
L Connector:AVR-ISP-6 J_ICSP1
U 1 1 5BF3293B
P 5125 2625
F 0 "J_ICSP1" H 4845 2721 50  0000 R CNN
F 1 "AVR-ISP-6" H 4845 2630 50  0000 R CNN
F 2 "Connector_PinHeader_2.54mm:PinHeader_2x03_P2.54mm_Vertical" V 4875 2675 50  0001 C CNN
F 3 " ~" H 3850 2075 50  0001 C CNN
	1    5125 2625
	-1   0    0    -1  
$EndComp
Wire Wire Line
	3425 2725 3625 2725
Wire Wire Line
	3625 2725 3625 2925
Wire Wire Line
	3625 2925 3975 2925
Wire Wire Line
	3425 2525 3725 2525
Wire Wire Line
	3725 2525 3725 3025
Wire Wire Line
	3725 3025 3975 3025
Wire Wire Line
	3425 2625 3525 2625
Wire Wire Line
	3525 2625 3525 3125
Wire Wire Line
	3525 3125 3975 3125
Wire Wire Line
	2825 3125 2825 3225
Wire Wire Line
	2825 3225 3975 3225
Wire Wire Line
	2825 1925 2825 1625
Wire Wire Line
	2825 1625 4025 1625
Wire Wire Line
	3425 2425 3675 2425
Wire Wire Line
	3675 2425 3675 1725
Wire Wire Line
	3675 1725 4025 1725
Wire Wire Line
	3425 2325 3775 2325
Wire Wire Line
	3775 2325 3775 1825
Wire Wire Line
	3775 1825 4025 1825
Wire Wire Line
	3425 2225 3875 2225
Wire Wire Line
	3875 2225 3875 1925
Wire Wire Line
	3875 1925 4025 1925
Wire Wire Line
	4725 2725 3625 2725
Connection ~ 3625 2725
Wire Wire Line
	4725 2625 4225 2625
Wire Wire Line
	4225 2625 4225 2425
Wire Wire Line
	4225 2425 3675 2425
Connection ~ 3675 2425
Wire Wire Line
	4725 2525 4425 2525
Wire Wire Line
	4425 2525 4425 2225
Wire Wire Line
	4425 2225 3875 2225
Connection ~ 3875 2225
Wire Wire Line
	4725 2425 4625 2425
Wire Wire Line
	4625 2425 4625 2325
Wire Wire Line
	4625 2325 3775 2325
Connection ~ 3775 2325
Wire Wire Line
	5225 2125 5225 1475
Wire Wire Line
	5225 1475 2825 1475
Wire Wire Line
	2825 1475 2825 1625
Connection ~ 2825 1625
Wire Wire Line
	2825 3225 2825 3375
Wire Wire Line
	2825 3375 5225 3375
Wire Wire Line
	5225 3375 5225 3025
Connection ~ 2825 3225
Text Label 3750 1475 0    50   ~ 0
VCC
Text Label 3775 1825 0    50   ~ 0
MISO
Text Label 3675 1725 0    50   ~ 0
SCK
Text Label 3875 1925 0    50   ~ 0
MOSI
Text Label 4150 3375 0    50   ~ 0
GND
Text Label 4025 2725 0    50   ~ 0
RESET
Text Label 3750 3025 0    50   ~ 0
PB3
Text Label 3750 3125 0    50   ~ 0
PB4
$EndSCHEMATC
