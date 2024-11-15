EESchema Schematic File Version 4
LIBS:Nucleo144AudioBreakout-cache
EELAYER 26 0
EELAYER END
$Descr A3 16535 11693
encoding utf-8
Sheet 1 3
Title "Nucleo 144 Audio Breakout "
Date "2019-04-22"
Rev "RevA"
Comp ""
Comment1 ""
Comment2 ""
Comment3 ""
Comment4 ""
$EndDescr
$Comp
L Amplifier_Operational:TL072 U2
U 1 1 5CBB3C44
P 5250 2550
F 0 "U2" H 5250 2750 50  0000 C CNN
F 1 "TL072" H 5250 2850 50  0000 C CNN
F 2 "Package_SO:SOIC-8_3.9x4.9mm_P1.27mm" H 5250 2550 50  0001 C CNN
F 3 "http://www.ti.com/lit/ds/symlink/tl071.pdf" H 5250 2550 50  0001 C CNN
	1    5250 2550
	1    0    0    1   
$EndComp
$Comp
L socket_custom:Neutrik_NMJ6HFD2_TRS JIN1
U 1 1 5CBB93A4
P 1400 3350
F 0 "JIN1" H 1431 3871 50  0000 C CNN
F 1 "Neutrik_NMJ6HFD2_TRS" H 1431 3782 50  0000 C CNN
F 2 "Neutric_NMJ6HFD4_Horizontal:Jack_3.5mm_Neutric_NMJ6HCD2_Horizontal" H 1400 3650 50  0001 C CNN
F 3 "" H 1400 3650 50  0001 C CNN
	1    1400 3350
	1    0    0    -1  
$EndComp
Wire Wire Line
	2150 3250 2600 3250
Wire Wire Line
	2600 3250 2600 3350
Wire Wire Line
	2150 3350 2600 3350
Connection ~ 2600 3350
Wire Wire Line
	2600 3350 2600 3450
Wire Wire Line
	2150 3450 2600 3450
Connection ~ 2600 3450
Wire Wire Line
	2600 3450 2600 3550
Wire Wire Line
	2150 3550 2600 3550
Connection ~ 2600 3550
Wire Wire Line
	2600 3550 2600 4350
Wire Wire Line
	4950 2650 4800 2650
Wire Wire Line
	4800 2650 4800 2750
$Comp
L Device:R R16
U 1 1 5CBBB315
P 13250 8800
F 0 "R16" V 13150 8800 50  0000 C CNN
F 1 "1K" V 13250 8800 50  0000 C CNN
F 2 "Resistor_SMD:R_0805_2012Metric_Pad1.15x1.40mm_HandSolder" V 13180 8800 50  0001 C CNN
F 3 "~" H 13250 8800 50  0001 C CNN
	1    13250 8800
	0    1    -1   0   
$EndComp
Wire Wire Line
	13100 8800 12800 8800
Wire Wire Line
	12800 8800 12800 8400
Wire Wire Line
	12800 8400 12950 8400
Wire Wire Line
	13400 8800 13700 8800
Wire Wire Line
	13700 8800 13700 8300
$Comp
L Device:R R3
U 1 1 5CBBC530
P 5250 2100
F 0 "R3" V 5150 2100 50  0000 C CNN
F 1 "1K" V 5250 2100 50  0000 C CNN
F 2 "Resistor_SMD:R_0805_2012Metric_Pad1.15x1.40mm_HandSolder" V 5180 2100 50  0001 C CNN
F 3 "~" H 5250 2100 50  0001 C CNN
	1    5250 2100
	0    1    1    0   
$EndComp
Wire Wire Line
	5100 2100 4800 2100
Wire Wire Line
	4800 2100 4800 2450
Wire Wire Line
	4800 2450 4950 2450
Wire Wire Line
	5400 2100 5700 2100
Wire Wire Line
	5700 2100 5700 2550
Wire Wire Line
	5700 2550 5550 2550
$Comp
L Device:R_POT_TRIM RV4
U 1 1 5D5BFAB6
P 12300 8200
F 0 "RV4" H 12230 8246 50  0000 R CNN
F 1 "100K" H 12230 8155 50  0000 R CNN
F 2 "Potentiometer_THT:Potentiometer_Piher_PT-6-V_Vertical" H 12300 8200 50  0001 C CNN
F 3 "~" H 12300 8200 50  0001 C CNN
	1    12300 8200
	1    0    0    -1  
$EndComp
Wire Wire Line
	12450 8200 12950 8200
$Comp
L Device:R R13
U 1 1 5D5C4275
P 12300 7800
F 0 "R13" H 12370 7846 50  0000 L CNN
F 1 "1K" H 12370 7755 50  0000 L CNN
F 2 "Resistor_SMD:R_0805_2012Metric_Pad1.15x1.40mm_HandSolder" V 12230 7800 50  0001 C CNN
F 3 "~" H 12300 7800 50  0001 C CNN
	1    12300 7800
	1    0    0    -1  
