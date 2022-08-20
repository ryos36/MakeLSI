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
L 0_OR1Symbols:PMOS_OR1 M1
U 1 1 63028865
P 1100 2000
AR Path="/632C252E/62FBC077/63028865" Ref="M1"  Part="1" 
AR Path="/6330DAC6/63028865" Ref="M1"  Part="1" 
AR Path="/62FBC077/63028865" Ref="M1"  Part="1" 
AR Path="/630748E5/62FBC077/63028865" Ref="M1"  Part="1" 
AR Path="/63028865" Ref="M1"  Part="1" 
F 0 "M1" H 1344 2091 50  0000 L CNN
F 1 "PMOS_OR1" H 1344 2000 50  0000 L CNN
F 2 "" H 1100 2000 50  0001 C CNN
F 3 "" H 1100 2000 50  0001 C CNN
F 4 "M" H 1450 1800 50  0001 L CNN "Spice_Primitive"
F 5 "PMOS_OR1 l=1u w=2u" H 1344 1909 50  0000 L CNN "Spice_Model"
F 6 "Y" H 1450 1900 50  0001 L CNN "Spice_Netlist_Enabled"
	1    1100 2000
	1    0    0    -1  
$EndComp
Wire Wire Line
	1300 2150 1300 2200
Wire Wire Line
	1100 2000 1000 2000
Wire Wire Line
	1000 2000 1000 2200
Wire Wire Line
	1000 2200 1300 2200
$Comp
L 0_OR1Symbols:NMOS_OR1 M5
U 1 1 63028884
P 3350 3850
AR Path="/632C252E/62FBC077/63028884" Ref="M5"  Part="1" 
AR Path="/6330DAC6/63028884" Ref="M5"  Part="1" 
AR Path="/62FBC077/63028884" Ref="M5"  Part="1" 
AR Path="/630748E5/62FBC077/63028884" Ref="M5"  Part="1" 
AR Path="/63028884" Ref="M5"  Part="1" 
F 0 "M5" H 3594 3941 50  0000 L CNN
F 1 "NMOS_OR1" H 3594 3850 50  0000 L CNN
F 2 "" H 3350 3850 50  0001 C CNN
F 3 "" H 3350 3850 50  0001 C CNN
F 4 "M" H 3700 3650 50  0001 L CNN "Spice_Primitive"
F 5 "NMOS_OR1 l=1u w=2u" H 3594 3759 50  0000 L CNN "Spice_Model"
F 6 "Y" H 3700 3750 50  0001 L CNN "Spice_Netlist_Enabled"
	1    3350 3850
	1    0    0    -1  
$EndComp
Connection ~ 1300 2200
Wire Wire Line
	1300 4600 3200 4600
Wire Wire Line
	3550 3850 3700 3850
Wire Wire Line
	1300 2000 1500 2000
Text HLabel 2950 1150 0    50   Input ~ 0
VDD
Text HLabel 3000 4800 0    50   Input ~ 0
VSS
Wire Wire Line
	2950 1150 3300 1150
Wire Wire Line
	3300 1150 3300 1400
Connection ~ 3300 1400
Wire Wire Line
	3300 1400 4000 1400
Wire Wire Line
	3000 4800 3300 4800
Wire Wire Line
	3300 4800 3300 4600
Connection ~ 3300 4600
$Comp
L 0_OR1Symbols:NMOS_OR1 M2
U 1 1 630288B8
P 1500 3850
AR Path="/632C252E/62FBC077/630288B8" Ref="M2"  Part="1" 
AR Path="/6330DAC6/630288B8" Ref="M2"  Part="1" 
AR Path="/62FBC077/630288B8" Ref="M2"  Part="1" 
AR Path="/630748E5/62FBC077/630288B8" Ref="M2"  Part="1" 
AR Path="/630288B8" Ref="M2"  Part="1" 
F 0 "M2" H 1744 3941 50  0000 L CNN
F 1 "NMOS_OR1" H 1150 3750 50  0000 L CNN
F 2 "" H 1500 3850 50  0001 C CNN
F 3 "" H 1500 3850 50  0001 C CNN
F 4 "M" H 1850 3650 50  0001 L CNN "Spice_Primitive"
F 5 "NMOS_OR1 l=1u w=2u" H 700 3650 50  0000 L CNN "Spice_Model"
F 6 "Y" H 1850 3750 50  0001 L CNN "Spice_Netlist_Enabled"
	1    1500 3850
	-1   0    0    -1  
