EESchema Schematic File Version 4
LIBS:Nucleo144AudioBreakout-cache
EELAYER 26 0
EELAYER END
$Descr A4 11693 8268
encoding utf-8
Sheet 2 3
Title "Power Supply"
Date "2019-04-22"
Rev "RevA"
Comp ""
Comment1 ""
Comment2 ""
Comment3 ""
Comment4 ""
$EndDescr
$Comp
L Regulator_SwitchedCapacitor:LM27762 U?
U 1 1 5E751D8E
P 6400 2275
AR Path="/5E751D8E" Ref="U?"  Part="1" 
AR Path="/5E73A6D7/5E751D8E" Ref="U3"  Part="1" 
F 0 "U3" H 6450 2742 50  0000 C CNN
F 1 "LM27762" H 6450 2651 50  0000 C CNN
F 2 "Package_SON:WSON-12-1EP_3x2mm_P0.5mm_EP1x2.65_ThermalVias" H 6550 1525 50  0001 L CNN
F 3 "http://www.ti.com/lit/ds/symlink/lm27762.pdf" H 8900 1875 50  0001 C CNN
	1    6400 2275
	1    0    0    -1  
$EndComp
Wire Wire Line
	4800 2275 6000 2275
Wire Wire Line
	6000 2075 5400 2075
Wire Wire Line
	6000 2375 5400 2375
Wire Wire Line
	5400 2375 5400 2075
Connection ~ 5400 2075
Wire Wire Line
	5400 2075 5000 2075
Wire Wire Line
	6000 2475 5000 2475
Wire Wire Line
	5000 2475 5000 2075
Connection ~ 5000 2075
$Comp
L Device:C C?
U 1 1 5E751D9E
P 5350 2875
AR Path="/5E751D9E" Ref="C?"  Part="1" 
AR Path="/5E73A6D7/5E751D9E" Ref="C6"  Part="1" 
F 0 "C6" V 5525 2775 50  0000 C CNN
F 1 "470n" V 5525 2975 50  0000 C CNN
F 2 "Capacitor_SMD:C_0402_1005Metric" H 5388 2725 50  0001 C CNN
F 3 "~" H 5350 2875 50  0001 C CNN
	1    5350 2875
	0    1    1    0   
$EndComp
Wire Wire Line
	5200 2875 5000 2875
Wire Wire Line
	5000 2875 5000 2675
Wire Wire Line
	5000 2675 6000 2675
Wire Wire Line
	6000 2875 5500 2875
Wire Wire Line
	6400 3575 6400 3325
Wire Wire Line
	6500 3075 6500 3325
Wire Wire Line
	6500 3325 6400 3325
Connection ~ 6400 3325
Wire Wire Line
	6400 3325 6400 3075
$Comp
L Device:R R?
U 1 1 5E751DB4
P 8900 2125
AR Path="/5E751DB4" Ref="R?"  Part="1" 
AR Path="/5E73A6D7/5E751DB4" Ref="R20"  Part="1" 
F 0 "R20" V 8800 2125 50  0000 C CNN
F 1 "150K" V 8900 2125 50  0000 C CNN
F 2 "Resistor_SMD:R_0402_1005Metric" V 8830 2125 50  0001 C CNN
F 3 "~" H 8900 2125 50  0001 C CNN
	1    8900 2125
	0    1    1    0   
$EndComp
$Comp
L Device:R R?
U 1 1 5E751DBB
P 9925 2475
AR Path="/5E751DBB" Ref="R?"  Part="1" 
AR Path="/5E73A6D7/5E751DBB" Ref="R23"  Part="1" 
F 0 "R23" V 9825 2475 50  0000 C CNN
F 1 "50K" V 9925 2475 50  0000 C CNN
F 2 "Resistor_SMD:R_0402_1005Metric" V 9855 2475 50  0001 C CNN
F 3 "~" H 9925 2475 50  0001 C CNN
	1    9925 2475
	0    -1   -1   0   
