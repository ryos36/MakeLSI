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
S 5250 3450 1700 1600
U 630386E6
F0 "Sheet630386E5" 50
F1 "../HComparator.sch" 50
F2 "VSS" I L 5250 4700 50 
F3 "VM" I L 5250 4400 50 
F4 "VP" I L 5250 4000 50 
F5 "Vout" O R 6950 4100 50 
F6 "VDD" I L 5250 3700 50 
$EndSheet
$Comp
L Simulation_SPICE:VDC V1
U 1 1 63038993
P 2950 3750
F 0 "V1" H 3080 3841 50  0000 L CNN
F 1 "VDC" H 3080 3750 50  0000 L CNN
F 2 "" H 2950 3750 50  0001 C CNN
F 3 "~" H 2950 3750 50  0001 C CNN
F 4 "Y" H 2950 3750 50  0001 L CNN "Spice_Netlist_Enabled"
F 5 "V" H 2950 3750 50  0001 L CNN "Spice_Primitive"
F 6 "dc 5" H 3080 3659 50  0000 L CNN "Spice_Model"
	1    2950 3750
	1    0    0    -1  
$EndComp
$Comp
L Simulation_SPICE:VDC V3
U 1 1 63038D32
P 4200 4550
F 0 "V3" H 4330 4641 50  0000 L CNN
F 1 "VDC" H 4330 4550 50  0000 L CNN
F 2 "" H 4200 4550 50  0001 C CNN
F 3 "~" H 4200 4550 50  0001 C CNN
F 4 "Y" H 4200 4550 50  0001 L CNN "Spice_Netlist_Enabled"
F 5 "V" H 4200 4550 50  0001 L CNN "Spice_Primitive"
F 6 "dc 2.25" H 4330 4459 50  0000 L CNN "Spice_Model"
	1    4200 4550
	1    0    0    -1  
$EndComp
$Comp
L Simulation_SPICE:VPWL V2
U 1 1 630391E5
P 3600 4100
F 0 "V2" H 3730 4191 50  0000 L CNN
F 1 "VPWL" H 3730 4100 50  0000 L CNN
F 2 "" H 3600 4100 50  0001 C CNN
F 3 "~" H 3600 4100 50  0001 C CNN
F 4 "Y" H 3600 4100 50  0001 L CNN "Spice_Netlist_Enabled"
F 5 "V" H 3600 4100 50  0001 L CNN "Spice_Primitive"
F 6 "pwl(0 0 2000ns 5 5000ns 0)" H 3730 4009 50  0000 L CNN "Spice_Model"
	1    3600 4100
	1    0    0    -1  
$EndComp
$Comp
L 0_OR1Symbols:0 #GND01
U 1 1 630395C4
P 4800 4900
F 0 "#GND01" H 4800 4800 50  0001 C CNN
F 1 "0" H 4800 4989 50  0000 C CNN
F 2 "" H 4950 4900 50  0001 C CNN
F 3 "" H 4950 4900 50  0001 C CNN
	1    4800 4900
	1    0    0    -1  
$EndComp
Wire Wire Line
	5050 4750 5050 4700
Wire Wire Line
	5050 4700 5250 4700
Wire Wire Line
	2950 4750 2950 3950
Text Notes 2700 2750 0    50   ~ 0
.include /home/ryos/Project/MakeLSI/MakeLSI.git/2022/HComparator/KiCad/tb/16PTS/mos_PTS06.lib
Text Notes 2700 2900 0    50   ~ 0
.tran 1ns 5000ns  0ns 1000ns
Connection ~ 4200 4750
Wire Wire Line
	3600 4300 3600 4750
Wire Wire Line
	2950 4750 3600 4750
Connection ~ 3600 4750
Wire Wire Line
	3600 4750 4200 4750
Wire Wire Line
	4800 4900 4800 4750
Connection ~ 4800 4750
Wire Wire Line
	4800 4750 4200 4750
Wire Wire Line
	4800 4750 5050 4750
Wire Wire Line
	4200 4350 5050 4350
Wire Wire Line
	5050 4350 5050 4400
Wire Wire Line
	5050 4400 5250 4400
Wire Wire Line
	3600 3900 5100 3900
Wire Wire Line
	5250 4000 5100 4000
Wire Wire Line
	5100 4000 5100 3900
Wire Wire Line
	2950 3550 5150 3550
Wire Wire Line
	5150 3550 5150 3700
Wire Wire Line
	5150 3700 5250 3700
$EndSCHEMATC