$EndComp
Wire Wire Line
	4000 2000 4150 2000
$Comp
L 0_OR1Symbols:PMOS_OR1 M6
U 1 1 630288DC
P 4350 2000
AR Path="/632C252E/62FBC077/630288DC" Ref="M6"  Part="1" 
AR Path="/6330DAC6/630288DC" Ref="M6"  Part="1" 
AR Path="/62FBC077/630288DC" Ref="M6"  Part="1" 
AR Path="/630748E5/62FBC077/630288DC" Ref="M6"  Part="1" 
AR Path="/630288DC" Ref="M6"  Part="1" 
F 0 "M6" H 4594 2091 50  0000 L CNN
F 1 "PMOS_OR1" H 4594 2000 50  0000 L CNN
F 2 "" H 4350 2000 50  0001 C CNN
F 3 "" H 4350 2000 50  0001 C CNN
F 4 "M" H 4700 1800 50  0001 L CNN "Spice_Primitive"
F 5 "PMOS_OR1 l=1u w=2u" H 4594 1909 50  0000 L CNN "Spice_Model"
F 6 "Y" H 4700 1900 50  0001 L CNN "Spice_Netlist_Enabled"
	1    4350 2000
	-1   0    0    -1  
$EndComp
Wire Wire Line
	4350 2000 4500 2000
Wire Wire Line
	1300 3850 950  3850
$Comp
L 0_OR1Symbols:NMOS_OR1 M3
U 1 1 630288CA
P 2400 3400
AR Path="/632C252E/62FBC077/630288CA" Ref="M3"  Part="1" 
AR Path="/6330DAC6/630288CA" Ref="M3"  Part="1" 
AR Path="/62FBC077/630288CA" Ref="M3"  Part="1" 
AR Path="/630748E5/62FBC077/630288CA" Ref="M3"  Part="1" 
AR Path="/630288CA" Ref="M3"  Part="1" 
F 0 "M3" H 2644 3491 50  0000 L CNN
F 1 "NMOS_OR1" H 2644 3400 50  0000 L CNN
F 2 "" H 2400 3400 50  0001 C CNN
F 3 "" H 2400 3400 50  0001 C CNN
F 4 "M" H 2750 3200 50  0001 L CNN "Spice_Primitive"
F 5 "NMOS_OR1 l=1u w=2u" H 2644 3309 50  0000 L CNN "Spice_Model"
F 6 "Y" H 2750 3300 50  0001 L CNN "Spice_Netlist_Enabled"
	1    2400 3400
	1    0    0    -1  
$EndComp
Wire Wire Line
	4850 3400 4350 3400
$Comp
L 0_OR1Symbols:NMOS_OR1 M7
U 1 1 6302887B
P 4350 3400
AR Path="/632C252E/62FBC077/6302887B" Ref="M7"  Part="1" 
AR Path="/6330DAC6/6302887B" Ref="M7"  Part="1" 
AR Path="/62FBC077/6302887B" Ref="M7"  Part="1" 
AR Path="/630748E5/62FBC077/6302887B" Ref="M7"  Part="1" 
AR Path="/6302887B" Ref="M7"  Part="1" 
F 0 "M7" H 4306 3491 50  0000 R CNN
F 1 "NMOS_OR1" H 4306 3400 50  0000 R CNN
F 2 "" H 4350 3400 50  0001 C CNN
F 3 "" H 4350 3400 50  0001 C CNN
F 4 "M" H 4700 3200 50  0001 L CNN "Spice_Primitive"
F 5 "NMOS_OR1 l=1u w=2u" H 4306 3309 50  0000 R CNN "Spice_Model"
F 6 "Y" H 4700 3300 50  0001 L CNN "Spice_Netlist_Enabled"
	1    4350 3400
	-1   0    0    -1  
