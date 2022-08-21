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
S 7000 4400 1550 1300
U 612DE610
F0 "Sheet612DE60F" 50
F1 "../Inverter.sch" 50
F2 "VDD" I L 7000 4550 50 
F3 "VSS" I L 7000 5550 50 
F4 "A" I L 7000 4700 50 
F5 "X" O R 8550 5000 50 
$EndSheet
$Comp
L Simulation_SPICE:VPULSE V2
U 1 1 612DEAC1
P 6150 5250
F 0 "V2" H 6280 5341 50  0000 L CNN
F 1 "VPULSE" H 6280 5250 50  0000 L CNN
F 2 "" H 6150 5250 50  0001 C CNN
F 3 "~" H 6150 5250 50  0001 C CNN
F 4 "Y" H 6150 5250 50  0001 L CNN "Spice_Netlist_Enabled"
F 5 "V" H 6150 5250 50  0001 L CNN "Spice_Primitive"
F 6 "pulse(0 5 0 1n 1n 500n 1000n)" H 6280 5159 50  0000 L CNN "Spice_Model"
	1    6150 5250
	1    0    0    -1  
$EndComp
$Comp
L Simulation_SPICE:VDC V1
U 1 1 612DF592
P 5300 5250
F 0 "V1" H 5430 5341 50  0000 L CNN
F 1 "VDC" H 5430 5250 50  0000 L CNN
F 2 "" H 5300 5250 50  0001 C CNN
F 3 "~" H 5300 5250 50  0001 C CNN
F 4 "Y" H 5300 5250 50  0001 L CNN "Spice_Netlist_Enabled"
F 5 "V" H 5300 5250 50  0001 L CNN "Spice_Primitive"
F 6 "dc 5" H 5430 5159 50  0000 L CNN "Spice_Model"
	1    5300 5250
	1    0    0    -1  
$EndComp
$Comp
L OR1Symbols:0 #GND01
U 1 1 612DFF38
P 6150 5800
F 0 "#GND01" H 6150 5700 50  0001 C CNN
F 1 "0" H 6150 5889 50  0000 C CNN
F 2 "" H 6300 5800 50  0001 C CNN
F 3 "" H 6300 5800 50  0001 C CNN
	1    6150 5800
	1    0    0    -1  
$EndComp
Wire Wire Line
	6150 5550 6150 5450
Wire Wire Line
	6150 5550 5300 5550
Wire Wire Line
	5300 5550 5300 5450
Connection ~ 6150 5550
Wire Wire Line
	6150 5800 6150 5550
Wire Wire Line
	6150 5050 6150 4700
Wire Wire Line
	6150 4700 7000 4700
Wire Wire Line
	5300 5050 5300 4550
Wire Wire Line
	5300 4550 7000 4550
Text Notes 6100 6200 0    50   ~ 0
.include C:\cygwin64\home\ryos\Project\MakeLSI\Inverter\tb\16PTS\mos_PTS06.lib
Text Notes 6150 6300 0    50   ~ 0
.tran 1ns 2000ns 0s 1000ns
Wire Wire Line
	6150 5550 7000 5550
$EndSCHEMATC
