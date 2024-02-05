
rule Trojan_Win32_Crasher{
	meta:
		description = "Trojan:Win32/Crasher,SIGNATURE_TYPE_PEHSTR_EXT,09 00 09 00 09 00 00 01 00 "
		
	strings :
		$a_01_0 = {5c 00 74 00 72 00 61 00 73 00 68 00 5c 00 56 00 42 00 5c 00 42 00 75 00 73 00 5f 00 64 00 65 00 73 00 74 00 5c 00 62 00 75 00 73 00 5f 00 64 00 65 00 73 00 32 00 2e 00 76 00 62 00 70 00 } //01 00 
		$a_01_1 = {63 00 3a 00 5c 00 61 00 5f 00 61 00 5f 00 61 00 } //01 00 
		$a_01_2 = {64 00 3a 00 5c 00 61 00 5f 00 61 00 5f 00 61 00 } //01 00 
		$a_01_3 = {45 00 3a 00 5c 00 61 00 5f 00 61 00 5f 00 61 00 } //01 00 
		$a_01_4 = {46 00 3a 00 5c 00 61 00 5f 00 61 00 5f 00 61 00 } //01 00 
		$a_01_5 = {67 00 3a 00 5c 00 61 00 5f 00 61 00 5f 00 61 00 } //01 00 
		$a_01_6 = {4f 00 3a 00 5c 00 61 00 5f 00 61 00 5f 00 61 00 } //01 00 
		$a_01_7 = {4b 00 3a 00 5c 00 61 00 5f 00 61 00 5f 00 61 00 } //01 00 
		$a_01_8 = {30 00 31 00 30 00 31 00 30 00 31 00 30 00 30 00 31 00 30 00 30 00 30 00 } //00 00 
	condition:
		any of ($a_*)
 
}