$EndComp
$Comp
L Device:R R14
U 1 1 5D5C42C2
P 12300 8550
F 0 "R14" H 12370 8596 50  0000 L CNN
F 1 "1K" H 12370 8505 50  0000 L CNN
F 2 "Resistor_SMD:R_0805_2012Metric_Pad1.15x1.40mm_HandSolder" V 12230 8550 50  0001 C CNN
F 3 "~" H 12300 8550 50  0001 C CNN
	1    12300 8550
	1    0    0    -1  
$EndComp
Wire Wire Line
	12300 8350 12300 8400
Wire Wire Line
	12300 8700 12300 8800
Wire Wire Line
	12300 7950 12300 8050
Wire Wire Line
	12300 7550 12300 7650
Text Label 14600 8300 2    50   ~ 0
FLAT_LINE_ADJUST_IN
$Comp
L Device:R_POT_Dual_Separate RV1
U 1 1 5D5D2288
P 4250 2450
F 0 "RV1" H 4180 2496 50  0000 R CNN
F 1 "10K" H 4180 2405 50  0000 R CNN
F 2 "Potentiometer_THT:Potentiometer_Alps_RK09L_Double_Horizontal" H 4250 2450 50  0001 C CNN
F 3 "~" H 4250 2450 50  0001 C CNN
	1    4250 2450
	1    0    0    -1  
$EndComp
$Comp
L Device:R_POT_Dual_Separate RV1
U 2 1 5D5D22FC
P 4250 4450
F 0 "RV1" H 4180 4496 50  0000 R CNN
F 1 "10K" H 4180 4405 50  0000 R CNN
F 2 "Potentiometer_THT:Potentiometer_Alps_RK09L_Double_Horizontal" H 4250 4450 50  0001 C CNN
F 3 "~" H 4250 4450 50  0001 C CNN
	2    4250 4450
	1    0    0    -1  
$EndComp
Wire Wire Line
	2150 3050 2800 3050
Wire Wire Line
	2800 3050 2800 2150
Wire Wire Line
	2800 2150 4250 2150
Wire Wire Line
	4250 2150 4250 2300
Wire Wire Line
	4250 2600 4250 2750
Wire Wire Line
	2150 3150 2800 3150
Wire Wire Line
	2800 3150 2800 4050
Wire Wire Line
	2800 4050 4250 4050
Wire Wire Line
	4250 4050 4250 4300
Wire Wire Line
	4250 4600 4250 4750
$Comp
L Amplifier_Operational:TL072 U2
U 2 1 5D5DF2E2
P 5250 4550
F 0 "U2" H 5250 4914 50  0000 C CNN
F 1 "TL072" H 5250 4825 50  0000 C CNN
F 2 "Package_SO:SOIC-8_3.9x4.9mm_P1.27mm" H 5250 4550 50  0001 C CNN
F 3 "http://www.ti.com/lit/ds/symlink/tl071.pdf" H 5250 4550 50  0001 C CNN
	2    5250 4550
	1    0    0    1   
$EndComp
Wire Wire Line
	4950 4650 4800 4650
Wire Wire Line
	4800 4650 4800 4750
$Comp
L Device:R R4
U 1 1 5D5DF2F0
P 5250 4050
F 0 "R4" V 5150 4050 50  0000 C CNN
F 1 "1K" V 5250 4050 50  0000 C CNN
F 2 "Resistor_SMD:R_0805_2012Metric_Pad1.15x1.40mm_HandSolder" V 5180 4050 50  0001 C CNN
F 3 "~" H 5250 4050 50  0001 C CNN
	1    5250 4050
	0    1    1    0   
$EndComp
Wire Wire Line
	5100 4050 4800 4050
Wire Wire Line
	4800 4050 4800 4450
Wire Wire Line
	4800 4450 4950 4450
Wire Wire Line
	5400 4050 5700 4050
Wire Wire Line
	5700 4050 5700 4550
Wire Wire Line
	5700 4550 5550 4550
Connection ~ 4800 2450
Wire Wire Line
	4400 4450 4550 4450
Connection ~ 4800 4450
Wire Wire Line
	5700 2550 6350 2550
Wire Wire Line
	6350 4550 5700 4550
Text Label 6350 2550 2    50   ~ 0
PA0_ADC1_IN1
Text Label 6350 4550 2    50   ~ 0
PA1_ADC1_IN2
Connection ~ 5700 2550
Connection ~ 5700 4550
Wire Wire Line
	13550 8300 13700 8300
Connection ~ 13700 8300
Wire Wire Line
	13700 8300 14600 8300