$EndComp
$Comp
L Device:R R?
U 1 1 5E751DC2
P 9925 2275
AR Path="/5E751DC2" Ref="R?"  Part="1" 
AR Path="/5E73A6D7/5E751DC2" Ref="R22"  Part="1" 
F 0 "R22" V 9825 2275 50  0000 C CNN
F 1 "50K" V 9925 2275 50  0000 C CNN
F 2 "Resistor_SMD:R_0402_1005Metric" V 9855 2275 50  0001 C CNN
F 3 "~" H 9925 2275 50  0001 C CNN
	1    9925 2275
	0    1    1    0   
$EndComp
$Comp
L Device:R R?
U 1 1 5E751DC9
P 8900 2625
AR Path="/5E751DC9" Ref="R?"  Part="1" 
AR Path="/5E73A6D7/5E751DC9" Ref="R21"  Part="1" 
F 0 "R21" V 8800 2625 50  0000 C CNN
F 1 "150K" V 8900 2625 50  0000 C CNN
F 2 "Resistor_SMD:R_0402_1005Metric" V 8830 2625 50  0001 C CNN
F 3 "~" H 8900 2625 50  0001 C CNN
	1    8900 2625
	0    -1   -1   0   
$EndComp
$Comp
L Device:C C?
U 1 1 5E751DD6
P 7250 3275
AR Path="/5E751DD6" Ref="C?"  Part="1" 
AR Path="/5E73A6D7/5E751DD6" Ref="C7"  Part="1" 
F 0 "C7" H 7150 3175 50  0000 C CNN
F 1 "4.7u" H 7125 3375 50  0000 C CNN
F 2 "Capacitor_SMD:C_0402_1005Metric" H 7288 3125 50  0001 C CNN
F 3 "~" H 7250 3275 50  0001 C CNN
	1    7250 3275
	-1   0    0    1   
$EndComp
Wire Wire Line
	7250 3125 7250 2875
Wire Wire Line
	7250 2875 6900 2875
$Comp
L Device:C C?
U 1 1 5E751DDF
P 9925 1975
AR Path="/5E751DDF" Ref="C?"  Part="1" 
AR Path="/5E73A6D7/5E751DDF" Ref="C17"  Part="1" 
F 0 "C17" V 10150 1975 50  0000 C CNN
F 1 "2.2u" V 10075 1975 50  0000 C CNN
F 2 "Capacitor_SMD:C_0402_1005Metric" H 9963 1825 50  0001 C CNN
F 3 "~" H 9925 1975 50  0001 C CNN
	1    9925 1975
	0    -1   -1   0   
$EndComp
$Comp
L Device:C C?
U 1 1 5E751DE6
P 9900 2775
AR Path="/5E751DE6" Ref="C?"  Part="1" 
AR Path="/5E73A6D7/5E751DE6" Ref="C8"  Part="1" 
F 0 "C8" V 10050 2775 50  0000 C CNN
F 1 "2.2u" V 10125 2775 50  0000 C CNN
F 2 "Capacitor_SMD:C_0402_1005Metric" H 9938 2625 50  0001 C CNN
F 3 "~" H 9900 2775 50  0001 C CNN
	1    9900 2775
	0    -1   1    0   
$EndComp
Wire Wire Line
	6900 2075 7550 2075
Wire Wire Line
	10075 2475 10500 2475
Wire Wire Line
	10075 2275 10500 2275
Wire Wire Line
	10500 2275 10500 2475
Wire Wire Line
	10500 2775 10500 3575
Wire Wire Line
	7550 2775 7550 2675
Wire Wire Line
	7550 2675 6900 2675
Wire Wire Line
	7550 2075 7550 1975
$Comp
L Device:C C?
U 1 1 5E751DFB
P 3700 2775
AR Path="/5E751DFB" Ref="C?"  Part="1" 
AR Path="/5E73A6D7/5E751DFB" Ref="C5"  Part="1" 
F 0 "C5" H 3850 2900 50  0000 C CNN
F 1 "2.2u" H 3875 2650 50  0000 C CNN
F 2 "Capacitor_SMD:C_0402_1005Metric" H 3738 2625 50  0001 C CNN
F 3 "~" H 3700 2775 50  0001 C CNN
	1    3700 2775
	-1   0    0    -1  
