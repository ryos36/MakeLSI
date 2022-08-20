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
L 0_OR1Symbols:NMOS_OR1 M20
U 1 1 62FB86F2
P 5600 3650
F 0 "M20" H 5556 3741 50  0000 R CNN
F 1 "NMOS_OR1" H 5556 3650 50  0000 R CNN
F 2 "" H 5600 3650 50  0001 C CNN
F 3 "" H 5600 3650 50  0001 C CNN
F 4 "M" H 5950 3450 50  0001 L CNN "Spice_Primitive"
F 5 "NMOS_OR1 l=1u w=2u" H 5556 3559 50  0000 R CNN "Spice_Model"
F 6 "Y" H 5950 3550 50  0001 L CNN "Spice_Netlist_Enabled"
	1    5600 3650
	1    0    0    -1  
$EndComp
Wire Wire Line
	5950 2950 5800 2950
$Comp
L 0_OR1Symbols:PMOS_OR1 M19
U 1 1 62FB86FC
P 5600 2950
F 0 "M19" H 5844 3041 50  0000 L CNN
F 1 "PMOS_OR1" H 5844 2950 50  0000 L CNN
F 2 "" H 5600 2950 50  0001 C CNN
F 3 "" H 5600 2950 50  0001 C CNN
F 4 "M" H 5950 2750 50  0001 L CNN "Spice_Primitive"
F 5 "PMOS_OR1 l=1u w=6u" H 5844 2859 50  0000 L CNN "Spice_Model"
F 6 "Y" H 5950 2850 50  0001 L CNN "Spice_Netlist_Enabled"
	1    5600 2950
	1    0    0    -1  
$EndComp
Wire Wire Line
	5800 2650 5800 2800
Wire Wire Line
	5600 2950 5500 2950
Wire Wire Line
	5500 3650 5600 3650
Wire Wire Line
	5800 3800 5800 3900
Wire Wire Line
	5800 3650 5900 3650
Wire Wire Line
	5900 3650 5900 5150
Wire Wire Line
	5950 1950 5950 2950
Text HLabel 3150 1950 0    50   Input ~ 0
VDD
Text HLabel 3150 3250 0    50   Input ~ 0
Vin1
Text HLabel 3150 3450 0    50   Input ~ 0
Vin2
Text HLabel 3200 5150 0    50   Input ~ 0
Vss
Wire Wire Line
	3150 3450 5500 3450
Wire Wire Line
	5500 2950 5500 3450
Connection ~ 5500 3450
Wire Wire Line
	5500 3450 5500 3650
Wire Wire Line
	3200 5150 4700 5150
Connection ~ 4700 5150
Wire Wire Line
	4700 3650 4700 5150
Wire Wire Line
	4600 3650 4700 3650
Wire Wire Line
	4700 5150 5250 5150
Wire Wire Line
	5900 5150 5350 5150
Connection ~ 5250 5150
Wire Wire Line
	5250 4400 5350 4400
Wire Wire Line
	4900 4400 5050 4400
Wire Wire Line
	4600 3900 5250 3900
Wire Wire Line
	5800 3900 5250 3900
Connection ~ 5250 3900
Wire Wire Line
	5250 3900 5250 4250
Wire Wire Line
	4600 3800 4600 3900
$Comp
L 0_OR1Symbols:NMOS_OR1 M18
U 1 1 62FB8723
P 5050 4400
F 0 "M18" H 5006 4491 50  0000 R CNN
F 1 "NMOS_OR1" H 5006 4400 50  0000 R CNN
F 2 "" H 5050 4400 50  0001 C CNN
F 3 "" H 5050 4400 50  0001 C CNN
F 4 "M" H 5400 4200 50  0001 L CNN "Spice_Primitive"
F 5 "NMOS_OR1 l=1u w=2u" H 5006 4309 50  0000 R CNN "Spice_Model"
F 6 "Y" H 5400 4300 50  0001 L CNN "Spice_Netlist_Enabled"
	1    5050 4400
	1    0    0    -1  
$EndComp
Wire Wire Line
	4400 3650 4250 3650
$Comp
L 0_OR1Symbols:NMOS_OR1 M16
U 1 1 62FB86DE
P 4400 3650
F 0 "M16" H 4356 3741 50  0000 R CNN
F 1 "NMOS_OR1" H 4356 3650 50  0000 R CNN
F 2 "" H 4400 3650 50  0001 C CNN
F 3 "" H 4400 3650 50  0001 C CNN
F 4 "M" H 4750 3450 50  0001 L CNN "Spice_Primitive"
F 5 "NMOS_OR1 l=1u w=2u" H 4356 3559 50  0000 R CNN "Spice_Model"
F 6 "Y" H 4750 3550 50  0001 L CNN "Spice_Netlist_Enabled"
	1    4400 3650
	1    0    0    -1  
$EndComp
Wire Wire Line
	4250 3250 4250 2950
Wire Wire Line
	3150 3250 4250 3250
Wire Wire Line
	5950 1950 5150 1950
Connection ~ 5150 1950
Wire Wire Line
	5150 1950 5150 2200
Wire Wire Line
	4750 1950 5150 1950
Wire Wire Line
	3100 1950 4750 1950
Connection ~ 4750 1950
Wire Wire Line
	4750 1950 4750 2950
Wire Wire Line
	4600 2650 4600 2800
Wire Wire Line
	4600 3200 4600 3500
Wire Wire Line
	4900 2500 4950 2500
Wire Wire Line
	4900 3200 4900 4400
Wire Wire Line
	4900 3200 4900 2500
Connection ~ 4900 3200
Wire Wire Line
	4600 3200 4900 3200
