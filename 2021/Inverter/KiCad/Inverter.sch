EESchema Schematic File Version 4
EELAYER 30 0
EELAYER END
$Descr A4 11693 8268
encoding utf-8
Sheet 2 2
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
L OR1Symbols:PMOS_OR1 M1
U 1 1 612DA1D8
P 4850 3500
F 0 "M1" H 5094 3591 50  0000 L CNN
F 1 "PMOS_OR1" H 5094 3500 50  0000 L CNN
F 2 "" H 4850 3500 50  0001 C CNN
F 3 "" H 4850 3500 50  0001 C CNN
F 4 "M" H 5200 3300 50  0001 L CNN "Spice_Primitive"
F 5 "pchOR1ex l=1u w=6u" H 5094 3409 50  0000 L CNN "Spice_Model"
F 6 "Y" H 5200 3400 50  0001 L CNN "Spice_Netlist_Enabled"
	1    4850 3500
	1    0    0    -1  
$EndComp
$Comp
L OR1Symbols:NMOS_OR1 M2
U 1 1 612DB2C3
P 4850 3950
F 0 "M2" H 5094 4041 50  0000 L CNN
F 1 "NMOS_OR1" H 5094 3950 50  0000 L CNN
F 2 "" H 4850 3950 50  0001 C CNN
F 3 "" H 4850 3950 50  0001 C CNN
F 4 "M" H 5200 3750 50  0001 L CNN "Spice_Primitive"
F 5 "nchOR1ex l=1u w=2u" H 5094 3859 50  0000 L CNN "Spice_Model"
F 6 "Y" H 5200 3850 50  0001 L CNN "Spice_Netlist_Enabled"
	1    4850 3950
	1    0    0    -1  
$EndComp
Text HLabel 4750 3250 0    50   Input ~ 0
VDD
Text HLabel 4750 4400 0    50   Input ~ 0
VSS
Text HLabel 4350 3750 0    50   Input ~ 0
A
Wire Wire Line
	4750 3250 5050 3250
Wire Wire Line
	5050 3250 5050 3350
Wire Wire Line
	4350 3750 4800 3750
Wire Wire Line
	4800 3750 4800 3500
Wire Wire Line
	4800 3500 4850 3500
Wire Wire Line
	4800 3750 4800 3950
Wire Wire Line
	4800 3950 4850 3950
Connection ~ 4800 3750
Wire Wire Line
	5050 3650 5150 3650
Wire Wire Line
	5150 3650 5150 3750
Wire Wire Line
	5150 3800 5050 3800
Text HLabel 6000 3750 2    50   Output ~ 0
X
Wire Wire Line
	5150 3500 5050 3500
Wire Wire Line
	5150 3750 6000 3750
Connection ~ 5150 3750
Wire Wire Line
	5150 3750 5150 3800
Wire Wire Line
	5050 4100 5050 4200
Wire Wire Line
	5050 4400 4750 4400
Wire Wire Line
	5050 3950 5150 3950
Wire Wire Line
	5150 3950 5150 4200
Wire Wire Line
	5150 4200 5050 4200
Connection ~ 5050 4200
Wire Wire Line
	5050 4200 5050 4400
Wire Wire Line
	5050 3350 5150 3350
Wire Wire Line
	5150 3350 5150 3500
Connection ~ 5050 3350
$EndSCHEMATC
