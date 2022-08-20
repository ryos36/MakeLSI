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
L 0_OR1Symbols:NMOS_OR1 M?
U 1 1 6302C135
P 5200 3150
AR Path="/6319D1F0/6302C135" Ref="M?"  Part="1" 
AR Path="/6302C135" Ref="M11"  Part="1" 
F 0 "M11" H 5444 3241 50  0000 L CNN
F 1 "NMOS_OR1" H 5444 3150 50  0000 L CNN
F 2 "" H 5200 3150 50  0001 C CNN
F 3 "" H 5200 3150 50  0001 C CNN
F 4 "M" H 5550 2950 50  0001 L CNN "Spice_Primitive"
F 5 "NMOS_OR1 l=1u w=2u" H 5444 3059 50  0000 L CNN "Spice_Model"
F 6 "Y" H 5550 3050 50  0001 L CNN "Spice_Netlist_Enabled"
	1    5200 3150
	-1   0    0    -1  
$EndComp
Wire Wire Line
	5000 3300 5000 3450
Wire Wire Line
	5200 3150 5400 3150
Wire Wire Line
	5000 2750 5000 3000
$Comp
L 0_OR1Symbols:NMOS_OR1 M?
U 1 1 6302C10E
P 5950 3150
AR Path="/6319D1F0/6302C10E" Ref="M?"  Part="1" 
AR Path="/6302C10E" Ref="M13"  Part="1" 
F 0 "M13" H 6194 3241 50  0000 L CNN
F 1 "NMOS_OR1" H 6194 3150 50  0000 L CNN
F 2 "" H 5950 3150 50  0001 C CNN
F 3 "" H 5950 3150 50  0001 C CNN
F 4 "M" H 6300 2950 50  0001 L CNN "Spice_Primitive"
F 5 "NMOS_OR1 l=1u w=2u" H 6194 3059 50  0000 L CNN "Spice_Model"
F 6 "Y" H 6300 3050 50  0001 L CNN "Spice_Netlist_Enabled"
	1    5950 3150
	1    0    0    -1  
$EndComp
Wire Wire Line
	6150 3300 6150 3450
Wire Wire Line
	5950 3150 5750 3150
Wire Wire Line
	6150 2750 6150 3000
Wire Wire Line
	5400 2750 5400 2850
Wire Wire Line
	5400 2850 5750 2850
Wire Wire Line
	5750 2850 5750 3150
Wire Wire Line
	5000 2750 5400 2750
Wire Wire Line
	5400 3150 5400 3000
Wire Wire Line
	5400 3000 5850 3000
Wire Wire Line
	5850 3000 5850 2750
Wire Wire Line
	5000 3450 6150 3450
Text HLabel 4650 2750 0    50   Input ~ 0
Vin
Wire Wire Line
	4650 2750 5000 2750
Connection ~ 5000 2750
Text HLabel 6450 2750 2    50   Output ~ 0
Vout
Wire Wire Line
	5850 2750 6150 2750
Connection ~ 6150 2750
Wire Wire Line
	6150 2750 6450 2750
Text HLabel 4650 3700 0    50   Input ~ 0
VSS
Wire Wire Line
	5000 3150 4850 3150
Wire Wire Line
	4850 3150 4850 3700
Wire Wire Line
	4850 3700 4650 3700
Wire Wire Line
	4850 3700 6250 3700
Wire Wire Line
	6250 3700 6250 3150
Wire Wire Line
	6250 3150 6150 3150
Connection ~ 4850 3700
$EndSCHEMATC