$EndComp
Text HLabel 4850 3400 2    50   Input ~ 0
VP
Wire Wire Line
	2600 3550 3550 3550
Wire Wire Line
	2600 3400 3200 3400
Wire Wire Line
	3550 3550 3550 3700
Connection ~ 3550 3550
Wire Wire Line
	3550 3550 4150 3550
Wire Wire Line
	2800 2500 2950 2500
Wire Wire Line
	2600 2500 2400 2500
$Comp
L 0_OR1Symbols:PMOS_OR1 M4
U 1 1 63028872
P 2800 2500
AR Path="/632C252E/62FBC077/63028872" Ref="M4"  Part="1" 
AR Path="/6330DAC6/63028872" Ref="M4"  Part="1" 
AR Path="/62FBC077/63028872" Ref="M4"  Part="1" 
AR Path="/630748E5/62FBC077/63028872" Ref="M4"  Part="1" 
AR Path="/63028872" Ref="M4"  Part="1" 
F 0 "M4" H 2756 2591 50  0000 R CNN
F 1 "PMOS_OR1" H 2756 2500 50  0000 R CNN
F 2 "" H 2800 2500 50  0001 C CNN
F 3 "" H 2800 2500 50  0001 C CNN
F 4 "M" H 3150 2300 50  0001 L CNN "Spice_Primitive"
F 5 "PMOS_OR1 l=1u w=2u" H 2756 2409 50  0000 R CNN "Spice_Model"
F 6 "Y" H 3150 2400 50  0001 L CNN "Spice_Netlist_Enabled"
	1    2800 2500
	-1   0    0    -1  
$EndComp
Connection ~ 2600 1400
Wire Wire Line
	2600 1400 3300 1400
Wire Wire Line
	2600 2650 2600 2800
Wire Wire Line
	2950 2500 2950 2800
Wire Wire Line
	2950 2800 2600 2800
Connection ~ 2950 2500
Connection ~ 2600 2800
Wire Wire Line
	2600 2800 2600 3250
Wire Wire Line
	4150 2150 4150 2300
Wire Wire Line
	4150 2300 4500 2300
Wire Wire Line
	4500 2300 4500 2000
Connection ~ 4150 2300
Wire Wire Line
	4150 2300 4150 3250
Wire Wire Line
	2950 2500 5100 2500
Connection ~ 4500 2000
Text HLabel 5250 2000 2    50   Output ~ 0
Vout1
Wire Wire Line
	4500 2000 5100 2000
Text HLabel 5250 2500 2    50   Output ~ 0
Vout2
Connection ~ 1750 3850
Wire Wire Line
	1750 3850 3350 3850
Wire Wire Line
	1750 3850 1500 3850
Connection ~ 1300 3400
Wire Wire Line
	1300 3400 1300 3700
Wire Wire Line
	1300 2200 1300 3400
Wire Wire Line
	1750 3400 1750 3850
Wire Wire Line
	1300 3400 1750 3400
Text HLabel 2200 3400 0    50   Input ~ 0
VM
Wire Wire Line
	1300 1400 1300 1850
Wire Wire Line
	1500 2000 1500 1400
Wire Wire Line
	1300 1400 1500 1400
Connection ~ 1500 1400
Wire Wire Line
	1500 1400 2400 1400
Wire Wire Line
	2600 1400 2600 2350
Connection ~ 2400 1400
Wire Wire Line
	2400 1400 2600 1400
Wire Wire Line
	2400 1400 2400 2500
Wire Wire Line
	4150 1400 4150 1850
Wire Wire Line
	4000 2000 4000 1400
Connection ~ 4000 1400
Wire Wire Line
	4000 1400 4150 1400