$EndComp
Wire Wire Line
	3700 2625 3700 2075
Wire Wire Line
	3000 2075 3150 2075
Connection ~ 3700 2075
Wire Wire Line
	3700 2075 4200 2075
Wire Wire Line
	3700 3575 3700 2925
Wire Wire Line
	9150 2475 9150 2625
Connection ~ 9150 2475
Wire Wire Line
	9150 2475 9775 2475
Wire Wire Line
	6900 2475 9150 2475
Wire Wire Line
	6900 2275 9150 2275
Connection ~ 9150 2275
Wire Wire Line
	9150 2275 9775 2275
Wire Wire Line
	10050 2775 10500 2775
Wire Wire Line
	10075 1975 10500 1975
Connection ~ 10500 2275
Wire Wire Line
	10500 1975 10500 2275
Connection ~ 10500 2775
Connection ~ 10500 2475
Wire Wire Line
	10500 2475 10500 2775
Wire Wire Line
	7550 2775 7800 2775
Wire Wire Line
	7550 1975 7800 1975
Wire Wire Line
	9050 2125 9150 2125
Wire Wire Line
	9150 2125 9150 2275
Wire Wire Line
	8750 2125 8650 2125
Wire Wire Line
	8650 2125 8650 1975
Connection ~ 8650 1975
Wire Wire Line
	8750 2625 8650 2625
Wire Wire Line
	8650 2625 8650 2775
Connection ~ 8650 2775
Wire Wire Line
	9050 2625 9150 2625
Wire Wire Line
	8650 2775 9750 2775
Wire Wire Line
	8650 1975 9775 1975
Connection ~ 7800 2775
Wire Wire Line
	7800 2775 8650 2775
Wire Wire Line
	7800 1075 7800 1975
Connection ~ 7800 1975
Wire Wire Line
	7800 1975 8650 1975
Text Label 3500 2075 0    50   ~ 0
5V
Wire Wire Line
	7800 2775 7800 3975
$Comp
L Device:R R?
U 1 1 5E751E41
P 4650 2275
AR Path="/5E751E41" Ref="R?"  Part="1" 
AR Path="/5E73A6D7/5E751E41" Ref="R19"  Part="1" 
F 0 "R19" V 4750 2275 50  0000 C CNN
F 1 "10K" V 4650 2275 50  0000 C CNN
F 2 "Resistor_SMD:R_0402_1005Metric" V 4580 2275 50  0001 C CNN
F 3 "~" H 4650 2275 50  0001 C CNN
	1    4650 2275
	0    1    1    0   
$EndComp
Wire Wire Line
	4500 2275 4200 2275
Wire Wire Line
	4200 2275 4200 2075
Connection ~ 4200 2075
Wire Wire Line
	4200 2075 5000 2075
$Comp
L Connector_Generic:Conn_01x02 J?
U 1 1 5E751E4C
P 1200 2175
AR Path="/5E751E4C" Ref="J?"  Part="1" 
AR Path="/5E73A6D7/5E751E4C" Ref="J1"  Part="1" 
F 0 "J1" H 1120 2392 50  0000 C CNN
F 1 "Ext. Power" H 1120 2301 50  0000 C CNN
F 2 "Connector_PinHeader_2.54mm:PinHeader_1x02_P2.54mm_Vertical" H 1200 2175 50  0001 C CNN
F 3 "~" H 1200 2175 50  0001 C CNN
	1    1200 2175
	-1   0    0    -1  