$Comp
L socket_custom:Neutrik_NMJ6HFD2_TRS JOUT1
U 1 1 5D60B11A
P 15050 3650
F 0 "JOUT1" H 15081 4171 50  0000 C CNN
F 1 "Neutrik_NMJ6HFD2_TRS" H 15081 4082 50  0000 C CNN
F 2 "Neutric_NMJ6HFD4_Horizontal:Jack_3.5mm_Neutric_NMJ6HCD2_Horizontal" H 15050 3950 50  0001 C CNN
F 3 "" H 15050 3950 50  0001 C CNN
	1    15050 3650
	-1   0    0    -1  
$EndComp
Wire Wire Line
	12000 3150 11800 3150
Wire Wire Line
	11800 3150 11800 3550
$Comp
L Device:R R9
U 1 1 5D60BC7B
P 12300 2600
F 0 "R9" V 12200 2600 50  0000 C CNN
F 1 "1K" V 12300 2600 50  0000 C CNN
F 2 "Resistor_SMD:R_0805_2012Metric_Pad1.15x1.40mm_HandSolder" V 12230 2600 50  0001 C CNN
F 3 "~" H 12300 2600 50  0001 C CNN
	1    12300 2600
	0    1    1    0   
$EndComp
Wire Wire Line
	12150 2600 11800 2600
Wire Wire Line
	11800 2600 11800 2950
Wire Wire Line
	11800 2950 12000 2950
Wire Wire Line
	12450 2600 12800 2600
Wire Wire Line
	12800 2600 12800 3050
Wire Wire Line
	12800 3050 12600 3050
$Comp
L Device:R_POT_Dual_Separate RV2
U 1 1 5D60BC87
P 8500 2850
F 0 "RV2" H 8430 2896 50  0000 R CNN
F 1 "100K" H 8430 2805 50  0000 R CNN
F 2 "Potentiometer_THT:Potentiometer_Alps_RK09L_Double_Horizontal" H 8500 2850 50  0001 C CNN
F 3 "~" H 8500 2850 50  0001 C CNN
	1    8500 2850
	1    0    0    -1  
$EndComp
$Comp
L Device:R_POT_Dual_Separate RV2
U 2 1 5D60BC8D
P 8500 4850
F 0 "RV2" H 8430 4896 50  0000 R CNN
F 1 "100K" H 8430 4805 50  0000 R CNN
F 2 "Potentiometer_THT:Potentiometer_Alps_RK09L_Double_Horizontal" H 8500 4850 50  0001 C CNN
F 3 "~" H 8500 4850 50  0001 C CNN
	2    8500 4850
	1    0    0    -1  
$EndComp
Wire Wire Line
	7500 2550 8500 2550
Wire Wire Line
	8500 2550 8500 2700
Wire Wire Line
	12000 5150 11800 5150
Wire Wire Line
	11800 5150 11800 5675
$Comp
L Device:R R10
U 1 1 5D60BCB3
P 12300 4550
F 0 "R10" V 12200 4550 50  0000 C CNN
F 1 "1K" V 12300 4550 50  0000 C CNN
F 2 "Resistor_SMD:R_0805_2012Metric_Pad1.15x1.40mm_HandSolder" V 12230 4550 50  0001 C CNN
F 3 "~" H 12300 4550 50  0001 C CNN
	1    12300 4550
	0    1    1    0   
$EndComp
Wire Wire Line
	12150 4550 11800 4550
Wire Wire Line
	11800 4550 11800 4950
Wire Wire Line
	11800 4950 12000 4950
Wire Wire Line
	12450 4550 12800 4550
Wire Wire Line
	12800 4550 12800 5050
Wire Wire Line
	12800 5050 12600 5050
Connection ~ 11800 2950
Connection ~ 11800 4950
Connection ~ 12800 3050
Connection ~ 12800 5050
Wire Wire Line
	14300 3550 13850 3550
Wire Wire Line
	13850 3550 13850 3650
Wire Wire Line
	14300 3650 13850 3650
Connection ~ 13850 3650
Wire Wire Line
	13850 3650 13850 3750
Wire Wire Line
	14300 3750 13850 3750
Connection ~ 13850 3750
Wire Wire Line
	13850 3750 13850 3850
Wire Wire Line
	14300 3850 13850 3850
Connection ~ 13850 3850
Wire Wire Line
	13850 3850 13850 4150
Wire Wire Line
	13100 3350 14300 3350
Wire Wire Line
	12800 3050 13100 3050
Wire Wire Line
	13100 5050 13100 3450
Wire Wire Line
	13100 3450 14300 3450
Wire Wire Line
	12800 5050 13100 5050
Text Label 7500 2550 0    50   ~ 0
PA4_DAC_OUT1
Text Label 7500 4550 0    50   ~ 0
PA5_DAC_OUT2
Wire Wire Line
	11500 2950 11500 2250
