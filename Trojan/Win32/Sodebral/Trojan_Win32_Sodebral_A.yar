
rule Trojan_Win32_Sodebral_A{
	meta:
		description = "Trojan:Win32/Sodebral.A,SIGNATURE_TYPE_PEHSTR_EXT,02 00 02 00 28 00 00 01 00 "
		
	strings :
		$a_01_0 = {30 00 33 00 33 00 35 00 45 00 39 00 34 00 43 00 43 00 31 00 35 00 37 00 45 00 38 00 36 00 44 00 46 00 38 00 35 00 36 00 44 00 35 00 34 00 42 00 45 00 42 00 31 00 43 00 43 00 42 00 37 00 38 00 42 00 34 00 31 00 31 00 34 00 34 00 38 00 46 00 34 00 33 00 42 00 46 00 30 00 41 00 35 00 43 00 46 00 38 00 35 00 46 00 45 00 35 00 36 00 42 00 41 00 30 00 44 00 35 00 32 00 41 00 45 00 46 00 30 00 } //01 00 
		$a_01_1 = {33 00 35 00 45 00 32 00 35 00 33 00 45 00 43 00 31 00 32 00 32 00 38 00 32 00 46 00 43 00 36 00 34 00 42 00 43 00 46 00 37 00 41 00 41 00 42 00 42 00 31 00 35 00 37 00 45 00 33 00 37 00 34 00 39 00 43 00 44 00 37 00 31 00 46 00 34 00 43 00 30 00 42 00 37 00 31 00 39 00 43 00 43 00 34 00 32 00 43 00 42 00 34 00 33 00 42 00 41 00 35 00 38 00 46 00 44 00 32 00 34 00 34 00 45 00 35 00 34 00 } //01 00 
		$a_01_2 = {34 00 37 00 43 00 39 00 37 00 43 00 42 00 45 00 35 00 36 00 45 00 42 00 30 00 35 00 30 00 31 00 31 00 34 00 33 00 31 00 45 00 41 00 35 00 30 00 45 00 36 00 31 00 39 00 43 00 45 00 37 00 44 00 41 00 46 00 32 00 41 00 41 00 33 00 32 00 46 00 32 00 33 00 35 00 46 00 45 00 42 00 37 00 45 00 44 00 41 00 37 00 44 00 43 00 37 00 30 00 39 00 30 00 32 00 37 00 33 00 38 00 39 00 38 00 38 00 39 00 } //01 00 
		$a_01_3 = {37 00 30 00 41 00 39 00 39 00 39 00 41 00 41 00 41 00 44 00 34 00 34 00 43 00 33 00 35 00 31 00 44 00 31 00 34 00 36 00 46 00 34 00 35 00 36 00 43 00 36 00 34 00 41 00 44 00 43 00 37 00 33 00 39 00 44 00 44 00 36 00 31 00 38 00 34 00 33 00 33 00 32 00 35 00 45 00 38 00 46 00 46 00 37 00 37 00 46 00 45 00 31 00 30 00 36 00 35 00 30 00 46 00 34 00 37 00 43 00 41 00 46 00 37 00 31 00 44 00 } //01 00 
		$a_01_4 = {37 00 37 00 42 00 39 00 36 00 43 00 43 00 45 00 34 00 36 00 44 00 42 00 37 00 35 00 46 00 31 00 30 00 33 00 32 00 30 00 31 00 42 00 30 00 30 00 33 00 36 00 43 00 41 00 37 00 38 00 41 00 34 00 34 00 37 00 38 00 33 00 44 00 41 00 37 00 38 00 37 00 43 00 46 00 36 00 34 00 33 00 39 00 35 00 43 00 31 00 30 00 36 00 34 00 45 00 46 00 33 00 33 00 37 00 34 00 43 00 41 00 30 00 36 00 30 00 42 00 } //01 00 
		$a_01_5 = {38 00 35 00 38 00 42 00 42 00 46 00 37 00 41 00 39 00 33 00 41 00 36 00 42 00 42 00 42 00 42 00 34 00 39 00 45 00 36 00 32 00 34 00 31 00 39 00 44 00 44 00 31 00 32 00 43 00 31 00 37 00 32 00 42 00 41 00 31 00 46 00 42 00 36 00 31 00 43 00 44 00 30 00 30 00 44 00 35 00 35 00 45 00 37 00 37 00 34 00 44 00 34 00 37 00 46 00 43 00 30 00 37 00 41 00 38 00 42 00 36 00 30 00 41 00 31 00 37 00 } //01 00 
		$a_01_6 = {38 00 43 00 38 00 32 00 42 00 34 00 37 00 31 00 45 00 34 00 37 00 38 00 38 00 39 00 38 00 44 00 39 00 38 00 42 00 35 00 37 00 35 00 41 00 41 00 34 00 42 00 46 00 44 00 33 00 35 00 45 00 37 00 30 00 34 00 34 00 36 00 39 00 46 00 32 00 33 00 44 00 37 00 30 00 41 00 35 00 30 00 39 00 41 00 43 00 36 00 30 00 31 00 34 00 42 00 38 00 43 00 38 00 46 00 45 00 34 00 33 00 42 00 44 00 45 00 33 00 } //01 00 
		$a_01_7 = {38 00 45 00 38 00 42 00 42 00 42 00 37 00 37 00 39 00 38 00 41 00 45 00 41 00 39 00 42 00 43 00 34 00 35 00 43 00 39 00 37 00 30 00 44 00 31 00 34 00 41 00 43 00 46 00 35 00 41 00 45 00 45 00 36 00 31 00 39 00 32 00 44 00 35 00 30 00 35 00 46 00 34 00 31 00 42 00 34 00 41 00 41 00 41 00 43 00 31 00 32 00 45 00 42 00 32 00 33 00 44 00 45 00 37 00 30 00 42 00 33 00 43 00 46 00 44 00 32 00 } //01 00 
		$a_01_8 = {39 00 33 00 38 00 43 00 42 00 41 00 37 00 34 00 39 00 42 00 42 00 33 00 42 00 32 00 34 00 32 00 43 00 30 00 37 00 35 00 41 00 35 00 38 00 36 00 39 00 36 00 42 00 42 00 34 00 45 00 45 00 32 00 36 00 44 00 38 00 36 00 45 00 39 00 37 00 31 00 36 00 30 00 38 00 43 00 46 00 39 00 31 00 41 00 35 00 31 00 39 00 46 00 43 00 31 00 32 00 43 00 30 00 38 00 36 00 42 00 44 00 43 00 35 00 43 00 43 00 } //01 00 
		$a_01_9 = {43 00 37 00 37 00 31 00 41 00 31 00 39 00 32 00 42 00 35 00 34 00 43 00 43 00 42 00 35 00 39 00 44 00 39 00 35 00 45 00 43 00 43 00 37 00 45 00 39 00 45 00 41 00 33 00 42 00 37 00 34 00 38 00 43 00 38 00 33 00 41 00 42 00 44 00 32 00 44 00 32 00 43 00 35 00 30 00 42 00 44 00 32 00 36 00 34 00 44 00 39 00 33 00 44 00 35 00 30 00 30 00 32 00 34 00 34 00 46 00 43 00 30 00 36 00 30 00 43 00 } //01 00 
		$a_01_10 = {46 00 39 00 33 00 43 00 45 00 45 00 34 00 42 00 43 00 32 00 35 00 36 00 45 00 42 00 36 00 41 00 46 00 42 00 32 00 39 00 45 00 32 00 35 00 38 00 39 00 45 00 35 00 31 00 38 00 36 00 42 00 36 00 37 00 35 00 44 00 31 00 30 00 42 00 34 00 38 00 30 00 43 00 34 00 36 00 38 00 43 00 44 00 45 00 37 00 42 00 44 00 44 00 36 00 36 00 45 00 42 00 32 00 46 00 34 00 34 00 44 00 38 00 33 00 38 00 43 00 } //01 00 
		$a_01_11 = {30 00 30 00 33 00 36 00 45 00 38 00 34 00 44 00 43 00 30 00 35 00 34 00 45 00 44 00 36 00 38 00 46 00 44 00 32 00 42 00 45 00 30 00 34 00 36 00 46 00 30 00 30 00 37 00 33 00 43 00 45 00 38 00 30 00 33 00 34 00 37 00 39 00 45 00 32 00 34 00 32 00 38 00 35 00 41 00 45 00 30 00 36 00 42 00 46 00 37 00 35 00 30 00 46 00 34 00 35 00 41 00 44 00 31 00 32 00 33 00 46 00 39 00 31 00 46 00 46 00 } //01 00 
		$a_01_12 = {36 00 31 00 44 00 37 00 34 00 41 00 45 00 43 00 36 00 30 00 46 00 35 00 30 00 42 00 30 00 42 00 31 00 41 00 33 00 37 00 46 00 34 00 32 00 41 00 43 00 43 00 36 00 33 00 39 00 30 00 34 00 33 00 45 00 39 00 36 00 43 00 45 00 31 00 36 00 31 00 31 00 35 00 34 00 39 00 39 00 31 00 32 00 34 00 42 00 30 00 31 00 37 00 42 00 44 00 30 00 33 00 33 00 38 00 34 00 44 00 41 00 33 00 36 00 35 00 42 00 } //01 00 
		$a_01_13 = {39 00 32 00 38 00 46 00 42 00 46 00 37 00 33 00 39 00 34 00 41 00 41 00 41 00 44 00 34 00 37 00 43 00 42 00 34 00 30 00 45 00 41 00 35 00 43 00 43 00 30 00 34 00 30 00 43 00 41 00 35 00 44 00 46 00 33 00 30 00 46 00 35 00 30 00 39 00 42 00 35 00 41 00 38 00 36 00 46 00 37 00 31 00 38 00 35 00 46 00 38 00 31 00 45 00 37 00 37 00 36 00 44 00 45 00 30 00 32 00 33 00 35 00 46 00 34 00 35 00 } //01 00 
		$a_01_14 = {39 00 35 00 38 00 32 00 42 00 30 00 38 00 33 00 38 00 34 00 39 00 41 00 39 00 44 00 41 00 38 00 41 00 41 00 36 00 46 00 44 00 42 00 34 00 44 00 43 00 46 00 37 00 31 00 38 00 35 00 39 00 42 00 42 00 35 00 43 00 45 00 31 00 30 00 35 00 42 00 31 00 41 00 34 00 36 00 42 00 37 00 44 00 46 00 31 00 37 00 35 00 39 00 39 00 46 00 43 00 39 00 36 00 41 00 38 00 39 00 42 00 41 00 37 00 45 00 41 00 } //01 00 
		$a_01_15 = {37 00 36 00 41 00 33 00 39 00 33 00 41 00 43 00 35 00 32 00 45 00 38 00 36 00 43 00 46 00 39 00 37 00 38 00 42 00 43 00 36 00 44 00 44 00 45 00 37 00 44 00 39 00 43 00 41 00 45 00 34 00 31 00 43 00 46 00 32 00 33 00 34 00 34 00 39 00 37 00 34 00 36 00 41 00 41 00 44 00 42 00 30 00 34 00 36 00 42 00 46 00 35 00 37 00 41 00 45 00 34 00 34 00 46 00 39 00 32 00 38 00 35 00 41 00 34 00 38 00 } //01 00 
		$a_01_16 = {38 00 31 00 42 00 45 00 36 00 46 00 43 00 30 00 34 00 36 00 44 00 43 00 35 00 38 00 45 00 44 00 37 00 34 00 42 00 38 00 36 00 31 00 43 00 32 00 35 00 39 00 46 00 38 00 30 00 44 00 32 00 33 00 32 00 44 00 34 00 36 00 41 00 39 00 33 00 31 00 32 00 30 00 34 00 43 00 42 00 39 00 44 00 39 00 31 00 31 00 35 00 46 00 38 00 31 00 45 00 46 00 35 00 34 00 39 00 46 00 39 00 30 00 39 00 31 00 42 00 } //01 00 
		$a_01_17 = {30 00 43 00 30 00 32 00 33 00 34 00 44 00 36 00 36 00 45 00 41 00 33 00 35 00 44 00 46 00 39 00 32 00 42 00 46 00 38 00 33 00 32 00 31 00 37 00 44 00 46 00 31 00 30 00 43 00 37 00 37 00 34 00 42 00 38 00 31 00 44 00 42 00 30 00 31 00 32 00 43 00 36 00 33 00 42 00 38 00 37 00 44 00 31 00 30 00 45 00 34 00 41 00 46 00 32 00 35 00 34 00 44 00 37 00 32 00 44 00 } //01 00 
		$a_01_18 = {30 00 45 00 30 00 30 00 33 00 32 00 44 00 34 00 36 00 38 00 39 00 44 00 35 00 33 00 46 00 33 00 32 00 31 00 45 00 45 00 32 00 43 00 31 00 31 00 32 00 35 00 44 00 42 00 30 00 42 00 33 00 39 00 46 00 33 00 35 00 36 00 38 00 46 00 33 00 33 00 32 00 37 00 35 00 42 00 45 00 37 00 37 00 32 00 45 00 45 00 36 00 39 00 44 00 33 00 37 00 35 00 42 00 36 00 43 00 46 00 } //01 00 
		$a_01_19 = {31 00 45 00 31 00 30 00 30 00 32 00 30 00 34 00 33 00 39 00 45 00 43 00 32 00 32 00 43 00 34 00 37 00 30 00 42 00 44 00 37 00 44 00 41 00 32 00 35 00 33 00 45 00 35 00 31 00 44 00 43 00 46 00 31 00 43 00 42 00 45 00 31 00 36 00 42 00 44 00 42 00 32 00 32 00 46 00 42 00 42 00 30 00 45 00 34 00 41 00 38 00 45 00 33 00 35 00 39 00 41 00 39 00 31 00 45 00 32 00 } //01 00 
		$a_01_20 = {39 00 31 00 38 00 37 00 42 00 42 00 35 00 45 00 39 00 37 00 34 00 44 00 38 00 32 00 41 00 34 00 35 00 30 00 44 00 44 00 35 00 44 00 43 00 32 00 37 00 33 00 38 00 35 00 42 00 32 00 36 00 31 00 38 00 42 00 43 00 46 00 30 00 35 00 34 00 45 00 30 00 32 00 37 00 43 00 43 00 36 00 31 00 31 00 34 00 44 00 38 00 42 00 33 00 30 00 39 00 31 00 38 00 41 00 46 00 42 00 } //01 00 
		$a_01_21 = {39 00 32 00 38 00 34 00 42 00 36 00 35 00 33 00 45 00 41 00 31 00 45 00 44 00 33 00 37 00 32 00 41 00 33 00 36 00 31 00 44 00 41 00 34 00 30 00 46 00 36 00 30 00 39 00 33 00 45 00 45 00 45 00 33 00 44 00 39 00 39 00 33 00 33 00 39 00 30 00 34 00 34 00 42 00 45 00 30 00 42 00 35 00 44 00 46 00 39 00 35 00 45 00 45 00 36 00 36 00 38 00 41 00 33 00 44 00 30 00 } //01 00 
		$a_01_22 = {39 00 36 00 39 00 38 00 38 00 41 00 38 00 43 00 41 00 31 00 35 00 37 00 38 00 38 00 41 00 45 00 36 00 36 00 41 00 33 00 36 00 37 00 44 00 43 00 31 00 39 00 32 00 46 00 45 00 34 00 31 00 37 00 44 00 35 00 37 00 30 00 45 00 35 00 36 00 44 00 36 00 31 00 39 00 44 00 32 00 34 00 42 00 36 00 32 00 33 00 41 00 35 00 32 00 45 00 39 00 33 00 38 00 38 00 46 00 44 00 } //01 00 
		$a_01_23 = {43 00 35 00 34 00 38 00 46 00 41 00 31 00 46 00 44 00 36 00 30 00 41 00 43 00 37 00 36 00 45 00 41 00 37 00 36 00 35 00 41 00 36 00 39 00 42 00 35 00 41 00 45 00 45 00 32 00 34 00 44 00 30 00 31 00 42 00 42 00 46 00 31 00 35 00 42 00 45 00 42 00 33 00 32 00 45 00 42 00 34 00 30 00 37 00 35 00 33 00 46 00 35 00 35 00 45 00 45 00 33 00 32 00 37 00 35 00 43 00 } //01 00 
		$a_01_24 = {46 00 38 00 33 00 46 00 46 00 33 00 31 00 36 00 32 00 46 00 45 00 32 00 31 00 43 00 33 00 41 00 45 00 42 00 33 00 39 00 46 00 32 00 32 00 38 00 43 00 45 00 36 00 31 00 39 00 36 00 34 00 35 00 45 00 37 00 36 00 32 00 46 00 42 00 34 00 37 00 30 00 42 00 34 00 37 00 39 00 33 00 32 00 36 00 42 00 32 00 31 00 35 00 42 00 46 00 30 00 31 00 33 00 41 00 34 00 42 00 } //01 00 
		$a_01_25 = {37 00 35 00 42 00 42 00 36 00 45 00 41 00 38 00 35 00 43 00 39 00 31 00 34 00 46 00 46 00 37 00 32 00 44 00 46 00 41 00 33 00 30 00 31 00 35 00 32 00 31 00 44 00 37 00 30 00 46 00 33 00 44 00 45 00 46 00 36 00 41 00 45 00 33 00 36 00 46 00 36 00 33 00 39 00 46 00 32 00 41 00 42 00 43 00 31 00 39 00 42 00 46 00 30 00 34 00 34 00 35 00 43 00 36 00 33 00 43 00 } //01 00 
		$a_01_26 = {41 00 35 00 36 00 38 00 44 00 41 00 33 00 46 00 46 00 36 00 32 00 41 00 45 00 37 00 30 00 45 00 43 00 37 00 34 00 35 00 43 00 36 00 37 00 43 00 42 00 41 00 34 00 44 00 46 00 41 00 32 00 39 00 43 00 33 00 30 00 36 00 35 00 46 00 45 00 34 00 45 00 39 00 36 00 34 00 45 00 45 00 37 00 39 00 45 00 35 00 36 00 32 00 45 00 41 00 36 00 43 00 41 00 46 00 43 00 34 00 } //01 00 
		$a_01_27 = {32 00 42 00 45 00 44 00 32 00 30 00 46 00 41 00 33 00 32 00 45 00 37 00 31 00 39 00 33 00 44 00 45 00 38 00 32 00 36 00 45 00 35 00 35 00 42 00 39 00 42 00 41 00 44 00 36 00 35 00 39 00 37 00 35 00 34 00 46 00 36 00 36 00 45 00 44 00 35 00 39 00 41 00 44 00 34 00 31 00 44 00 41 00 46 00 32 00 43 00 41 00 43 00 31 00 37 00 42 00 38 00 37 00 32 00 38 00 33 00 } //01 00 
		$a_01_28 = {30 43 31 45 46 33 31 44 44 45 35 38 43 31 42 37 35 41 41 38 36 44 42 38 37 44 42 41 41 44 35 44 39 30 33 35 35 30 38 35 35 46 41 42 33 31 38 30 43 46 43 39 33 45 39 46 36 39 45 42 32 } //01 00 
		$a_01_29 = {31 39 45 42 30 31 30 30 32 33 31 43 30 44 37 42 42 35 34 35 44 42 36 32 38 39 42 44 37 33 41 34 34 42 38 42 43 41 30 44 32 42 42 46 31 30 41 37 32 34 41 44 32 33 41 37 42 32 32 30 45 } //01 00 
		$a_01_30 = {32 30 45 32 33 36 44 46 30 33 37 43 45 44 35 41 38 41 39 36 36 41 46 30 33 42 46 43 36 38 39 37 35 45 45 34 36 41 46 42 43 36 44 31 31 36 41 31 33 37 35 32 38 37 43 42 39 44 32 37 46 } //01 00 
		$a_01_31 = {34 44 44 46 33 35 44 43 31 45 31 39 30 45 37 41 41 41 37 37 38 41 44 30 31 42 44 43 34 38 46 37 33 45 38 34 43 42 31 39 32 33 37 34 46 34 34 30 39 35 46 34 36 34 45 34 37 33 44 30 32 } //01 00 
		$a_01_32 = {34 45 44 43 33 30 44 31 31 31 30 41 37 46 45 39 31 42 45 38 33 37 43 34 36 41 39 38 42 39 36 41 43 32 43 30 31 30 42 35 34 42 38 42 44 39 36 33 41 39 33 42 39 45 46 46 35 35 42 33 38 } //01 00 
		$a_01_33 = {38 36 38 34 39 39 37 42 42 38 42 33 41 34 39 34 34 46 41 42 34 35 31 42 44 31 31 35 30 30 32 46 43 37 30 45 42 31 32 33 33 44 34 45 39 32 32 36 41 42 45 45 36 32 45 36 37 31 44 32 32 } //01 00 
		$a_01_34 = {42 38 34 42 44 45 32 36 43 35 34 31 33 36 32 32 44 45 33 45 44 32 36 39 39 33 41 42 35 46 39 30 35 43 38 38 43 37 31 42 32 38 41 39 32 38 41 38 32 30 41 34 45 31 37 37 38 31 44 38 36 } //01 00 
		$a_01_35 = {45 41 33 39 43 43 33 34 46 37 37 33 45 34 35 33 38 44 36 44 38 33 44 39 31 31 32 35 44 38 30 45 32 32 41 30 33 43 39 43 42 42 30 45 41 32 33 32 39 45 32 32 42 37 31 38 32 31 42 32 34 } //01 00 
		$a_01_36 = {41 00 46 00 37 00 32 00 38 00 37 00 38 00 45 00 41 00 44 00 41 00 36 00 39 00 33 00 38 00 35 00 42 00 42 00 35 00 42 00 42 00 35 00 38 00 42 00 42 00 31 00 37 00 32 00 41 00 35 00 35 00 39 00 39 00 34 00 43 00 30 00 30 00 36 00 34 00 32 00 31 00 43 00 42 00 34 00 33 00 38 00 38 00 30 00 44 00 44 00 36 00 36 00 41 00 37 00 33 00 39 00 43 00 46 00 30 00 42 00 35 00 } //01 00 
		$a_01_37 = {38 00 36 00 38 00 34 00 39 00 39 00 37 00 42 00 42 00 38 00 42 00 33 00 41 00 34 00 39 00 34 00 34 00 42 00 41 00 41 00 34 00 35 00 31 00 42 00 32 00 32 00 44 00 30 00 30 00 31 00 32 00 37 00 43 00 33 00 30 00 35 00 35 00 45 00 38 00 38 00 35 00 45 00 46 00 37 00 37 00 45 00 44 00 35 00 30 00 34 00 35 00 45 00 45 00 33 00 36 00 34 00 41 00 45 00 31 00 37 00 31 00 } //01 00 
		$a_01_38 = {37 00 41 00 38 00 38 00 39 00 44 00 36 00 37 00 38 00 34 00 46 00 46 00 36 00 39 00 44 00 46 00 31 00 30 00 45 00 46 00 30 00 30 00 34 00 36 00 46 00 35 00 30 00 38 00 33 00 34 00 45 00 46 00 30 00 45 00 34 00 34 00 38 00 30 00 44 00 41 00 45 00 43 00 37 00 31 00 43 00 33 00 44 00 35 00 37 00 43 00 44 00 36 00 37 00 38 00 39 00 35 00 36 00 42 00 45 00 36 00 33 00 } //01 00 
		$a_01_39 = {6a 00 61 00 75 00 53 00 41 00 46 00 47 00 47 00 68 00 67 00 68 00 5f 00 53 00 45 00 43 00 5f 00 35 00 33 00 37 00 } //00 00 
	condition:
		any of ($a_*)
 
}