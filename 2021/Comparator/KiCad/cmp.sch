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
L OR1Symbols:PMOS_OR1 M1
U 1 1 6127A38A
P 1000 1500
F 0 "M1" H 1244 1591 50  0000 L CNN
F 1 "PMOS_OR1" H 1244 1500 50  0000 L CNN
F 2 "" H 1000 1500 50  0001 C CNN
F 3 "" H 1000 1500 50  0001 C CNN
F 4 "M" H 1350 1300 50  0001 L CNN "Spice_Primitive"
F 5 "pchOR1ex l=1u w=2u" H 1244 1409 50  0000 L CNN "Spice_Model"
F 6 "Y" H 1350 1400 50  0001 L CNN "Spice_Netlist_Enabled"
	1    1000 1500
	1    0    0    -1  
$EndComp
$Comp
L OR1Symbols:PMOS_OR1 M4
U 1 1 6127C7EF
P 2000 1500
F 0 "M4" H 2244 1591 50  0000 L CNN
F 1 "PMOS_OR1" H 2244 1500 50  0000 L CNN
F 2 "" H 2000 1500 50  0001 C CNN
F 3 "" H 2000 1500 50  0001 C CNN
F 4 "M" H 2350 1300 50  0001 L CNN "Spice_Primitive"
F 5 "pchOR1ex l=1u w=2u" H 2244 1409 50  0000 L CNN "Spice_Model"
F 6 "Y" H 2350 1400 50  0001 L CNN "Spice_Netlist_Enabled"
	1    2000 1500
	-1   0    0    -1  
$EndComp
$Comp
L OR1Symbols:PMOS_OR1 M6
U 1 1 6127DE50
P 2500 1500
F 0 "M6" H 2744 1591 50  0000 L CNN
F 1 "PMOS_OR1" H 2744 1500 50  0000 L CNN
F 2 "" H 2500 1500 50  0001 C CNN
F 3 "" H 2500 1500 50  0001 C CNN
F 4 "M" H 2850 1300 50  0001 L CNN "Spice_Primitive"
F 5 "pchOR1ex l=1u w=2u" H 2744 1409 50  0000 L CNN "Spice_Model"
F 6 "Y" H 2850 1400 50  0001 L CNN "Spice_Netlist_Enabled"
	1    2500 1500
	1    0    0    -1  
$EndComp
$Comp
L OR1Symbols:NMOS_OR1 M3
U 1 1 6127E422
P 1600 2500
F 0 "M3" H 1844 2591 50  0000 L CNN
F 1 "NMOS_OR1" H 1844 2500 50  0000 L CNN
F 2 "" H 1600 2500 50  0001 C CNN
F 3 "" H 1600 2500 50  0001 C CNN
F 4 "M" H 1950 2300 50  0001 L CNN "Spice_Primitive"
F 5 "nchOR1ex l=1u w=2u" H 1844 2409 50  0000 L CNN "Spice_Model"
F 6 "Y" H 1950 2400 50  0001 L CNN "Spice_Netlist_Enabled"
	1    1600 2500
	1    0    0    -1  
$EndComp
$Comp
L OR1Symbols:NMOS_OR1 M7
U 1 1 61281339
P 2900 2500
F 0 "M7" H 3144 2591 50  0000 L CNN
F 1 "NMOS_OR1" H 3144 2500 50  0000 L CNN
F 2 "" H 2900 2500 50  0001 C CNN
F 3 "" H 2900 2500 50  0001 C CNN
F 4 "M" H 3250 2300 50  0001 L CNN "Spice_Primitive"
F 5 "nchOR1ex l=1u w=2u" H 3144 2409 50  0000 L CNN "Spice_Model"
F 6 "Y" H 3250 2400 50  0001 L CNN "Spice_Netlist_Enabled"
	1    2900 2500
	-1   0    0    -1  