Wire Wire Line
	11500 2250 11400 2250
$Comp
L Device:R R7
U 1 1 5D644A9C
P 11250 2250
F 0 "R7" V 11150 2250 50  0000 C CNN
F 1 "1K" V 11250 2250 50  0000 C CNN
F 2 "Resistor_SMD:R_0805_2012Metric_Pad1.15x1.40mm_HandSolder" V 11180 2250 50  0001 C CNN
F 3 "~" H 11250 2250 50  0001 C CNN
	1    11250 2250
	0    1    1    0   
$EndComp
Wire Wire Line
	11100 2250 10200 2250
Wire Wire Line
	11500 4950 11500 4350
Wire Wire Line
	11500 4350 11400 4350
$Comp
L Device:R R8
U 1 1 5D64790B
P 11250 4350
F 0 "R8" V 11150 4350 50  0000 C CNN
F 1 "1K" V 11250 4350 50  0000 C CNN
F 2 "Resistor_SMD:R_0805_2012Metric_Pad1.15x1.40mm_HandSolder" V 11180 4350 50  0001 C CNN
F 3 "~" H 11250 4350 50  0001 C CNN
	1    11250 4350
	0    1    1    0   
$EndComp
Wire Wire Line
	11100 4350 10200 4350
Wire Wire Line
	11500 4950 11800 4950
Wire Wire Line
	11500 2950 11800 2950
Text Label 10200 4350 0    50   ~ 0
FLAT_LINE_ADJUST_OUT
Text Label 10200 2250 0    50   ~ 0
FLAT_LINE_ADJUST_OUT
$Comp
L Device:R R5
U 1 1 5D68E0C5
P 8500 3250
F 0 "R5" H 8675 3275 50  0000 C CNN
F 1 "0R" V 8500 3250 50  0000 C CNN
F 2 "Resistor_SMD:R_0805_2012Metric_Pad1.15x1.40mm_HandSolder" V 8430 3250 50  0001 C CNN
F 3 "~" H 8500 3250 50  0001 C CNN
	1    8500 3250
	-1   0    0    1   
$EndComp
Wire Wire Line
	8500 3550 8500 3400
Wire Wire Line
	8500 3000 8500 3100
$Comp
L Device:R R15
U 1 1 5D6A6E19
P 9600 8750
F 0 "R15" V 9500 8750 50  0000 C CNN
F 1 "1K" V 9600 8750 50  0000 C CNN
F 2 "Resistor_SMD:R_0805_2012Metric_Pad1.15x1.40mm_HandSolder" V 9530 8750 50  0001 C CNN
F 3 "~" H 9600 8750 50  0001 C CNN
	1    9600 8750
	0    1    -1   0   
$EndComp
Wire Wire Line
	9450 8750 9150 8750
Wire Wire Line
	9150 8750 9150 8350
Wire Wire Line
	9150 8350 9300 8350
Wire Wire Line
	9750 8750 10050 8750
Wire Wire Line
	10050 8750 10050 8250
$Comp
L Device:R_POT_TRIM RV3
U 1 1 5D6A6E24
P 8650 8150
F 0 "RV3" H 8580 8196 50  0000 R CNN
F 1 "100K" H 8580 8105 50  0000 R CNN
F 2 "Potentiometer_THT:Potentiometer_Piher_PT-6-V_Vertical" H 8650 8150 50  0001 C CNN
F 3 "~" H 8650 8150 50  0001 C CNN
	1    8650 8150
	1    0    0    -1  
$EndComp
Wire Wire Line
	8800 8150 9300 8150
$Comp
L Device:R R11
U 1 1 5D6A6E37
P 8650 7800
F 0 "R11" H 8720 7846 50  0000 L CNN
F 1 "1K" H 8720 7755 50  0000 L CNN
F 2 "Resistor_SMD:R_0805_2012Metric_Pad1.15x1.40mm_HandSolder" V 8580 7800 50  0001 C CNN
F 3 "~" H 8650 7800 50  0001 C CNN
	1    8650 7800
	1    0    0    -1  
$EndComp
$Comp
L Device:R R12
U 1 1 5D6A6E3D
P 8650 8500
F 0 "R12" H 8720 8546 50  0000 L CNN
F 1 "1K" H 8720 8455 50  0000 L CNN
F 2 "Resistor_SMD:R_0805_2012Metric_Pad1.15x1.40mm_HandSolder" V 8580 8500 50  0001 C CNN
F 3 "~" H 8650 8500 50  0001 C CNN
	1    8650 8500
	1    0    0    -1  
$EndComp
Wire Wire Line
	8650 8300 8650 8350
Wire Wire Line
	8650 8650 8650 8750
Wire Wire Line
	8650 7950 8650 8000