Wire Wire Line
	1300 4600 950  4600
Connection ~ 1300 4600
Wire Wire Line
	950  3850 950  4600
Wire Wire Line
	1300 4000 1300 4600
Wire Wire Line
	3300 4600 3550 4600
Connection ~ 3550 4600
Wire Wire Line
	3550 4600 3700 4600
Wire Wire Line
	3700 3850 3700 4600
Wire Wire Line
	3550 4000 3550 4600
Wire Wire Line
	3200 3400 3200 4600
Connection ~ 3200 3400
Wire Wire Line
	3200 3400 4150 3400
Connection ~ 3200 4600
Wire Wire Line
	3200 4600 3300 4600
Wire Wire Line
	2400 3400 2200 3400
Wire Wire Line
	8150 4750 8650 4750
Wire Wire Line
	7650 3450 7450 3450
Wire Wire Line
	7450 3450 7450 3050
Wire Wire Line
	7450 3050 7850 3050
Wire Wire Line
	8900 1550 8900 1850
Wire Wire Line
	8850 4750 9900 4750
Connection ~ 9600 2550
Wire Wire Line
	9600 2550 10950 2550
Wire Wire Line
	10400 3450 10500 3450
Connection ~ 8850 4750
Connection ~ 8650 3750
Connection ~ 9600 3750
Wire Wire Line
	9600 3750 8650 3750
Wire Wire Line
	9600 2550 9600 3050
Wire Wire Line
	8900 2550 9600 2550
Connection ~ 9600 3050
Wire Wire Line
	9600 3050 10200 3050
Wire Wire Line
	9300 3050 9600 3050
Wire Wire Line
	9300 3300 9300 3050
Wire Wire Line
	8850 3300 9300 3300
Wire Wire Line
	8850 3450 8850 3300
Connection ~ 8450 3050
Wire Wire Line
	9200 3150 9200 3450
Wire Wire Line
	8850 3150 9200 3150
Wire Wire Line
	8850 3050 8850 3150
Wire Wire Line
	8450 3050 8850 3050
Wire Wire Line
	9900 3450 10200 3450
Connection ~ 9900 3450
Wire Wire Line
	9900 3450 9900 4750
Wire Wire Line
	9600 3750 10200 3750
Wire Wire Line
	9600 3450 9900 3450
Wire Wire Line
	10200 3600 10200 3750
$Comp
L 0_OR1Symbols:NMOS_OR1 M14
U 1 1 6312D469
P 10400 3450
F 0 "M14" H 10644 3541 50  0000 L CNN
F 1 "NMOS_OR1" H 10644 3450 50  0000 L CNN
F 2 "" H 10400 3450 50  0001 C CNN
F 3 "" H 10400 3450 50  0001 C CNN
F 4 "M" H 10750 3250 50  0001 L CNN "Spice_Primitive"
F 5 "NMOS_OR1 l=1u w=2u" H 10644 3359 50  0000 L CNN "Spice_Model"
F 6 "Y" H 10750 3350 50  0001 L CNN "Spice_Netlist_Enabled"
	1    10400 3450
	-1   0    0    -1  
$EndComp
Wire Wire Line
	9600 3050 9600 3300
Wire Wire Line
	9400 3450 9200 3450
Wire Wire Line
	9600 3600 9600 3750
$Comp
L 0_OR1Symbols:NMOS_OR1 M13
U 1 1 6312D475
P 9400 3450
F 0 "M13" H 9644 3541 50  0000 L CNN
F 1 "NMOS_OR1" H 9644 3450 50  0000 L CNN
F 2 "" H 9400 3450 50  0001 C CNN
F 3 "" H 9400 3450 50  0001 C CNN
F 4 "M" H 9750 3250 50  0001 L CNN "Spice_Primitive"
F 5 "NMOS_OR1 l=1u w=2u" H 9644 3359 50  0000 L CNN "Spice_Model"
F 6 "Y" H 9750 3350 50  0001 L CNN "Spice_Netlist_Enabled"
	1    9400 3450
	1    0    0    -1  
