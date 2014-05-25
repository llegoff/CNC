EESchema Schematic File Version 2
LIBS:power
LIBS:device
LIBS:transistors
LIBS:conn
LIBS:linear
LIBS:regul
LIBS:74xx
LIBS:cmos4000
LIBS:adc-dac
LIBS:memory
LIBS:xilinx
LIBS:special
LIBS:microcontrollers
LIBS:dsp
LIBS:microchip
LIBS:analog_switches
LIBS:motorola
LIBS:texas
LIBS:intel
LIBS:audio
LIBS:interface
LIBS:digital-audio
LIBS:philips
LIBS:display
LIBS:cypress
LIBS:siliconi
LIBS:opto
LIBS:atmel
LIBS:contrib
LIBS:valves
LIBS:_LaurentPerso
LIBS:smoothie_sw_encoder-cache
EELAYER 27 0
EELAYER END
$Descr A4 11693 8268
encoding utf-8
Sheet 1 1
Title ""
Date "23 may 2014"
Rev ""
Comp ""
Comment1 ""
Comment2 ""
Comment3 ""
Comment4 ""
$EndDescr
$Comp
L ENCODEUR_ROTATIF S1
U 1 1 537F2546
P 4250 3200
F 0 "S1" H 4300 3550 50  0000 C CNN
F 1 "ENCODEUR_ROTATIF" H 4400 2850 50  0000 C CNN
F 2 "~" H 4250 3200 60  0000 C CNN
F 3 "~" H 4250 3200 60  0000 C CNN
	1    4250 3200
	1    0    0    -1  
$EndComp
$Comp
L SW_PUSH SW1
U 1 1 537F2557
P 6200 3200
F 0 "SW1" H 6350 3310 50  0000 C CNN
F 1 "SW_PUSH" H 6200 3120 50  0000 C CNN
F 2 "~" H 6200 3200 60  0000 C CNN
F 3 "~" H 6200 3200 60  0000 C CNN
	1    6200 3200
	-1   0    0    1   
$EndComp
$Comp
L SPEAKER SP1
U 1 1 537F256C
P 5400 3150
F 0 "SP1" H 5300 3400 70  0000 C CNN
F 1 "SPEAKER" H 5300 2900 70  0000 C CNN
F 2 "~" H 5400 3150 60  0000 C CNN
F 3 "~" H 5400 3150 60  0000 C CNN
	1    5400 3150
	1    0    0    -1  
$EndComp
$Comp
L CONN_2 P2
U 1 1 537F2590
P 6150 1900
F 0 "P2" V 6100 1900 40  0000 C CNN
F 1 "CONN_2" V 6200 1900 40  0000 C CNN
F 2 "" H 6150 1900 60  0000 C CNN
F 3 "" H 6150 1900 60  0000 C CNN
	1    6150 1900
	0    -1   -1   0   
$EndComp
Wire Wire Line
	5900 3200 5900 2750
Wire Wire Line
	5900 2750 6050 2750
Wire Wire Line
	6050 2750 6050 2250
Wire Wire Line
	6250 2250 6250 2750
Wire Wire Line
	6250 2750 6500 2750
Wire Wire Line
	6500 2750 6500 3200
Wire Wire Line
	4050 2250 3250 2250
Wire Wire Line
	3250 2250 3250 4200
Wire Wire Line
	3250 3200 3500 3200
Wire Wire Line
	3250 4200 5100 4200
Wire Wire Line
	5100 4200 5100 3250
Connection ~ 3250 3200
Wire Wire Line
	4150 2500 4150 2650
Wire Wire Line
	3350 2450 3350 3900
Wire Wire Line
	3350 3900 4150 3900
Wire Wire Line
	4150 3900 4150 3750
Wire Wire Line
	4450 3750 4450 4200
Connection ~ 4450 4200
Wire Wire Line
	4350 2450 4350 2250
Wire Wire Line
	4350 2450 3350 2450
Wire Wire Line
	4450 2250 4450 2500
Wire Wire Line
	4450 2500 4150 2500
$Comp
L CONN_5 P1
U 1 1 537F26FF
P 4250 1850
F 0 "P1" V 4200 1850 50  0000 C CNN
F 1 "CONN_5" V 4300 1850 50  0000 C CNN
F 2 "" H 4250 1850 60  0000 C CNN
F 3 "" H 4250 1850 60  0000 C CNN
	1    4250 1850
	0    -1   -1   0   
$EndComp
Wire Wire Line
	4150 2250 4150 2400
Wire Wire Line
	4150 2400 4250 2400
Wire Wire Line
	4250 2400 4250 2550
Wire Wire Line
	4250 2550 4450 2550
Wire Wire Line
	4450 2550 4450 2650
Wire Wire Line
	4250 2250 4250 2300
Wire Wire Line
	4250 2300 5100 2300
Wire Wire Line
	5100 2300 5100 3050
$EndSCHEMATC