Wire Wire Line
	5150 2200 5300 2200
Wire Wire Line
	5300 2200 5300 2500
Connection ~ 5150 2200
Wire Wire Line
	5150 2200 5150 2350
Wire Wire Line
	5150 2650 5800 2650
Wire Wire Line
	5150 2650 4600 2650
Connection ~ 5150 2650
$Comp
L 0_OR1Symbols:PMOS_OR1 M17
U 1 1 62FB870D
P 4950 2500
F 0 "M17" H 5194 2591 50  0000 L CNN
F 1 "PMOS_OR1" H 5194 2500 50  0000 L CNN
F 2 "" H 4950 2500 50  0001 C CNN
F 3 "" H 4950 2500 50  0001 C CNN
F 4 "M" H 5300 2300 50  0001 L CNN "Spice_Primitive"
F 5 "PMOS_OR1 l=1u w=2u" H 5194 2409 50  0000 L CNN "Spice_Model"
F 6 "Y" H 5300 2400 50  0001 L CNN "Spice_Netlist_Enabled"
	1    4950 2500
	1    0    0    -1  
$EndComp
Wire Wire Line
	5300 2500 5150 2500
Wire Wire Line
	4250 2950 4400 2950
Connection ~ 4250 3250
Wire Wire Line
	4250 3650 4250 3250
Connection ~ 4600 3200
Wire Wire Line
	4600 3100 4600 3200
$Comp
L 0_OR1Symbols:PMOS_OR1 M15
U 1 1 62FB86E8
P 4400 2950
F 0 "M15" H 4644 3041 50  0000 L CNN
F 1 "PMOS_OR1" H 4644 2950 50  0000 L CNN
F 2 "" H 4400 2950 50  0001 C CNN
F 3 "" H 4400 2950 50  0001 C CNN
F 4 "M" H 4750 2750 50  0001 L CNN "Spice_Primitive"
F 5 "PMOS_OR1 l=1u w=2u" H 4644 2859 50  0000 L CNN "Spice_Model"
F 6 "Y" H 4750 2850 50  0001 L CNN "Spice_Netlist_Enabled"
	1    4400 2950
	1    0    0    -1  
$EndComp
Wire Wire Line
	4750 2950 4600 2950
Wire Wire Line
	5800 3100 5800 3250
$Comp
L 0_OR1Symbols:NMOS_OR1 M22
U 1 1 6304FDCA
P 6950 3650
F 0 "M22" H 6906 3741 50  0000 R CNN
F 1 "NMOS_OR1" H 6906 3650 50  0000 R CNN
F 2 "" H 6950 3650 50  0001 C CNN
F 3 "" H 6950 3650 50  0001 C CNN
F 4 "M" H 7300 3450 50  0001 L CNN "Spice_Primitive"
F 5 "NMOS_OR1 l=1u w=2u" H 6906 3559 50  0000 R CNN "Spice_Model"
F 6 "Y" H 7300 3550 50  0001 L CNN "Spice_Netlist_Enabled"
	1    6950 3650
	1    0    0    -1  
$EndComp
$Comp
L 0_OR1Symbols:PMOS_OR1 M21
U 1 1 6304FDD4
P 6950 2950
F 0 "M21" H 7194 3041 50  0000 L CNN
F 1 "PMOS_OR1" H 7194 2950 50  0000 L CNN
F 2 "" H 6950 2950 50  0001 C CNN
F 3 "" H 6950 2950 50  0001 C CNN
F 4 "M" H 7300 2750 50  0001 L CNN "Spice_Primitive"
F 5 "PMOS_OR1 l=1u w=17u" H 7194 2859 50  0000 L CNN "Spice_Model"
F 6 "Y" H 7300 2850 50  0001 L CNN "Spice_Netlist_Enabled"
	1    6950 2950
	1    0    0    -1  
$EndComp
Wire Wire Line
	6950 2950 6850 2950
Wire Wire Line
	6850 3650 6950 3650
Wire Wire Line
	4500 3450 5500 3450
Wire Wire Line
	5950 1950 7150 1950
Wire Wire Line
	7150 1950 7150 2650
Connection ~ 5950 1950
Wire Wire Line
	7150 5150 5900 5150
Connection ~ 5900 5150
Wire Wire Line
	7150 2650 7650 2650
Wire Wire Line
	7650 2650 7650 2950
Wire Wire Line
	7150 2950 7650 2950
Connection ~ 7150 2650
Wire Wire Line
	7150 2650 7150 2800
Wire Wire Line
	7150 3800 7150 4050
Wire Wire Line
	7150 3650 7650 3650
Wire Wire Line
	7650 3650 7650 4050
Wire Wire Line
	7650 4050 7150 4050
Connection ~ 7150 4050
Wire Wire Line
	7150 4050 7150 5150
Wire Wire Line
	6850 2950 6850 3250
Connection ~ 5800 3250
Wire Wire Line
	5800 3250 5800 3500
Connection ~ 6850 3250
Wire Wire Line
	6850 3250 6850 3650
Text HLabel 8100 3250 2    50   Output ~ 0
Vout
Wire Wire Line
	5800 3250 6850 3250
Wire Wire Line
	7150 3100 7150 3250
Wire Wire Line
	7150 3250 8100 3250
Connection ~ 7150 3250
Wire Wire Line
	7150 3250 7150 3500
Wire Wire Line
	5250 4550 5250 5150
Wire Wire Line
	5350 4400 5350 5150
Connection ~ 5350 5150
Wire Wire Line
	5350 5150 5250 5150
$EndSCHEMATC
