EESchema Schematic File Version 4
EELAYER 30 0
EELAYER END
$Descr A4 11693 8268
encoding utf-8
Sheet 1 5
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
S 4200 3350 2400 1700
U 64228122
F0 "Sheet64228121" 50
F1 "../HComparator.sch" 50
F2 "VDD" I L 4200 3600 50 
F3 "VP" I L 4200 4000 50 
F4 "VM" I L 4200 4400 50 
F5 "VSS" I L 4200 4900 50 
F6 "Vout" O R 6600 4150 50 
F7 "TP1" O R 6600 4650 50 
F8 "TP2" O R 6600 4850 50 
$EndSheet
Wire Wire Line
	3500 3650 3500 3600
Connection ~ 3500 3600
Wire Wire Line
	3500 3600 4200 3600
Wire Wire Line
	2250 3600 3500 3600
$Comp
L power:+5V #PWR?
U 1 1 6422C58A
P 2250 3600
F 0 "#PWR?" H 2250 3450 50  0001 C CNN
F 1 "+5V" H 2265 3773 50  0000 C CNN
F 2 "" H 2250 3600 50  0001 C CNN
F 3 "" H 2250 3600 50  0001 C CNN
	1    2250 3600
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR?
U 1 1 6422CBF0
P 2250 4900
F 0 "#PWR?" H 2250 4650 50  0001 C CNN
F 1 "GND" H 2255 4727 50  0000 C CNN
F 2 "" H 2250 4900 50  0001 C CNN
F 3 "" H 2250 4900 50  0001 C CNN
	1    2250 4900
	1    0    0    -1  
$EndComp
$Comp
L power:+2V5 #PWR?
U 1 1 6422E332
P 2650 4400
F 0 "#PWR?" H 2650 4250 50  0001 C CNN
F 1 "+2V5" H 2665 4573 50  0000 C CNN
F 2 "" H 2650 4400 50  0001 C CNN
F 3 "" H 2650 4400 50  0001 C CNN
	1    2650 4400
	1    0    0    -1  
$EndComp
Wire Wire Line
	6600 4150 7300 4150
Text GLabel 7300 4150 2    50   Output ~ 0
Vout
Text GLabel 7300 4650 2    50   Output ~ 0
TP1
Text GLabel 7300 4850 2    50   Output ~ 0
TP2
Wire Wire Line
	6600 4650 7300 4650
Wire Wire Line
	6600 4850 7300 4850
$Comp
L Device:R 2.2k
U 1 1 64235202
P 3050 4400
F 0 "2.2k" V 3150 4350 50  0000 C CNN
F 1 "R" V 3150 4500 50  0000 C CNN
F 2 "" V 2980 4400 50  0001 C CNN
F 3 "~" H 3050 4400 50  0001 C CNN
	1    3050 4400
	0    -1   -1   0   
$EndComp
Wire Wire Line
	2900 4400 2650 4400
Wire Wire Line
	3200 4400 4200 4400
Wire Wire Line
	2250 4900 3500 4900
$Comp
L Device:R 2.2k?
U 1 1 6423951C
P 3500 4600
F 0 "2.2k?" H 3570 4646 50  0000 L CNN
F 1 "R" H 3570 4555 50  0000 L CNN
F 2 "" V 3430 4600 50  0001 C CNN
F 3 "~" H 3500 4600 50  0001 C CNN
	1    3500 4600
	1    0    0    -1  
$EndComp
$Comp
L Device:R 2.2k?
U 1 1 642393DC
P 3500 4200
F 0 "2.2k?" H 3570 4246 50  0000 L CNN
F 1 "R" H 3570 4155 50  0000 L CNN
F 2 "" V 3430 4200 50  0001 C CNN
F 3 "~" H 3500 4200 50  0001 C CNN
	1    3500 4200
	1    0    0    -1  
$EndComp
$Comp
L Device:R 2.2k
U 1 1 642289DC
P 3500 3800
F 0 "2.2k" H 3570 3846 50  0000 L CNN
F 1 "R" H 3570 3755 50  0000 L CNN
F 2 "" V 3430 3800 50  0001 C CNN
F 3 "~" H 3500 3800 50  0001 C CNN
	1    3500 3800
	1    0    0    -1  
$EndComp
Wire Wire Line
	3500 4350 3500 4450
Wire Wire Line
	3500 4750 3500 4900
Connection ~ 3500 4900
Wire Wire Line
	3500 4900 4200 4900
Wire Wire Line
	3950 4000 4200 4000
Wire Wire Line
	3500 3950 3500 4050
Wire Wire Line
	3500 4350 3950 4350
Wire Wire Line
	3950 4350 3950 4000
Connection ~ 3500 4350
$EndSCHEMATC