$EndComp
$Comp
L OR1Symbols:NMOS_OR1 M5
U 1 1 612858B6
P 2100 3500
F 0 "M5" H 2344 3591 50  0000 L CNN
F 1 "NMOS_OR1" H 2344 3500 50  0000 L CNN
F 2 "" H 2100 3500 50  0001 C CNN
F 3 "" H 2100 3500 50  0001 C CNN
F 4 "M" H 2450 3300 50  0001 L CNN "Spice_Primitive"
F 5 "nchOR1ex l=1u w=2u" H 2344 3409 50  0000 L CNN "Spice_Model"
F 6 "Y" H 2450 3400 50  0001 L CNN "Spice_Netlist_Enabled"
	1    2100 3500
	1    0    0    -1  
$EndComp
$Comp
L OR1Symbols:NMOS_OR1 M2
U 1 1 61289560
P 1400 3500
F 0 "M2" H 1644 3591 50  0000 L CNN
F 1 "NMOS_OR1" H 1644 3500 50  0000 L CNN
F 2 "" H 1400 3500 50  0001 C CNN
F 3 "" H 1400 3500 50  0001 C CNN
F 4 "M" H 1750 3300 50  0001 L CNN "Spice_Primitive"
F 5 "nchOR1ex l=1u w=2u" H 1644 3409 50  0000 L CNN "Spice_Model"
F 6 "Y" H 1750 3400 50  0001 L CNN "Spice_Netlist_Enabled"
	1    1400 3500
	-1   0    0    -1  
$EndComp
Wire Wire Line
	1200 3350 1200 3300
Wire Wire Line
	1000 1500 1000 1750
Wire Wire Line
	1000 1750 1200 1750
Connection ~ 1200 1750
Wire Wire Line
	1200 1750 1200 1650
Wire Wire Line
	1200 1350 1200 1000
Wire Wire Line
	1200 1000 1300 1000
Wire Wire Line
	1200 1500 1300 1500
Wire Wire Line
	1300 1500 1300 1000
Connection ~ 1300 1000
Wire Wire Line
	1300 1000 1700 1000
Wire Wire Line
	1800 1350 1800 1000
Connection ~ 1800 1000
Wire Wire Line
	1800 1000 2400 1000
Wire Wire Line
	1800 1500 1700 1500
Connection ~ 1700 1000
Wire Wire Line
	1700 1000 1800 1000
Wire Wire Line
	2000 1500 2250 1500
Wire Wire Line
	2700 1350 2700 1000
Connection ~ 2700 1000
Wire Wire Line
	2700 1000 2800 1000
Wire Wire Line
	2700 1500 2800 1500
Wire Wire Line
	2800 1500 2800 1000
Connection ~ 2800 1000
Wire Wire Line
	2800 1000 3700 1000
Wire Wire Line
	2700 1650 2700 1700
Wire Wire Line
	2250 1500 2250 1700
Wire Wire Line
	2250 1700 2700 1700
Connection ~ 2250 1500
Wire Wire Line
	2250 1500 2500 1500
Connection ~ 2700 1700
Wire Wire Line
	2700 1700 2700 2350
Wire Wire Line
	1800 2500 2600 2500
Wire Wire Line
	1800 2650 1800 3200
Wire Wire Line
	1800 3200 2300 3200
Wire Wire Line
	2700 3200 2700 2650
Wire Wire Line
	2300 3350 2300 3200
Connection ~ 2300 3200
Wire Wire Line
	2300 3200 2700 3200
$Comp
L OR1Symbols:NMOS_OR1 M9
U 1 1 612858BF
P 3500 3500
F 0 "M9" H 3744 3591 50  0000 L CNN
F 1 "NMOS_OR1" H 3744 3500 50  0000 L CNN
F 2 "" H 3500 3500 50  0001 C CNN
F 3 "" H 3500 3500 50  0001 C CNN
F 4 "M" H 3850 3300 50  0001 L CNN "Spice_Primitive"
F 5 "nchOR1ex l=1u w=2u" H 3744 3409 50  0000 L CNN "Spice_Model"
F 6 "Y" H 3850 3400 50  0001 L CNN "Spice_Netlist_Enabled"
	1    3500 3500
	1    0    0    -1  