$EndComp
$Comp
L Connector_Generic:Conn_02x02_Top_Bottom J?
U 1 1 5E751E53
P 2700 2075
AR Path="/5E751E53" Ref="J?"  Part="1" 
AR Path="/5E73A6D7/5E751E53" Ref="J2"  Part="1" 
F 0 "J2" H 2750 2292 50  0000 C CNN
F 1 "Power Select" H 2750 2201 50  0000 C CNN
F 2 "Connector_PinHeader_2.54mm:PinHeader_2x02_P2.54mm_Vertical" H 2700 2075 50  0001 C CNN
F 3 "~" H 2700 2075 50  0001 C CNN
	1    2700 2075
	1    0    0    -1  
$EndComp
Wire Wire Line
	1750 1100 1750 2075
Wire Wire Line
	1750 2075 2500 2075
Wire Wire Line
	3000 2175 3150 2175
Wire Wire Line
	3150 2175 3150 2075
Connection ~ 3150 2075
Wire Wire Line
	3150 2075 3700 2075
Wire Wire Line
	1400 2175 2500 2175
Wire Wire Line
	1400 2275 1750 2275
Wire Wire Line
	1750 2275 1750 3575
Text HLabel 7800 1075 1    50   Input ~ 0
+5V
Text HLabel 7800 3975 3    50   Input ~ 0
-5V
Text HLabel 10500 3575 3    50   Input ~ 0
GND
Text HLabel 7250 3575 3    50   Input ~ 0
GND
Text HLabel 6400 3575 3    50   Input ~ 0
GND
Text HLabel 3700 3575 3    50   Input ~ 0
GND
Text HLabel 1750 3575 3    50   Input ~ 0
GND
Text HLabel 1750 1100 1    50   Input ~ 0
VDD
Text Notes 2225 2450 0    50   ~ 0
Selects either external power \nor Nucleo144 onboard power
Text Label 1950 2075 0    50   ~ 0
VDDINT
Text Label 1950 2175 0    50   ~ 0
VDDEXT
$Comp
L power:PWR_FLAG #FLG0103
U 1 1 5E80627E
P 3700 2075
F 0 "#FLG0103" H 3700 2150 50  0001 C CNN
F 1 "PWR_FLAG" H 3700 2249 50  0001 C CNN
F 2 "" H 3700 2075 50  0001 C CNN
F 3 "~" H 3700 2075 50  0001 C CNN
	1    3700 2075
	1    0    0    -1  
$EndComp
$Comp
L Amplifier_Operational:TL072 U?
U 3 1 5E815334
P 3275 5950
AR Path="/5E815334" Ref="U?"  Part="3" 
AR Path="/5E73A6D7/5E815334" Ref="U1"  Part="3" 
F 0 "U1" H 3232 5995 50  0000 L CNN
F 1 "TL072" H 3232 5906 50  0000 L CNN
F 2 "Package_SO:SOIC-8_3.9x4.9mm_P1.27mm" H 3275 5950 50  0001 C CNN
F 3 "http://www.ti.com/lit/ds/symlink/tl071.pdf" H 3275 5950 50  0001 C CNN
	3    3275 5950
	1    0    0    -1  
$EndComp
$Comp
L Device:C C?
U 1 1 5E81533B
P 3575 6700
AR Path="/5E81533B" Ref="C?"  Part="1" 
AR Path="/5E73A6D7/5E81533B" Ref="C10"  Part="1" 
F 0 "C10" H 3325 6800 50  0000 L CNN
F 1 "100n" H 3325 6600 50  0000 L CNN
F 2 "Capacitor_SMD:C_0402_1005Metric" H 3613 6550 50  0001 C CNN
F 3 "~" H 3575 6700 50  0001 C CNN
	1    3575 6700
	1    0    0    -1  
$EndComp
$Comp
L Device:C C?
U 1 1 5E815342
P 3575 5200
AR Path="/5E815342" Ref="C?"  Part="1" 
AR Path="/5E73A6D7/5E815342" Ref="C9"  Part="1" 
F 0 "C9" H 3325 5300 50  0000 L CNN
F 1 "100n" H 3300 5075 50  0000 L CNN
F 2 "Capacitor_SMD:C_0402_1005Metric" H 3613 5050 50  0001 C CNN
F 3 "~" H 3575 5200 50  0001 C CNN
	1    3575 5200
	1    0    0    -1  
