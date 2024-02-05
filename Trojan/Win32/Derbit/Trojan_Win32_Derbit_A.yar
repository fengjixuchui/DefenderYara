
rule Trojan_Win32_Derbit_A{
	meta:
		description = "Trojan:Win32/Derbit.A,SIGNATURE_TYPE_PEHSTR_EXT,14 00 14 00 0d 00 00 03 00 "
		
	strings :
		$a_03_0 = {50 6a 48 e8 90 01 04 8d 84 24 90 01 04 50 6a 49 e8 90 01 04 8d 84 24 90 01 04 50 6a 4a e8 90 00 } //03 00 
		$a_03_1 = {8a 04 30 32 04 d5 90 01 04 32 04 d5 90 01 04 32 c3 43 88 04 3e 0f b7 f3 3b f1 72 db 90 09 07 00 8b 04 d5 90 00 } //05 00 
		$a_01_2 = {00 70 61 79 6c 6f 61 64 2e 64 6c 6c 00 5f 53 74 61 72 74 40 34 00 } //01 00 
		$a_01_3 = {31 38 35 2e 31 32 31 2e 31 37 37 2e 31 37 37 } //01 00 
		$a_01_4 = {31 38 35 2e 31 32 31 2e 31 37 37 2e 35 33 } //01 00 
		$a_01_5 = {34 35 2e 36 33 2e 32 35 2e 35 35 } //01 00 
		$a_01_6 = {31 31 31 2e 36 37 2e 31 36 2e 32 30 32 } //01 00 
		$a_01_7 = {31 34 32 2e 34 2e 32 30 34 2e 31 31 31 } //01 00 
		$a_01_8 = {31 34 32 2e 34 2e 32 30 35 2e 34 37 } //01 00 
		$a_01_9 = {33 31 2e 33 2e 31 33 35 2e 32 33 32 } //01 00 
		$a_01_10 = {36 32 2e 31 31 33 2e 32 30 33 2e 35 35 } //01 00 
		$a_01_11 = {33 37 2e 32 32 38 2e 31 35 31 2e 31 33 33 } //01 00 
		$a_01_12 = {31 34 34 2e 37 36 2e 31 33 33 2e 33 38 } //00 00 
		$a_00_13 = {7e 15 00 00 bc 2d 72 78 02 68 } //74 b9 
	condition:
		any of ($a_*)
 
}