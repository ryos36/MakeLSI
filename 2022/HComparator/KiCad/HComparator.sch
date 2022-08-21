EESchema Schematic File Version 4
EELAYER 30 0
EELAYER END
$Descr A4 11693 8268
encoding utf-8
Sheet 1 4
Title ""
Date ""
Rev ""
Comp ""
Comment1 ""
Comment2 ""
Comment3 ""
Comment4 ""
$EndDescr
Text HLabel 1700 1750 0    50   Input ~ 0
VDD
Text HLabel 1800 2650 0    50   Input ~ 0
VP
Text HLabel 1800 2900 0    50   Input ~ 0
VM
Wire Wire Line
	1800 2650 2550 2650
Wire Wire Line
	1800 2900 2550 2900
Text HLabel 1700 3850 0    50   Input ~ 0
VSS
Wire Wire Line
	4300 1750 4300 2350
Wire Wire Line
	4300 2350 4500 2350
Wire Wire Line
	1700 1750 2300 1750
$Sheet
S 2550 2150 1350 1350
U 62FBC077
F0 "Pre-amplifier-Stage" 50
F1 "pre-amp.sch" 50
F2 "VDD" I L 2550 2300 50 
F3 "VSS" I L 2550 3300 50 
F4 "VP" I L 2550 2650 50 
F5 "Vout1" O R 3900 2650 50 
F6 "Vout2" O R 3900 2950 50 
F7 "VM" I L 2550 2900 50 
$EndSheet
Wire Wire Line
	2300 1750 2300 2300
Wire Wire Line
	2300 2300 2550 2300
Connection ~ 2300 1750
Wire Wire Line
	2300 1750 4300 1750
Wire Wire Line
	1700 3850 2300 3850
Wire Wire Line
	2550 3300 2300 3300
Wire Wire Line
	2300 3300 2300 3850
Connection ~ 2300 3850
Wire Wire Line
	4350 3850 4350 3350
Wire Wire Line
	4350 3350 4500 3350
Wire Wire Line
	2300 3850 4350 3850
Wire Wire Line
	3900 2650 4500 2650
Wire Wire Line
	3900 2950 4500 2950
$Sheet
S 4500 2150 1300 1350
U 6319D1F0
F0 "Judgement-Stage" 50
F1 "judge.sch" 50
F2 "VDD" I L 4500 2350 50 
F3 "Vin1" I L 4500 2650 50 
F4 "Vin2" I L 4500 2950 50 
F5 "VSS" I L 4500 3350 50 
F6 "Vout1" O R 5800 2650 50 
F7 "Vout2" O R 5800 2950 50 
$EndSheet
Wire Wire Line
	5800 2650 6050 2650
Wire Wire Line
	5800 2950 6050 2950
Wire Wire Line
	4300 1750 5900 1750
Wire Wire Line
	5900 1750 5900 2300
Wire Wire Line
	5900 2300 6050 2300
Connection ~ 4300 1750
Wire Wire Line
	4350 3850 5950 3850
Wire Wire Line
	5950 3850 5950 3350
Wire Wire Line
	5950 3350 6050 3350
Connection ~ 4350 3850
$Sheet
S 6050 2150 1400 1350
U 62FB40F6
F0 "Output-Stage" 50
F1 "output.sch" 50
F2 "VDD" I L 6050 2300 50 
F3 "Vin1" I L 6050 2650 50 
F4 "Vin2" I L 6050 2950 50 
F5 "Vss" I L 6050 3350 50 
F6 "Vout" O R 7450 2650 50 
$EndSheet
Text HLabel 7750 2650 2    50   Output ~ 0
Vout
Wire Wire Line
	7450 2650 7750 2650
$EndSCHEMATC