Wire Wire Line
	8650 7550 8650 7650
Text Label 10950 8250 2    50   ~ 0
FLAT_LINE_ADJUST_OUT
Wire Wire Line
	9900 8250 10050 8250
Connection ~ 10050 8250
Wire Wire Line
	10050 8250 10950 8250
$Comp
L Amplifier_Operational:TL072 U1
U 1 1 5D6A6E4B
P 9600 8250
F 0 "U1" H 9600 8617 50  0000 C CNN
F 1 "TL072" H 9600 8526 50  0000 C CNN
F 2 "Package_SO:SOIC-8_3.9x4.9mm_P1.27mm" H 9600 8250 50  0001 C CNN
F 3 "http://www.ti.com/lit/ds/symlink/tl071.pdf" H 9600 8250 50  0001 C CNN
	1    9600 8250
	1    0    0    -1  
$EndComp
$Comp
L Amplifier_Operational:TL072 U1
U 2 1 5D6AE32C
P 13250 8300
F 0 "U1" H 13250 8667 50  0000 C CNN
F 1 "TL072" H 13250 8576 50  0000 C CNN
F 2 "Package_SO:SOIC-8_3.9x4.9mm_P1.27mm" H 13250 8300 50  0001 C CNN
F 3 "http://www.ti.com/lit/ds/symlink/tl071.pdf" H 13250 8300 50  0001 C CNN
	2    13250 8300
	1    0    0    -1  
$EndComp
Wire Wire Line
	4550 2450 4550 1750
Wire Wire Line
	4550 1750 4325 1750
$Comp
L Device:R R1
U 1 1 5D6B3C1F
P 4175 1750
F 0 "R1" V 4075 1750 50  0000 C CNN
F 1 "1K" V 4175 1750 50  0000 C CNN
F 2 "Resistor_SMD:R_0805_2012Metric_Pad1.15x1.40mm_HandSolder" V 4105 1750 50  0001 C CNN
F 3 "~" H 4175 1750 50  0001 C CNN
	1    4175 1750
	0    1    1    0   
$EndComp
Wire Wire Line
	4025 1750 3150 1750
Text Label 3150 1750 0    50   ~ 0
FLAT_LINE_ADJUST_IN
Wire Wire Line
	4550 4450 4550 3650
Wire Wire Line
	4550 3650 4325 3650
$Comp
L Device:R R2
U 1 1 5D6CD412
P 4175 3650
F 0 "R2" V 4075 3650 50  0000 C CNN
F 1 "1K" V 4175 3650 50  0000 C CNN
F 2 "Resistor_SMD:R_0805_2012Metric_Pad1.15x1.40mm_HandSolder" V 4105 3650 50  0001 C CNN
F 3 "~" H 4175 3650 50  0001 C CNN
	1    4175 3650
	0    1    1    0   
$EndComp
Wire Wire Line
	4025 3650 3150 3650
Text Label 3150 3650 0    50   ~ 0
FLAT_LINE_ADJUST_IN
Connection ~ 4550 2450
Wire Wire Line
	4550 2450 4800 2450
Wire Wire Line
	4400 2450 4550 2450
Connection ~ 4550 4450
Wire Wire Line
	4550 4450 4800 4450
$Comp
L power:+5V #PWR0113
U 1 1 5DD42A5F
P 12300 7550
F 0 "#PWR0113" H 12300 7400 50  0001 C CNN
F 1 "+5V" H 12315 7721 50  0000 C CNN
F 2 "" H 12300 7550 50  0001 C CNN
F 3 "" H 12300 7550 50  0001 C CNN
	1    12300 7550
	1    0    0    -1  
$EndComp
$Comp
L power:+5V #PWR0114
U 1 1 5DD4308A
P 8650 7550
F 0 "#PWR0114" H 8650 7400 50  0001 C CNN
F 1 "+5V" H 8665 7721 50  0000 C CNN
F 2 "" H 8650 7550 50  0001 C CNN
F 3 "" H 8650 7550 50  0001 C CNN
	1    8650 7550
	1    0    0    -1  
$EndComp
$Comp
L power:-5V #PWR0115
U 1 1 5DD43D37
P 12300 8800
F 0 "#PWR0115" H 12300 8900 50  0001 C CNN
F 1 "-5V" H 12315 8971 50  0000 C CNN
F 2 "" H 12300 8800 50  0001 C CNN
F 3 "" H 12300 8800 50  0001 C CNN
	1    12300 8800
	-1   0    0    1   
$EndComp
$Comp
L power:-5V #PWR0116
U 1 1 5DD44052
P 8650 8750
F 0 "#PWR0116" H 8650 8850 50  0001 C CNN
F 1 "-5V" H 8665 8921 50  0000 C CNN
F 2 "" H 8650 8750 50  0001 C CNN
F 3 "" H 8650 8750 50  0001 C CNN
	1    8650 8750
	-1   0    0    1   
