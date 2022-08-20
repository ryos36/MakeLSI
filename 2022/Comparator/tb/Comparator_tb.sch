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
$Sheet
S 4500 2400 1800 1700
U 62FA4A25
F0 "Sheet62FA4A24" 50
F1 "Comparator.sch" 50
F2 "VDD" I L 4500 2500 50 
F3 "VSS" I L 4500 3800 50 
F4 "VP" I L 4500 2700 50 
F5 "VM" I L 4500 3000 50 
F6 "VO" O R 6300 3150 50 
$EndSheet
$Comp
L Simulation_SPICE:VDC V2
U 1 1 62FA5CD6
P 2900 3250
F 0 "V2" H 3030 3341 50  0000 L CNN
F 1 "VDC" H 3030 3250 50  0000 L CNN
F 2 "" H 2900 3250 50  0001 C CNN
F 3 "~" H 2900 3250 50  0001 C CNN
F 4 "Y" H 2900 3250 50  0001 L CNN "Spice_Netlist_Enabled"
F 5 "V" H 2900 3250 50  0001 L CNN "Spice_Primitive"
F 6 "dc 2.25" H 3030 3159 50  0000 L CNN "Spice_Model"
	1    2900 3250
	1    0    0    -1  
$EndComp
$Comp
L 0_OR1Symbols:0 #GND01
U 1 1 62FA611F
P 3550 4050
F 0 "#GND01" H 3550 3950 50  0001 C CNN
F 1 "0" H 3550 4139 50  0000 R TNN
F 2 "" H 3700 4050 50  0001 C CNN
F 3 "" H 3700 4050 50  0001 C CNN
	1    3550 4050
	1    0    0    -1  
$EndComp
$Comp
L Simulation_SPICE:VDC V1
U 1 1 62FA9F93
P 2350 3250
F 0 "V1" H 2480 3341 50  0000 L CNN
F 1 "VDC" H 2480 3250 50  0000 L CNN
F 2 "" H 2350 3250 50  0001 C CNN
F 3 "~" H 2350 3250 50  0001 C CNN
F 4 "Y" H 2350 3250 50  0001 L CNN "Spice_Netlist_Enabled"
F 5 "V" H 2350 3250 50  0001 L CNN "Spice_Primitive"
F 6 "dc 5" H 2480 3159 50  0000 L CNN "Spice_Model"
	1    2350 3250
	1    0    0    -1  
$EndComp
Wire Wire Line
	4500 3800 3550 3800
Wire Wire Line
	2350 3800 2350 3450
Wire Wire Line
	2900 3450 2900 3800
Connection ~ 2900 3800
Wire Wire Line
	2900 3800 2350 3800
Wire Wire Line
	3550 3450 3550 3800
Connection ~ 3550 3800
Wire Wire Line
	3550 3800 2900 3800
Wire Wire Line
	3550 3800 3550 4050
Wire Wire Line
	2350 3050 2350 2500
Wire Wire Line
	2350 2500 4500 2500
Wire Wire Line
	2900 3050 2900 2700
Wire Wire Line
	2900 2700 4500 2700
Wire Wire Line
	3550 3050 3550 3000
Wire Wire Line
	3550 3000 4500 3000
Text Notes 3050 1850 0    50   ~ 0
.include /home/ryos/Project/MakeLSI/MakeLSI2022/Comparator_tb/16PTS/mos_PTS06.lib
Text Notes 3050 1950 0    50   ~ 0
.tran 1ns 2000ns 0s 1000ns
$Comp
L Simulation_SPICE:VPWL V3
U 1 1 62FB1F3E
P 3550 3250
F 0 "V3" H 3680 3341 50  0000 L CNN
F 1 "VPWL" H 3680 3250 50  0000 L CNN
F 2 "" H 3550 3250 50  0001 C CNN
F 3 "~" H 3550 3250 50  0001 C CNN
F 4 "Y" H 3550 3250 50  0001 L CNN "Spice_Netlist_Enabled"
F 5 "V" H 3550 3250 50  0001 L CNN "Spice_Primitive"
F 6 "pwl(0 0 1000n 5 2000n 0)" H 3680 3159 50  0000 L CNN "Spice_Model"
	1    3550 3250
	1    0    0    -1  
$EndComp
$EndSCHEMATC