$EndComp
Connection ~ 8450 3750
Wire Wire Line
	8650 3750 8650 3950
Wire Wire Line
	8650 3750 8450 3750
Connection ~ 8650 4750
Wire Wire Line
	8650 4350 8650 4750
Wire Wire Line
	8850 4750 8650 4750
Wire Wire Line
	8850 4200 8850 4750
Wire Wire Line
	8650 3950 8650 4050
Connection ~ 8650 3950
Wire Wire Line
	8250 3950 8650 3950
Wire Wire Line
	8250 4200 8250 3950
Wire Wire Line
	8150 3450 8450 3450
Connection ~ 8150 3450
Wire Wire Line
	7850 3750 8450 3750
Wire Wire Line
	7850 3450 8150 3450
Wire Wire Line
	8450 4200 8250 4200
Wire Wire Line
	8650 4200 8850 4200
$Comp
L 0_OR1Symbols:NMOS_OR1 M10
U 1 1 6312D490
P 8450 4200
F 0 "M10" H 8694 4291 50  0000 L CNN
F 1 "NMOS_OR1" H 8694 4200 50  0000 L CNN
F 2 "" H 8450 4200 50  0001 C CNN
F 3 "" H 8450 4200 50  0001 C CNN
F 4 "M" H 8800 4000 50  0001 L CNN "Spice_Primitive"
F 5 "NMOS_OR1 l=1u w=2u" H 8694 4109 50  0000 L CNN "Spice_Model"
F 6 "Y" H 8800 4100 50  0001 L CNN "Spice_Netlist_Enabled"
	1    8450 4200
	1    0    0    -1  
$EndComp
Wire Wire Line
	7850 3050 8450 3050
Wire Wire Line
	8450 3050 8450 3300
Wire Wire Line
	8650 3450 8850 3450
Wire Wire Line
	8450 3600 8450 3750
$Comp
L 0_OR1Symbols:NMOS_OR1 M11
U 1 1 6312D49D
P 8650 3450
F 0 "M11" H 8894 3541 50  0000 L CNN
F 1 "NMOS_OR1" H 8894 3450 50  0000 L CNN
F 2 "" H 8650 3450 50  0001 C CNN
F 3 "" H 8650 3450 50  0001 C CNN
F 4 "M" H 9000 3250 50  0001 L CNN "Spice_Primitive"
F 5 "NMOS_OR1 l=1u w=2u" H 8894 3359 50  0000 L CNN "Spice_Model"
F 6 "Y" H 9000 3350 50  0001 L CNN "Spice_Netlist_Enabled"
	1    8650 3450
	-1   0    0    -1  
$EndComp
Wire Wire Line
	7850 3050 7850 3300
Connection ~ 7850 3050
Connection ~ 8900 1850
Wire Wire Line
	7850 1550 8900 1550
Wire Wire Line
	8900 1850 8900 2000
Wire Wire Line
	9150 2150 8900 2150
Wire Wire Line
	9150 1850 9150 2150
Wire Wire Line
	8900 1850 9150 1850
Wire Wire Line
	8900 2300 8900 2550
$Comp
L 0_OR1Symbols:PMOS_OR1 M12
U 1 1 6312D4B0
P 8700 2150
F 0 "M12" H 8944 2241 50  0000 L CNN
F 1 "PMOS_OR1" H 8944 2150 50  0000 L CNN
F 2 "" H 8700 2150 50  0001 C CNN
F 3 "" H 8700 2150 50  0001 C CNN
F 4 "M" H 9050 1950 50  0001 L CNN "Spice_Primitive"
F 5 "PMOS_OR1 l=1u w=2u" H 8944 2059 50  0000 L CNN "Spice_Model"
F 6 "Y" H 9050 2050 50  0001 L CNN "Spice_Netlist_Enabled"
	1    8700 2150
	1    0    0    -1  