$EndComp
Wire Wire Line
	8650 2850 9100 2850
Wire Wire Line
	9100 3050 9000 3050
Wire Wire Line
	9000 3050 9000 3350
Wire Wire Line
	9000 3350 9800 3350
Wire Wire Line
	9800 3350 9800 2950
Wire Wire Line
	9800 2950 9700 2950
$Comp
L Device:R R17
U 1 1 5CC8ADA3
P 11250 2950
F 0 "R17" V 11150 2950 50  0000 C CNN
F 1 "1k" V 11250 2950 50  0000 C CNN
F 2 "Resistor_SMD:R_0805_2012Metric_Pad1.15x1.40mm_HandSolder" V 11180 2950 50  0001 C CNN
F 3 "~" H 11250 2950 50  0001 C CNN
	1    11250 2950
	0    -1   1    0   
$EndComp
Wire Wire Line
	9800 2950 11100 2950
Connection ~ 9800 2950
Wire Wire Line
	11400 2950 11500 2950
Connection ~ 11500 2950
Wire Wire Line
	7500 4550 8500 4550
Wire Wire Line
	8500 4550 8500 4700
$Comp
L Device:R R6
U 1 1 5CCEAEFB
P 8500 5250
F 0 "R6" H 8675 5275 50  0000 C CNN
F 1 "0R" V 8500 5250 50  0000 C CNN
F 2 "Resistor_SMD:R_0805_2012Metric_Pad1.15x1.40mm_HandSolder" V 8430 5250 50  0001 C CNN
F 3 "~" H 8500 5250 50  0001 C CNN
	1    8500 5250
	-1   0    0    1   
$EndComp
Wire Wire Line
	8500 5550 8500 5400
Wire Wire Line
	8500 5000 8500 5100
Wire Wire Line
	8650 4850 9100 4850
Wire Wire Line
	9100 5050 9000 5050
Wire Wire Line
	9000 5050 9000 5350
Wire Wire Line
	9000 5350 9800 5350
Wire Wire Line
	9800 5350 9800 4950
Wire Wire Line
	9800 4950 9700 4950
$Comp
L Device:R R18
U 1 1 5CCEAF0F
P 11250 4950
F 0 "R18" V 11150 4950 50  0000 C CNN
F 1 "1k" V 11250 4950 50  0000 C CNN
F 2 "Resistor_SMD:R_0805_2012Metric_Pad1.15x1.40mm_HandSolder" V 11180 4950 50  0001 C CNN
F 3 "~" H 11250 4950 50  0001 C CNN
	1    11250 4950
	0    -1   1    0   
$EndComp
Wire Wire Line
	9800 4950 11100 4950
Connection ~ 9800 4950
Wire Wire Line
	11400 4950 11500 4950
Connection ~ 11500 4950
Wire Wire Line
	13100 3050 13100 3350
$Comp
L power:GNDS #PWR0123
U 1 1 5CC4E9EA
P 2600 4350
F 0 "#PWR0123" H 2600 4100 50  0001 C CNN
F 1 "GNDS" H 2605 4179 50  0000 C CNN
F 2 "" H 2600 4350 50  0001 C CNN
F 3 "" H 2600 4350 50  0001 C CNN
	1    2600 4350
	1    0    0    -1  
$EndComp
$Comp
L power:GNDS #PWR0124
U 1 1 5CC50DAD
P 4250 4750
F 0 "#PWR0124" H 4250 4500 50  0001 C CNN
F 1 "GNDS" H 4255 4579 50  0000 C CNN
F 2 "" H 4250 4750 50  0001 C CNN
F 3 "" H 4250 4750 50  0001 C CNN
	1    4250 4750
	1    0    0    -1  
$EndComp
$Comp
L power:GNDS #PWR0125
U 1 1 5CC50ED5
P 4800 4750
F 0 "#PWR0125" H 4800 4500 50  0001 C CNN
F 1 "GNDS" H 4805 4579 50  0000 C CNN
F 2 "" H 4800 4750 50  0001 C CNN
F 3 "" H 4800 4750 50  0001 C CNN
	1    4800 4750
	1    0    0    -1  
$EndComp
$Comp
L power:GNDS #PWR0126
U 1 1 5CC50F52
P 8500 5550
F 0 "#PWR0126" H 8500 5300 50  0001 C CNN
F 1 "GNDS" H 8505 5379 50  0000 C CNN
F 2 "" H 8500 5550 50  0001 C CNN
F 3 "" H 8500 5550 50  0001 C CNN
	1    8500 5550
	1    0    0    -1  
