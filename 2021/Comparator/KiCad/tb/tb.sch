EESchema Schematic File Version 4
EELAYER 30 0
EELAYER END
$Descr A4 11693 8268
encoding utf-8
Sheet 1 2
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
L Simulation_SPICE:VDC V3
U 1 1 61315494
P 2800 3800
F 0 "V3" H 2930 3891 50  0000 L CNN
F 1 "VDC" H 2930 3800 50  0000 L CNN
F 2 "" H 2800 3800 50  0001 C CNN
F 3 "~" H 2800 3800 50  0001 C CNN
F 4 "Y" H 2800 3800 50  0001 L CNN "Spice_Netlist_Enabled"
F 5 "V" H 2800 3800 50  0001 L CNN "Spice_Primitive"
F 6 "dc 5" H 2930 3709 50  0000 L CNN "Spice_Model"
	1    2800 3800
	1    0    0    -1  
$EndComp
$Comp
L OR1Symbols:0 #GND01
U 1 1 6131635C
P 3250 4650
F 0 "#GND01" H 3250 4550 50  0001 C CNN
F 1 "0" H 3250 4739 50  0000 C CNN
F 2 "" H 3400 4650 50  0001 C CNN
F 3 "" H 3400 4650 50  0001 C CNN
	1    3250 4650
	1    0    0    -1  
$EndComp
Wire Wire Line
	2800 4150 2800 4000
Wire Wire Line
	2800 4150 1900 4150
Wire Wire Line
	1900 4150 1900 4050
Connection ~ 2800 4150
Wire Wire Line
	1900 4150 950  4150
Wire Wire Line
	950  4150 950  4050
Connection ~ 1900 4150
Wire Wire Line
	3250 4650 3250 4150
Wire Wire Line
	3250 4150 2800 4150
Wire Wire Line
	3450 3600 3450 3850
Wire Wire Line
	2800 3600 3450 3600
$Comp
L Simulation_SPICE:VDC V1
U 1 1 61314C20
P 950 3850
F 0 "V1" H 1080 3941 50  0000 L CNN
F 1 "VDC" H 1080 3850 50  0000 L CNN
F 2 "" H 950 3850 50  0001 C CNN
F 3 "~" H 950 3850 50  0001 C CNN
F 4 "Y" H 950 3850 50  0001 L CNN "Spice_Netlist_Enabled"
F 5 "V" H 950 3850 50  0001 L CNN "Spice_Primitive"
F 6 "dc 2.5" H 1080 3759 50  0000 L CNN "Spice_Model"
	1    950  3850
	1    0    0    -1  
$EndComp
Wire Wire Line
	950  3650 950  3050
Text Notes 4400 5200 2    50   ~ 0
.include C:\cygwin64\home\ryos\Project\MakeLSI\Comparator\tb\16PTS\mos_PTS06.lib
Text Notes 2300 5350 2    50   ~ 0
.tran 1ns 10000ns 0s 1000ns
$Comp
L Simulation_SPICE:VPWL V2
U 1 1 61323A98
P 1900 3850
F 0 "V2" H 2030 3941 50  0000 L CNN
F 1 "VPWL" H 2030 3850 50  0000 L CNN
F 2 "" H 1900 3850 50  0001 C CNN
F 3 "~" H 1900 3850 50  0001 C CNN
F 4 "Y" H 1900 3850 50  0001 L CNN "Spice_Netlist_Enabled"
F 5 "V" H 1900 3850 50  0001 L CNN "Spice_Primitive"
F 6 "pwl(0 0 10000n 5)" H 2030 3759 50  0000 L CNN "Spice_Model"
	1    1900 3850
	1    0    0    -1  
$EndComp
Wire Wire Line
	1900 3650 1900 3350
Connection ~ 3250 4150
$Sheet
S 3950 3100 1950 950 
U 6130C8BC
F0 "Sheet6130C8BB" 50
F1 "../Comparator4tb.sch" 50
F2 "VP" I L 3950 3250 50 
F3 "VM" I L 3950 3550 50 
F4 "VDD" I L 3950 3800 50 
F5 "VSS" I L 3950 3950 50 
F6 "VO" O R 5900 3450 50 
$EndSheet
Wire Wire Line
	3800 3050 3800 3250
Wire Wire Line
	3800 3250 3950 3250
Wire Wire Line
	950  3050 3800 3050
Wire Wire Line
	3750 3350 3750 3550
Wire Wire Line
	3750 3550 3950 3550
Wire Wire Line
	1900 3350 3750 3350
Wire Wire Line
	3750 3850 3750 3800
Wire Wire Line
	3750 3800 3950 3800
Wire Wire Line
	3450 3850 3750 3850
Wire Wire Line
	3850 4150 3850 3950
Wire Wire Line
	3850 3950 3950 3950
Wire Wire Line
	3250 4150 3850 4150
$EndSCHEMATC
