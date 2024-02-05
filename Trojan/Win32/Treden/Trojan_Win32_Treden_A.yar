
rule Trojan_Win32_Treden_A{
	meta:
		description = "Trojan:Win32/Treden.A,SIGNATURE_TYPE_PEHSTR,34 00 32 00 08 00 00 0a 00 "
		
	strings :
		$a_01_0 = {40 00 2a 00 5c 00 41 00 44 00 3a 00 5c 00 41 00 70 00 70 00 6c 00 65 00 5c 00 56 00 42 00 } //0a 00 
		$a_01_1 = {43 00 3a 00 5c 00 77 00 69 00 6e 00 64 00 6f 00 77 00 73 00 5c 00 6e 00 6f 00 74 00 65 00 70 00 61 00 64 00 2e 00 65 00 78 00 65 00 20 00 25 00 31 00 } //0a 00 
		$a_01_2 = {31 00 32 00 35 00 2e 00 36 00 37 00 2e 00 36 00 37 00 2e 00 31 00 39 00 37 00 20 00 20 00 20 00 77 00 77 00 77 00 2e 00 79 00 61 00 68 00 6f 00 6f 00 2e 00 63 00 6f 00 6d 00 } //0a 00 
		$a_01_3 = {59 00 6f 00 75 00 20 00 77 00 69 00 6c 00 6c 00 20 00 64 00 65 00 61 00 64 00 20 00 6e 00 65 00 78 00 74 00 20 00 6d 00 6f 00 6e 00 74 00 68 00 21 00 } //0a 00 
		$a_01_4 = {54 72 65 6e 64 65 72 64 69 61 } //01 00 
		$a_01_5 = {68 00 6f 00 73 00 74 00 73 00 } //01 00 
		$a_01_6 = {5c 00 64 00 72 00 69 00 76 00 65 00 72 00 73 00 5c 00 65 00 74 00 63 00 } //01 00 
		$a_01_7 = {65 00 78 00 70 00 6c 00 6f 00 72 00 65 00 2e 00 65 00 78 00 65 00 } //00 00 
	condition:
		any of ($a_*)
 
}