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
L 0_OR1Symbols:NMOS_OR1 M1
U 1 1 6304C414
P 5800 3100
F 0 "M1" H 6044 3191 50  0000 L CNN
F 1 "NMOS_OR1" H 6044 3100 50  0000 L CNN
F 2 "" H 5800 3100 50  0001 C CNN
F 3 "" H 5800 3100 50  0001 C CNN
F 4 "M" H 6150 2900 50  0001 L CNN "Spice_Primitive"
F 5 "NMOS_OR1 l=1u w=2u" H 6044 3009 50  0000 L CNN "Spice_Model"
F 6 "Y" H 6150 3000 50  0001 L CNN "Spice_Netlist_Enabled"
	1    5800 3100
	1    0    0    -1  
$EndComp
$Comp
L Simulation_SPICE:VDC V2
U 1 1 6304CE93
P 6600 3100
F 0 "V2" H 6730 3191 50  0000 L CNN
F 1 "VDC" H 6730 3100 50  0000 L CNN
F 2 "" H 6600 3100 50  0001 C CNN
F 3 "~" H 6600 3100 50  0001 C CNN
F 4 "Y" H 6600 3100 50  0001 L CNN "Spice_Netlist_Enabled"
F 5 "V" H 6600 3100 50  0001 L CNN "Spice_Primitive"
F 6 "dc 5" H 6730 3009 50  0000 L CNN "Spice_Model"
	1    6600 3100
	1    0    0    -1  
$EndComp
$Comp
L Simulation_SPICE:VPWL V1
U 1 1 6304D60A
P 5350 3300
F 0 "V1" H 5480 3391 50  0000 L CNN
F 1 "VPWL" H 5480 3300 50  0000 L CNN
F 2 "" H 5350 3300 50  0001 C CNN
F 3 "~" H 5350 3300 50  0001 C CNN
F 4 "Y" H 5350 3300 50  0001 L CNN "Spice_Netlist_Enabled"
F 5 "V" H 5350 3300 50  0001 L CNN "Spice_Primitive"
F 6 "pwl(0 0 5000ns 5)" H 5480 3209 50  0000 L CNN "Spice_Model"
	1    5350 3300
	1    0    0    -1  
$EndComp
Wire Wire Line
	5350 3500 6000 3500
Wire Wire Line
	6000 3500 6000 3250
Wire Wire Line
	6000 3500 6100 3500
Wire Wire Line
	6600 3500 6600 3300
Connection ~ 6000 3500
Wire Wire Line
	6000 2950 6000 2850
Wire Wire Line
	6000 2850 6600 2850
Wire Wire Line
	6600 2850 6600 2900
Text Notes 4300 2550 0    50   ~ 0
.include /home/ryos/Project/MakeLSI/MakeLSI/2022/HComparator/HComparator/tb/16PTS/mos_PTS06.lib
Text Notes 5600 2800 0    50   ~ 0
.tran 100ns 5000ns  
Wire Wire Line
	6000 3100 6300 3100
Wire Wire Line
	6300 3100 6300 3500
Connection ~ 6300 3500
Wire Wire Line
	6300 3500 6400 3500
$Comp
L 0_OR1Symbols:0 #GND01
U 1 1 63051C7C
P 6500 3600
F 0 "#GND01" H 6500 3500 50  0001 C CNN
F 1 "0" H 6500 3689 50  0000 C CNN
F 2 "" H 6650 3600 50  0001 C CNN
F 3 "" H 6650 3600 50  0001 C CNN
	1    6500 3600
	1    0    0    -1  
$EndComp
Wire Wire Line
	6400 3500 6400 3550
Wire Wire Line
	6400 3550 6500 3550
Wire Wire Line
	6500 3550 6500 3600
Connection ~ 6400 3500
Wire Wire Line
	6400 3500 6600 3500
$Comp
L 0_OR1Symbols:NMOS_OR1 M2
U 1 1 630559E0
P 5650 3900
F 0 "M2" H 5894 3991 50  0000 L CNN
F 1 "NMOS_OR1" H 5894 3900 50  0000 L CNN
F 2 "" H 5650 3900 50  0001 C CNN
F 3 "" H 5650 3900 50  0001 C CNN
F 4 "M" H 6000 3700 50  0001 L CNN "Spice_Primitive"
F 5 "NMOS_OR1 l=1u w=17u" H 5894 3809 50  0000 L CNN "Spice_Model"
F 6 "Y" H 6000 3800 50  0001 L CNN "Spice_Netlist_Enabled"
	1    5650 3900
	1    0    0    -1  
$EndComp
Wire Wire Line
	6000 2850 5700 2850
Wire Wire Line
	5700 2850 5700 3750
Wire Wire Line
	5700 3750 5850 3750
Connection ~ 6000 2850
Wire Wire Line
	5650 3900 5650 3100
Connection ~ 5650 3100
Wire Wire Line
	5650 3100 5800 3100
Wire Wire Line
	6100 3900 6100 3500
Wire Wire Line
	5850 3900 6100 3900
Connection ~ 6100 3500
Wire Wire Line
	5850 4050 6200 4050
$Comp
L 0_OR1Symbols:NMOS_OR1 M3
U 1 1 6305E608
P 5650 4300
F 0 "M3" H 5894 4391 50  0000 L CNN
F 1 "NMOS_OR1" H 5894 4300 50  0000 L CNN
F 2 "" H 5650 4300 50  0001 C CNN
F 3 "" H 5650 4300 50  0001 C CNN
F 4 "M" H 6000 4100 50  0001 L CNN "Spice_Primitive"
F 5 "NMOS_OR1 l=1u w=6u" H 5894 4209 50  0000 L CNN "Spice_Model"
F 6 "Y" H 6000 4200 50  0001 L CNN "Spice_Netlist_Enabled"
	1    5650 4300
	1    0    0    -1  
$EndComp
Wire Wire Line
	6100 4300 6100 3900
Wire Wire Line
	5850 4300 6100 4300
Wire Wire Line
	5850 4450 6200 4450
Wire Wire Line
	6200 4450 6200 4050
Connection ~ 6100 3900
Wire Wire Line
	6100 3500 6200 3500
Wire Wire Line
	6200 4050 6200 3500
Connection ~ 6200 4050
Connection ~ 6200 3500
Wire Wire Line
	6200 3500 6300 3500
Wire Wire Line
	5500 4150 5850 4150
Wire Wire Line
	5100 4300 5100 3100
Wire Wire Line
	5100 3100 5350 3100
Wire Wire Line
	5100 4300 5650 4300
Connection ~ 5350 3100
Wire Wire Line
	5350 3100 5650 3100
Wire Wire Line
	5700 2850 5500 2850
Wire Wire Line
	5500 2850 5500 4150
Connection ~ 5700 2850
$EndSCHEMATC