$EndComp
$Comp
L power:GNDS #PWR0127
U 1 1 5CC51242
P 11800 5675
F 0 "#PWR0127" H 11800 5425 50  0001 C CNN
F 1 "GNDS" H 11805 5504 50  0000 C CNN
F 2 "" H 11800 5675 50  0001 C CNN
F 3 "" H 11800 5675 50  0001 C CNN
	1    11800 5675
	1    0    0    -1  
$EndComp
$Comp
L power:GNDS #PWR0128
U 1 1 5CC52376
P 4250 2750
F 0 "#PWR0128" H 4250 2500 50  0001 C CNN
F 1 "GNDS" H 4255 2579 50  0000 C CNN
F 2 "" H 4250 2750 50  0001 C CNN
F 3 "" H 4250 2750 50  0001 C CNN
	1    4250 2750
	1    0    0    -1  
$EndComp
$Comp
L power:GNDS #PWR0129
U 1 1 5CC523F3
P 4800 2750
F 0 "#PWR0129" H 4800 2500 50  0001 C CNN
F 1 "GNDS" H 4805 2579 50  0000 C CNN
F 2 "" H 4800 2750 50  0001 C CNN
F 3 "" H 4800 2750 50  0001 C CNN
	1    4800 2750
	1    0    0    -1  
$EndComp
$Comp
L power:GNDS #PWR0130
U 1 1 5CC52470
P 8500 3550
F 0 "#PWR0130" H 8500 3300 50  0001 C CNN
F 1 "GNDS" H 8505 3379 50  0000 C CNN
F 2 "" H 8500 3550 50  0001 C CNN
F 3 "" H 8500 3550 50  0001 C CNN
	1    8500 3550
	1    0    0    -1  
$EndComp
$Comp
L power:GNDS #PWR0131
U 1 1 5CC524ED
P 11800 3550
F 0 "#PWR0131" H 11800 3300 50  0001 C CNN
F 1 "GNDS" H 11805 3379 50  0000 C CNN
F 2 "" H 11800 3550 50  0001 C CNN
F 3 "" H 11800 3550 50  0001 C CNN
	1    11800 3550
	1    0    0    -1  
$EndComp
$Comp
L power:GNDS #PWR0132
U 1 1 5CC52933
P 13850 4150
F 0 "#PWR0132" H 13850 3900 50  0001 C CNN
F 1 "GNDS" H 13855 3979 50  0000 C CNN
F 2 "" H 13850 4150 50  0001 C CNN
F 3 "" H 13850 4150 50  0001 C CNN
	1    13850 4150
	1    0    0    -1  
$EndComp
$Comp
L Amplifier_Operational:TL074 U4
U 1 1 5CBDA13B
P 9400 2950
F 0 "U4" H 9400 3317 50  0000 C CNN
F 1 "TL074" H 9400 3226 50  0000 C CNN
F 2 "Package_SO:SOIC-14_3.9x8.7mm_P1.27mm" H 9350 3050 50  0001 C CNN
F 3 "http://www.ti.com/lit/ds/symlink/tl071.pdf" H 9450 3150 50  0001 C CNN
	1    9400 2950
	1    0    0    -1  
$EndComp
$Comp
L Amplifier_Operational:TL074 U4
U 2 1 5CBDA24C
P 9400 4950
F 0 "U4" H 9400 5317 50  0000 C CNN
F 1 "TL074" H 9400 5226 50  0000 C CNN
F 2 "Package_SO:SOIC-14_3.9x8.7mm_P1.27mm" H 9350 5050 50  0001 C CNN
F 3 "http://www.ti.com/lit/ds/symlink/tl071.pdf" H 9450 5150 50  0001 C CNN
	2    9400 4950
	1    0    0    -1  
$EndComp
$Comp
L Amplifier_Operational:TL074 U4
U 3 1 5CBDA355
P 12300 3050
F 0 "U4" H 12300 2683 50  0000 C CNN
F 1 "TL074" H 12300 2774 50  0000 C CNN
F 2 "Package_SO:SOIC-14_3.9x8.7mm_P1.27mm" H 12250 3150 50  0001 C CNN
F 3 "http://www.ti.com/lit/ds/symlink/tl071.pdf" H 12350 3250 50  0001 C CNN
	3    12300 3050
	1    0    0    1   
$EndComp
$Comp
L Amplifier_Operational:TL074 U4
U 4 1 5CBDA45D
P 12300 5050
F 0 "U4" H 12300 4683 50  0000 C CNN
F 1 "TL074" H 12300 4774 50  0000 C CNN
F 2 "Package_SO:SOIC-14_3.9x8.7mm_P1.27mm" H 12250 5150 50  0001 C CNN
F 3 "http://www.ti.com/lit/ds/symlink/tl071.pdf" H 12350 5250 50  0001 C CNN
	4    12300 5050
	1    0    0    1   
