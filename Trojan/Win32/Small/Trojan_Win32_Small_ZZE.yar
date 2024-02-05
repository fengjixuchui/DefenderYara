
rule Trojan_Win32_Small_ZZE{
	meta:
		description = "Trojan:Win32/Small.ZZE,SIGNATURE_TYPE_PEHSTR_EXT,05 00 05 00 05 00 00 01 00 "
		
	strings :
		$a_01_0 = {2f 61 6c 61 72 6d 2e 70 68 70 } //01 00 
		$a_01_1 = {31 31 37 2e 35 39 2e 33 39 2e 37 32 } //01 00 
		$a_01_2 = {77 62 72 6a 32 30 30 39 2e 33 33 32 32 2e 6f 72 67 } //01 00 
		$a_01_3 = {30 30 30 30 30 36 46 36 2d 42 46 45 42 46 42 46 46 2d 30 30 30 30 45 31 39 43 } //01 00 
		$a_01_4 = {d6 b1 cf fa c9 cc b5 c7 c2 bd c6 f7 00 } //00 00 
	condition:
		any of ($a_*)
 
}