$EndComp
$Comp
L Device:C C?
U 1 1 5E815349
P 3925 5200
AR Path="/5E815349" Ref="C?"  Part="1" 
AR Path="/5E73A6D7/5E815349" Ref="C11"  Part="1" 
F 0 "C11" H 3800 5300 50  0000 L CNN
F 1 "1u" H 3800 5075 50  0000 L CNN
F 2 "Capacitor_SMD:C_0402_1005Metric" H 3963 5050 50  0001 C CNN
F 3 "~" H 3925 5200 50  0001 C CNN
	1    3925 5200
	1    0    0    -1  
$EndComp
$Comp
L Device:C C?
U 1 1 5E815350
P 3925 6700
AR Path="/5E815350" Ref="C?"  Part="1" 
AR Path="/5E73A6D7/5E815350" Ref="C12"  Part="1" 
F 0 "C12" H 3725 6800 50  0000 L CNN
F 1 "1u" H 3725 6600 50  0000 L CNN
F 2 "Capacitor_SMD:C_0402_1005Metric" H 3963 6550 50  0001 C CNN
F 3 "~" H 3925 6700 50  0001 C CNN
	1    3925 6700
	1    0    0    -1  
$EndComp
$Comp
L Amplifier_Operational:TL072 U?
U 3 1 5E815357
P 1475 5950
AR Path="/5E815357" Ref="U?"  Part="3" 
AR Path="/5E73A6D7/5E815357" Ref="U2"  Part="3" 
F 0 "U2" H 1432 5995 50  0000 L CNN
F 1 "TL072" H 1432 5906 50  0000 L CNN
F 2 "Package_SO:SOIC-8_3.9x4.9mm_P1.27mm" H 1475 5950 50  0001 C CNN
F 3 "http://www.ti.com/lit/ds/symlink/tl071.pdf" H 1475 5950 50  0001 C CNN
	3    1475 5950
	1    0    0    -1  
$EndComp
$Comp
L Device:C C?
U 1 1 5E81535E
P 1775 6600
AR Path="/5E81535E" Ref="C?"  Part="1" 
AR Path="/5E73A6D7/5E81535E" Ref="C2"  Part="1" 
F 0 "C2" H 1525 6675 50  0000 L CNN
F 1 "100n" H 1525 6500 50  0000 L CNN
F 2 "Capacitor_SMD:C_0402_1005Metric" H 1813 6450 50  0001 C CNN
F 3 "~" H 1775 6600 50  0001 C CNN
	1    1775 6600
	1    0    0    -1  
$EndComp
$Comp
L Device:C C?
U 1 1 5E815365
P 1775 5200
AR Path="/5E815365" Ref="C?"  Part="1" 
AR Path="/5E73A6D7/5E815365" Ref="C1"  Part="1" 
F 0 "C1" H 1525 5300 50  0000 L CNN
F 1 "100n" H 1525 5100 50  0000 L CNN
F 2 "Capacitor_SMD:C_0402_1005Metric" H 1813 5050 50  0001 C CNN
F 3 "~" H 1775 5200 50  0001 C CNN
	1    1775 5200
	1    0    0    -1  
$EndComp
$Comp
L Device:C C?
U 1 1 5E81536C
P 2125 5200
AR Path="/5E81536C" Ref="C?"  Part="1" 
AR Path="/5E73A6D7/5E81536C" Ref="C3"  Part="1" 
F 0 "C3" H 1950 5325 50  0000 L CNN
F 1 "1u" H 1975 5075 50  0000 L CNN
F 2 "Capacitor_SMD:C_0402_1005Metric" H 2163 5050 50  0001 C CNN
F 3 "~" H 2125 5200 50  0001 C CNN
	1    2125 5200
	1    0    0    -1  
