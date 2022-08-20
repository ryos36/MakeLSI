EESchema Schematic File Version 4
EELAYER 30 0
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
L OR1Symbols:PMOS_OR1 M6
U 1 1 612DF7C7
P 4200 2450
F 0 "M6" H 4444 2541 50  0000 L CNN
F 1 "PMOS_OR1" H 4444 2450 50  0000 L CNN
F 2 "" H 4200 2450 50  0001 C CNN
F 3 "" H 4200 2450 50  0001 C CNN
F 4 "M" H 4550 2250 50  0001 L CNN "Spice_Primitive"
F 5 "PMOS_OR1 l=1u w=2u" H 4444 2359 50  0000 L CNN "Spice_Model"
F 6 "Y" H 4550 2350 50  0001 L CNN "Spice_Netlist_Enabled"
	1    4200 2450
	1    0    0    -1  
$EndComp
$Comp
L OR1Symbols:PMOS_OR1 M4
U 1 1 612E0340
P 3500 2450
F 0 "M4" H 3456 2541 50  0000 R CNN
F 1 "PMOS_OR1" H 3456 2450 50  0000 R CNN
F 2 "" H 3500 2450 50  0001 C CNN
F 3 "" H 3500 2450 50  0001 C CNN
F 4 "M" H 3850 2250 50  0001 L CNN "Spice_Primitive"
F 5 "PMOS_OR1 l=1u w=2u" H 3456 2359 50  0000 R CNN "Spice_Model"
F 6 "Y" H 3850 2350 50  0001 L CNN "Spice_Netlist_Enabled"
	1    3500 2450
	-1   0    0    -1  
$EndComp
$Comp
L OR1Symbols:PMOS_OR1 M1
U 1 1 612E4E48
P 2100 2450
F 0 "M1" H 2344 2541 50  0000 L CNN
F 1 "PMOS_OR1" H 2344 2450 50  0000 L CNN
F 2 "" H 2100 2450 50  0001 C CNN
F 3 "" H 2100 2450 50  0001 C CNN
F 4 "M" H 2450 2250 50  0001 L CNN "Spice_Primitive"
F 5 "PMOS_OR1 l=1u w=2u" H 2344 2359 50  0000 L CNN "Spice_Model"
F 6 "Y" H 2450 2350 50  0001 L CNN "Spice_Netlist_Enabled"
	1    2100 2450
	1    0    0    -1  
$EndComp
$Comp
L OR1Symbols:PMOS_OR1 M8
U 1 1 612E6D38
P 5300 3050
F 0 "M8" H 5544 3141 50  0000 L CNN
F 1 "PMOS_OR1" H 5544 3050 50  0000 L CNN
F 2 "" H 5300 3050 50  0001 C CNN
F 3 "" H 5300 3050 50  0001 C CNN
F 4 "M" H 5650 2850 50  0001 L CNN "Spice_Primitive"
F 5 "PMOS_OR1 l=1u w=17u" H 5544 2959 50  0000 L CNN "Spice_Model"
F 6 "Y" H 5650 2950 50  0001 L CNN "Spice_Netlist_Enabled"
	1    5300 3050
	1    0    0    -1  
$EndComp
$Comp
L OR1Symbols:NMOS_OR1 M3
U 1 1 612E70AD
P 3050 3150
F 0 "M3" H 3294 3241 50  0000 L CNN
F 1 "NMOS_OR1" H 3294 3150 50  0000 L CNN
F 2 "" H 3050 3150 50  0001 C CNN
F 3 "" H 3050 3150 50  0001 C CNN
F 4 "M" H 3400 2950 50  0001 L CNN "Spice_Primitive"
F 5 "NMOS_OR1 l=1u w=2u" H 3294 3059 50  0000 L CNN "Spice_Model"
F 6 "Y" H 3400 3050 50  0001 L CNN "Spice_Netlist_Enabled"
	1    3050 3150
	1    0    0    -1  
