
rule Trojan_Win32_Savit_A{
	meta:
		description = "Trojan:Win32/Savit.A,SIGNATURE_TYPE_PEHSTR_EXT,05 00 05 00 06 00 00 01 00 "
		
	strings :
		$a_01_0 = {56 69 73 74 61 44 4c 4c 50 72 6f 20 52 55 4e 4e 49 4e 47 00 } //01 00 
		$a_01_1 = {77 73 32 68 65 6c 70 2e 50 4e 46 00 } //01 00 
		$a_01_2 = {69 70 73 65 63 73 74 61 70 2e 64 61 74 00 } //01 00 
		$a_01_3 = {49 45 43 68 65 63 6b 2e 65 78 65 00 } //01 00 
		$a_01_4 = {2d 74 20 22 25 73 22 00 } //01 00 
		$a_03_5 = {55 66 53 65 41 67 6e 74 2e 65 78 65 90 01 04 50 63 53 63 6e 53 72 76 2e 65 78 65 90 00 } //00 00 
	condition:
		any of ($a_*)
 
}