$EndComp
$Comp
L Device:C C?
U 1 1 5E815373
P 2125 6600
AR Path="/5E815373" Ref="C?"  Part="1" 
AR Path="/5E73A6D7/5E815373" Ref="C4"  Part="1" 
F 0 "C4" H 1975 6700 50  0000 L CNN
F 1 "1u" H 1975 6500 50  0000 L CNN
F 2 "Capacitor_SMD:C_0402_1005Metric" H 2163 6450 50  0001 C CNN
F 3 "~" H 2125 6600 50  0001 C CNN
	1    2125 6600
	1    0    0    -1  
$EndComp
$Comp
L Device:C C?
U 1 1 5E815392
P 5575 6700
AR Path="/5E815392" Ref="C?"  Part="1" 
AR Path="/5E73A6D7/5E815392" Ref="C14"  Part="1" 
F 0 "C14" H 5325 6775 50  0000 L CNN
F 1 "100n" H 5325 6600 50  0000 L CNN
F 2 "Capacitor_SMD:C_0402_1005Metric" H 5613 6550 50  0001 C CNN
F 3 "~" H 5575 6700 50  0001 C CNN
	1    5575 6700
	1    0    0    -1  
$EndComp
$Comp
L Device:C C?
U 1 1 5E815399
P 5575 5350
AR Path="/5E815399" Ref="C?"  Part="1" 
AR Path="/5E73A6D7/5E815399" Ref="C13"  Part="1" 
F 0 "C13" H 5325 5450 50  0000 L CNN
F 1 "100n" H 5325 5250 50  0000 L CNN
F 2 "Capacitor_SMD:C_0402_1005Metric" H 5613 5200 50  0001 C CNN
F 3 "~" H 5575 5350 50  0001 C CNN
	1    5575 5350
	1    0    0    -1  
$EndComp
$Comp
L Device:C C?
U 1 1 5E8153A0
P 5925 5350
AR Path="/5E8153A0" Ref="C?"  Part="1" 
AR Path="/5E73A6D7/5E8153A0" Ref="C15"  Part="1" 
F 0 "C15" H 5750 5475 50  0000 L CNN
F 1 "1u" H 5775 5225 50  0000 L CNN
F 2 "Capacitor_SMD:C_0402_1005Metric" H 5963 5200 50  0001 C CNN
F 3 "~" H 5925 5350 50  0001 C CNN
	1    5925 5350
	1    0    0    -1  
$EndComp
$Comp
L Device:C C?
U 1 1 5E8153A7
P 5925 6700
AR Path="/5E8153A7" Ref="C?"  Part="1" 
AR Path="/5E73A6D7/5E8153A7" Ref="C16"  Part="1" 
F 0 "C16" H 5775 6800 50  0000 L CNN
F 1 "1u" H 5775 6600 50  0000 L CNN
F 2 "Capacitor_SMD:C_0402_1005Metric" H 5963 6550 50  0001 C CNN
F 3 "~" H 5925 6700 50  0001 C CNN
	1    5925 6700
	1    0    0    -1  
$EndComp
$Comp
L Amplifier_Operational:TL074 U?
U 5 1 5E8153BA
P 5175 5950
AR Path="/5E8153BA" Ref="U?"  Part="5" 
AR Path="/5E73A6D7/5E8153BA" Ref="U4"  Part="5" 
F 0 "U4" H 5133 5996 50  0000 L CNN
F 1 "TL074" H 5133 5905 50  0000 L CNN
F 2 "Package_SO:SOIC-14_3.9x8.7mm_P1.27mm" H 5125 6050 50  0001 C CNN
F 3 "http://www.ti.com/lit/ds/symlink/tl071.pdf" H 5225 6150 50  0001 C CNN
	5    5175 5950
	1    0    0    -1  
$EndComp
Wire Wire Line
	1375 4850 1375 4950
Wire Wire Line
	1375 6250 1375 6350
Wire Wire Line
	1375 4950 1775 4950
Wire Wire Line
	2125 4950 2125 5050
Connection ~ 1375 4950
Wire Wire Line
	1375 4950 1375 5650
Wire Wire Line
	1775 5050 1775 4950
Connection ~ 1775 4950
Wire Wire Line
	1775 4950 2125 4950