$EndComp
$Sheet
S 1850 7450 800  1300
U 5E73A6D7
F0 "LM27762PSU" 50
F1 "LM27762PSU.sch" 50
F2 "+5V" I R 2650 7975 50 
F3 "-5V" I R 2650 8250 50 
F4 "GND" I R 2650 8475 50 
F5 "VDD" I R 2650 7725 50 
$EndSheet
Wire Wire Line
	2650 7725 2900 7725
Wire Wire Line
	2900 7725 2900 7300
$Comp
L power:VDD #PWR0121
U 1 1 5E78DCBC
P 2900 7300
F 0 "#PWR0121" H 2900 7150 50  0001 C CNN
F 1 "VDD" H 2917 7473 50  0000 C CNN
F 2 "" H 2900 7300 50  0001 C CNN
F 3 "" H 2900 7300 50  0001 C CNN
	1    2900 7300
	1    0    0    -1  
$EndComp
Wire Wire Line
	2650 7975 3150 7975
Wire Wire Line
	3150 7975 3150 7300
$Comp
L power:+5V #PWR0122
U 1 1 5E7992CB
P 3150 7300
F 0 "#PWR0122" H 3150 7150 50  0001 C CNN
F 1 "+5V" H 3165 7473 50  0000 C CNN
F 2 "" H 3150 7300 50  0001 C CNN
F 3 "" H 3150 7300 50  0001 C CNN
	1    3150 7300
	1    0    0    -1  
$EndComp
Wire Wire Line
	2650 8475 2900 8475
Wire Wire Line
	2900 8475 2900 8950
$Comp
L power:GNDS #PWR0133
U 1 1 5E7A53C5
P 2900 8950
F 0 "#PWR0133" H 2900 8700 50  0001 C CNN
F 1 "GNDS" H 2905 8777 50  0000 C CNN
F 2 "" H 2900 8950 50  0001 C CNN
F 3 "" H 2900 8950 50  0001 C CNN
	1    2900 8950
	1    0    0    -1  
$EndComp
Wire Wire Line
	2650 8250 3150 8250
Wire Wire Line
	3150 8250 3150 8950
$Comp
L power:-5V #PWR0136
U 1 1 5E7E0A03
P 3150 8950
F 0 "#PWR0136" H 3150 9050 50  0001 C CNN
F 1 "-5V" H 3165 9123 50  0000 C CNN
F 2 "" H 3150 8950 50  0001 C CNN
F 3 "" H 3150 8950 50  0001 C CNN
	1    3150 8950
	-1   0    0    1   
$EndComp
$Sheet
S 5200 7350 1150 1650
U 5E8CF3C8
F0 "MCU" 50
F1 "MCU.sch" 50
F2 "GND" I R 6350 8725 50 
F3 "VDD" I R 6350 8575 50 
F4 "PA0_ADC1_IN1" I R 6350 7575 50 
F5 "PA1_ADC1_IN2" I R 6350 7675 50 
F6 "PA4_DAC_OUT1" I R 6350 7775 50 
F7 "PA5_DAC_OUT2" I R 6350 7875 50 
$EndSheet
Wire Wire Line
	6350 8575 6850 8575
Wire Wire Line
	6850 8575 6850 8475
Wire Wire Line
	6350 8725 6850 8725
Wire Wire Line
	6850 8725 6850 8825
$Comp
L power:GNDS #PWR02
U 1 1 5E8D00A1
P 6850 8825
F 0 "#PWR02" H 6850 8575 50  0001 C CNN
F 1 "GNDS" H 6855 8652 50  0000 C CNN
F 2 "" H 6850 8825 50  0001 C CNN
F 3 "" H 6850 8825 50  0001 C CNN
	1    6850 8825
	1    0    0    -1  
$EndComp
Wire Wire Line
	6350 7775 7000 7775
Text Label 7000 7775 2    50   ~ 0
PA4_DAC_OUT1
Wire Wire Line
	6350 7575 7000 7575
Wire Wire Line
	7000 7675 6350 7675
Text Label 7000 7575 2    50   ~ 0
PA0_ADC1_IN1
Text Label 7000 7675 2    50   ~ 0
PA1_ADC1_IN2
Wire Wire Line
	6350 7875 7000 7875
Text Label 7000 7875 2    50   ~ 0
PA5_DAC_OUT2
$Comp
L power:VDD #PWR01
U 1 1 5E93DA38
P 6850 8475
F 0 "#PWR01" H 6850 8325 50  0001 C CNN
F 1 "VDD" H 6867 8648 50  0000 C CNN
F 2 "" H 6850 8475 50  0001 C CNN
F 3 "" H 6850 8475 50  0001 C CNN
	1    6850 8475
	1    0    0    -1  
$EndComp
$EndSCHEMATC