$EndComp
$Comp
L OR1Symbols:NMOS_OR1 M5
U 1 1 612E9F15
P 3600 3900
F 0 "M5" H 3844 3991 50  0000 L CNN
F 1 "NMOS_OR1" H 3844 3900 50  0000 L CNN
F 2 "" H 3600 3900 50  0001 C CNN
F 3 "" H 3600 3900 50  0001 C CNN
F 4 "M" H 3950 3700 50  0001 L CNN "Spice_Primitive"
F 5 "NMOS_OR1 l=1u w=2u" H 3844 3809 50  0000 L CNN "Spice_Model"
F 6 "Y" H 3950 3800 50  0001 L CNN "Spice_Netlist_Enabled"
	1    3600 3900
	1    0    0    -1  
$EndComp
$Comp
L OR1Symbols:NMOS_OR1 M2
U 1 1 612EA848
P 2450 3850
F 0 "M2" H 2406 3941 50  0000 R CNN
F 1 "NMOS_OR1" H 2406 3850 50  0000 R CNN
F 2 "" H 2450 3850 50  0001 C CNN
F 3 "" H 2450 3850 50  0001 C CNN
F 4 "M" H 2800 3650 50  0001 L CNN "Spice_Primitive"
F 5 "NMOS_OR1 l=1u w=2u" H 2406 3759 50  0000 R CNN "Spice_Model"
F 6 "Y" H 2800 3750 50  0001 L CNN "Spice_Netlist_Enabled"
	1    2450 3850
	-1   0    0    -1  
$EndComp
Wire Wire Line
	2100 2450 2100 2900
Wire Wire Line
	2100 2900 2300 2900
Wire Wire Line
	2300 2900 2300 2600
Wire Wire Line
	2300 2900 2300 3550
Wire Wire Line
	2300 3700 2250 3700
Connection ~ 2300 2900
Wire Wire Line
	2450 3850 2650 3850
Wire Wire Line
	3600 3850 3600 3900
Wire Wire Line
	2300 3550 2650 3550
Wire Wire Line
	2650 3550 2650 3850
Connection ~ 2300 3550
Wire Wire Line
	2300 3550 2300 3700
Connection ~ 2650 3850
Wire Wire Line
	2250 3850 2050 3850
Wire Wire Line
	2050 3850 2050 4200
Wire Wire Line
	2050 4200 2250 4200
Wire Wire Line
	3800 4200 3800 4050
Wire Wire Line
	3800 4200 4000 4200
Wire Wire Line
	4000 4200 4000 3900
Wire Wire Line
	4000 3900 3800 3900
Connection ~ 3800 4200
Wire Wire Line
	2250 4000 2250 4200
Connection ~ 2250 4200
Wire Wire Line
	2250 4200 3650 4200
Wire Wire Line
	5500 4000 5500 4200
Connection ~ 4000 4200
Wire Wire Line
	5500 3850 5800 3850
Wire Wire Line
	5800 3850 5800 4200
Wire Wire Line
	5800 4200 5500 4200
Connection ~ 5500 4200
Wire Wire Line
	5300 3050 5100 3050
Wire Wire Line
	5100 3050 5100 2800
Wire Wire Line
	5100 2800 3300 2800
Wire Wire Line
	3300 2800 3300 2600
Wire Wire Line
	3300 2800 3300 3000
Wire Wire Line
	3300 3000 3250 3000
Connection ~ 3300 2800
Wire Wire Line
	4400 2600 4400 2650
Wire Wire Line
	4400 3000 4450 3000
Wire Wire Line
	3500 2450 4050 2450
Wire Wire Line
	4400 2650 4050 2650
Wire Wire Line
	4050 2650 4050 2450
Connection ~ 4400 2650
Wire Wire Line
	4400 2650 4400 3000
Connection ~ 4050 2450
Wire Wire Line
	4050 2450 4200 2450
Wire Wire Line
	5750 3050 5750 2750
Wire Wire Line
	5750 2750 5500 2750
Wire Wire Line
	5500 2750 5500 2900
Wire Wire Line
	2300 2300 2300 2000
Wire Wire Line
	2300 2000 2550 2000
Wire Wire Line
	5500 2000 5500 2750
Connection ~ 5500 2750
Wire Wire Line
	2550 2450 2300 2450
Wire Wire Line
	2550 2000 2550 2450
Connection ~ 2550 2000
Wire Wire Line
	3300 2450 3100 2450
Wire Wire Line
	3100 2450 3100 2000
Wire Wire Line
	2550 2000 3100 2000