$EndComp
Wire Wire Line
	7850 3600 7850 3750
Wire Wire Line
	7850 2250 7850 2400
Connection ~ 7850 2250
Wire Wire Line
	8100 2550 7850 2550
Wire Wire Line
	8100 2250 8100 2550
Wire Wire Line
	7850 2250 8100 2250
Wire Wire Line
	7850 1550 7850 2250
$Comp
L 0_OR1Symbols:NMOS_OR1 M9
U 1 1 6312D4C0
P 7650 3450
F 0 "M9" H 7894 3541 50  0000 L CNN
F 1 "NMOS_OR1" H 7894 3450 50  0000 L CNN
F 2 "" H 7650 3450 50  0001 C CNN
F 3 "" H 7650 3450 50  0001 C CNN
F 4 "M" H 8000 3250 50  0001 L CNN "Spice_Primitive"
F 5 "NMOS_OR1 l=1u w=2u" H 7894 3359 50  0000 L CNN "Spice_Model"
F 6 "Y" H 8000 3350 50  0001 L CNN "Spice_Netlist_Enabled"
	1    7650 3450
	1    0    0    -1  
$EndComp
$Comp
L 0_OR1Symbols:PMOS_OR1 M8
U 1 1 6312D4C9
P 7650 2550
F 0 "M8" H 7894 2641 50  0000 L CNN
F 1 "PMOS_OR1" H 7894 2550 50  0000 L CNN
F 2 "" H 7650 2550 50  0001 C CNN
F 3 "" H 7650 2550 50  0001 C CNN
F 4 "M" H 8000 2350 50  0001 L CNN "Spice_Primitive"
F 5 "PMOS_OR1 l=1u w=2u" H 7894 2459 50  0000 L CNN "Spice_Model"
F 6 "Y" H 8000 2450 50  0001 L CNN "Spice_Netlist_Enabled"
	1    7650 2550
	1    0    0    -1  
$EndComp
Wire Wire Line
	6600 2150 6750 2150
Wire Wire Line
	6600 2550 6750 2550
Text HLabel 6600 2150 0    50   Input ~ 0
Vin1
Text HLabel 6600 2550 0    50   Input ~ 0
Vin2
Connection ~ 7850 1550
Connection ~ 8150 4750
Wire Wire Line
	8150 3450 8150 4750
Wire Wire Line
	10200 3050 10200 3300
Wire Wire Line
	10200 3050 10500 3050
Wire Wire Line
	10500 3050 10500 3450
Connection ~ 10200 3050
Wire Wire Line
	7850 2700 7850 2800
Text HLabel 10950 2550 2    50   Output ~ 0
Vout3
Text HLabel 10950 2800 2    50   Output ~ 0
Vout4
Wire Wire Line
	7850 2800 10950 2800
Connection ~ 7850 2800
Wire Wire Line
	7850 2800 7850 3050
Wire Wire Line
	4150 1400 6450 1400
Wire Wire Line
	6450 1400 6450 1550
Wire Wire Line
	6450 1550 7850 1550
Connection ~ 4150 1400
Wire Wire Line
	3700 4600 6250 4600
Wire Wire Line
	6250 4600 6250 4750
Wire Wire Line
	6250 4750 8150 4750
Connection ~ 3700 4600
Wire Wire Line
	5100 2000 5100 2350
Wire Wire Line
	5100 2350 6750 2350
Wire Wire Line
	6750 2350 6750 2150
Connection ~ 5100 2000
Wire Wire Line
	5100 2000 5250 2000
Connection ~ 6750 2150
Wire Wire Line
	6750 2150 8700 2150
Wire Wire Line
	5100 2500 5100 2850
Wire Wire Line
	5100 2850 6750 2850
Wire Wire Line
	6750 2850 6750 2550
Connection ~ 5100 2500
Wire Wire Line
	5100 2500 5250 2500
Connection ~ 6750 2550
Wire Wire Line
	6750 2550 7650 2550
$EndSCHEMATC