Wire Wire Line
	1775 5350 1775 5500
Wire Wire Line
	2125 5350 2125 5500
Wire Wire Line
	1375 6350 1775 6350
Wire Wire Line
	2125 6350 2125 6450
Connection ~ 1375 6350
Wire Wire Line
	1375 6350 1375 7050
Wire Wire Line
	1775 6450 1775 6350
Connection ~ 1775 6350
Wire Wire Line
	1775 6350 2125 6350
Wire Wire Line
	1775 6750 1775 7050
Wire Wire Line
	2125 7050 2125 6750
Wire Wire Line
	3175 4850 3175 4900
Wire Wire Line
	3175 6250 3175 6375
Wire Wire Line
	3575 5350 3575 5500
Wire Wire Line
	3925 5350 3925 5500
Wire Wire Line
	3575 6850 3575 7000
Wire Wire Line
	3925 6850 3925 7000
Wire Wire Line
	3175 4900 3575 4900
Wire Wire Line
	3925 4900 3925 5050
Connection ~ 3175 4900
Wire Wire Line
	3175 4900 3175 5650
Wire Wire Line
	3575 5050 3575 4900
Connection ~ 3575 4900
Wire Wire Line
	3575 4900 3925 4900
Wire Wire Line
	3575 6550 3575 6375
Wire Wire Line
	3575 6375 3175 6375
Connection ~ 3175 6375
Wire Wire Line
	3175 6375 3175 7050
Wire Wire Line
	3575 6375 3925 6375
Wire Wire Line
	3925 6375 3925 6550
Connection ~ 3575 6375
Wire Wire Line
	5075 6250 5075 6400
Wire Wire Line
	5075 4850 5075 5000
Wire Wire Line
	5575 5500 5575 5650
Wire Wire Line
	5925 5500 5925 5650
Wire Wire Line
	5575 6850 5575 7000
Wire Wire Line
	5925 6850 5925 7000
Wire Wire Line
	5075 6400 5575 6400
Wire Wire Line
	5925 6400 5925 6550
Connection ~ 5075 6400
Wire Wire Line
	5075 6400 5075 7050
Wire Wire Line
	5575 6550 5575 6400
Connection ~ 5575 6400
Wire Wire Line
	5575 6400 5925 6400
Wire Wire Line
	5075 5000 5575 5000
Wire Wire Line
	5575 5000 5575 5200
Connection ~ 5075 5000
Wire Wire Line
	5075 5000 5075 5650
Wire Wire Line
	5575 5000 5925 5000
Wire Wire Line
	5925 5000 5925 5200
Connection ~ 5575 5000
Text HLabel 5075 4850 1    50   Input ~ 0
+5V
Text HLabel 3175 4850 1    50   Input ~ 0
+5V
Text HLabel 1375 4850 1    50   Input ~ 0
+5V
Text HLabel 5075 7050 3    50   Input ~ 0
-5V
Text HLabel 3175 7050 3    50   Input ~ 0
-5V
Text HLabel 1375 7050 3    50   Input ~ 0
-5V
Text HLabel 5925 5650 3    50   Input ~ 0
GND
Text HLabel 5575 5650 3    50   Input ~ 0
GND
Text HLabel 3925 5500 3    50   Input ~ 0
GND
Text HLabel 3575 5500 3    50   Input ~ 0
GND
Text HLabel 2125 5500 3    50   Input ~ 0
GND
Text HLabel 1775 5500 3    50   Input ~ 0
GND
Text HLabel 1775 7050 3    50   Input ~ 0
GND
Text HLabel 2125 7050 3    50   Input ~ 0
GND
Text HLabel 3575 7000 3    50   Input ~ 0
GND
Text HLabel 5575 7000 3    50   Input ~ 0
GND
Text HLabel 5925 7000 3    50   Input ~ 0
GND
Text HLabel 3925 7000 3    50   Input ~ 0
GND
Wire Wire Line
	7250 3425 7250 3575
$EndSCHEMATC