Connection ~ 3100 2000
Wire Wire Line
	3300 2300 3300 2000
Wire Wire Line
	3100 2000 3300 2000
Connection ~ 3300 2000
Wire Wire Line
	3300 2000 3600 2000
Wire Wire Line
	4400 2300 4400 2000
Connection ~ 4400 2000
Wire Wire Line
	4400 2000 4600 2000
Wire Wire Line
	4400 2450 4600 2450
Wire Wire Line
	4600 2450 4600 2000
Connection ~ 4600 2000
Wire Wire Line
	4600 2000 5500 2000
Wire Wire Line
	5500 3050 5750 3050
Text HLabel 2850 3150 0    50   Input ~ 0
VP
Text HLabel 4750 2950 2    50   Input ~ 0
VM
Text HLabel 3100 1850 0    50   Input ~ 0
VDD
Text HLabel 3200 4400 0    50   Input ~ 0
VSS
Wire Wire Line
	5500 3200 5500 3300
Text HLabel 5950 3300 2    50   Output ~ 0
VO
Wire Wire Line
	5500 3300 5950 3300
Connection ~ 5500 3300
Wire Wire Line
	5500 3300 5500 3700
Wire Wire Line
	3100 1850 3600 1850
Wire Wire Line
	3600 1850 3600 2000
Connection ~ 3600 2000
Wire Wire Line
	3600 2000 4400 2000
Wire Wire Line
	3200 4400 3650 4400
Wire Wire Line
	3650 4400 3650 4200
Connection ~ 3650 4200
Wire Wire Line
	3650 4200 3800 4200
Wire Wire Line
	2850 3150 3050 3150
Wire Wire Line
	4750 2950 4650 2950
Wire Wire Line
	4650 2950 4650 3150
Wire Wire Line
	2650 3850 3450 3850
Wire Wire Line
	3450 3850 3450 3650
Connection ~ 3450 3850
Wire Wire Line
	3450 3850 3600 3850
Wire Wire Line
	3250 3300 3850 3300
Wire Wire Line
	5000 3650 5000 3850
Wire Wire Line
	5000 3850 5300 3850
Wire Wire Line
	3850 3750 3800 3750
Connection ~ 3850 3300
Wire Wire Line
	3850 3300 4450 3300
Wire Wire Line
	3850 3300 3850 3750
Wire Wire Line
	3450 3650 5000 3650
Wire Wire Line
	4000 4200 4250 4200
Wire Wire Line
	3250 3150 4250 3150
Wire Wire Line
	4250 3150 4250 4200
Connection ~ 4250 3150
Wire Wire Line
	4250 3150 4450 3150
Connection ~ 4250 4200
Wire Wire Line
	4250 4200 5500 4200
$Comp
L OR1Symbols:NMOS_OR1 M9
U 1 1 612EBBF3
P 5300 3850
F 0 "M9" H 5544 3941 50  0000 L CNN
F 1 "NMOS_OR1" H 5544 3850 50  0000 L CNN
F 2 "" H 5300 3850 50  0001 C CNN
F 3 "" H 5300 3850 50  0001 C CNN
F 4 "M" H 5650 3650 50  0001 L CNN "Spice_Primitive"
F 5 "NMOS_OR1 l=1u w=2u" H 5544 3759 50  0000 L CNN "Spice_Model"
F 6 "Y" H 5650 3750 50  0001 L CNN "Spice_Netlist_Enabled"
	1    5300 3850
	1    0    0    -1  
$EndComp
$Comp
L OR1Symbols:NMOS_OR1 M7
U 1 1 612E81A7
P 4650 3150
F 0 "M7" H 4606 3241 50  0000 R CNN
F 1 "NMOS_OR1" H 4606 3150 50  0000 R CNN
F 2 "" H 4650 3150 50  0001 C CNN
F 3 "" H 4650 3150 50  0001 C CNN
F 4 "M" H 5000 2950 50  0001 L CNN "Spice_Primitive"
F 5 "NMOS_OR1 l=1u w=2u" H 4606 3059 50  0000 R CNN "Spice_Model"
F 6 "Y" H 5000 3050 50  0001 L CNN "Spice_Netlist_Enabled"
	1    4650 3150
	-1   0    0    -1  
$EndComp
$EndSCHEMATC