$EndComp
Wire Wire Line
	1200 3500 1150 3500
Wire Wire Line
	1150 3500 1150 3650
Wire Wire Line
	1150 3650 1200 3650
Wire Wire Line
	3750 3650 3750 3500
Wire Wire Line
	3750 3500 3700 3500
Connection ~ 1200 3650
Wire Wire Line
	1200 3650 2300 3650
Connection ~ 2300 3650
Wire Wire Line
	2300 3650 2350 3650
Connection ~ 3700 3650
Wire Wire Line
	3700 3650 3750 3650
Wire Wire Line
	3500 3500 2450 3500
Wire Wire Line
	2450 3500 2450 3300
Wire Wire Line
	2450 3300 2100 3300
Wire Wire Line
	2100 3300 2100 3500
Wire Wire Line
	1400 3500 1450 3500
Connection ~ 2100 3500
Wire Wire Line
	1200 3300 1450 3300
Wire Wire Line
	1450 3300 1450 3500
Connection ~ 1200 3300
Wire Wire Line
	1200 3300 1200 1750
Connection ~ 1450 3500
Wire Wire Line
	1450 3500 2100 3500
Wire Wire Line
	2300 3500 2350 3500
Wire Wire Line
	2350 3500 2350 3650
Connection ~ 2350 3650
Wire Wire Line
	2350 3650 2400 3650
Wire Wire Line
	2600 2500 2600 3650
Connection ~ 2600 2500
Wire Wire Line
	2600 2500 2700 2500
Connection ~ 2600 3650
Wire Wire Line
	2600 3650 3700 3650
Text HLabel 1500 2500 0    50   Input ~ 0
VP
Wire Wire Line
	1500 2500 1600 2500
Text HLabel 3000 2500 2    50   Input ~ 0
VM
Wire Wire Line
	2900 2500 3000 2500
Text HLabel 3800 2500 2    50   Output ~ 0
VO
Wire Wire Line
	3700 2500 3800 2500
Wire Wire Line
	3700 2500 3700 3350
Text HLabel 2400 900  2    50   Input ~ 0
VDD
Wire Wire Line
	2400 900  2400 1000
Connection ~ 2400 1000
Wire Wire Line
	2400 1000 2700 1000
Text HLabel 2400 3750 3    50   Input ~ 0
VSS
Wire Wire Line
	2400 3650 2400 3750
Connection ~ 2400 3650
Wire Wire Line
	2400 3650 2600 3650
Connection ~ 3700 2500
Connection ~ 1800 2000
Wire Wire Line
	1800 2000 1800 1650
Wire Wire Line
	1800 2350 1800 2000
Wire Wire Line
	1700 1500 1700 1000
Wire Wire Line
	3700 2150 3700 2500
Wire Wire Line
	3750 1850 3750 2000
Wire Wire Line
	3700 1850 3750 1850
Wire Wire Line
	3700 1000 3700 1850
Connection ~ 3700 1850
Wire Wire Line
	3500 2000 1800 2000
$Comp
L OR1Symbols:PMOS_OR1 M8
U 1 1 6127DE59
P 3500 2000
F 0 "M8" H 3744 2091 50  0000 L CNN
F 1 "PMOS_OR1" H 3744 2000 50  0000 L CNN
F 2 "" H 3500 2000 50  0001 C CNN
F 3 "" H 3500 2000 50  0001 C CNN
F 4 "M" H 3850 1800 50  0001 L CNN "Spice_Primitive"
F 5 "pchOR1ex l=1u w=17u" H 3744 1909 50  0000 L CNN "Spice_Model"
F 6 "Y" H 3850 1900 50  0001 L CNN "Spice_Netlist_Enabled"
	1    3500 2000
	1    0    0    -1  
$EndComp
Wire Wire Line
	3750 2000 3700 2000
$EndSCHEMATC
