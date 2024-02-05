
rule Backdoor_Win32_Ixeshe_E_dha{
	meta:
		description = "Backdoor:Win32/Ixeshe.E!dha,SIGNATURE_TYPE_PEHSTR_EXT,04 00 03 00 06 00 00 01 00 "
		
	strings :
		$a_01_0 = {63 3a 5c 5c 4d 69 63 72 6f 73 6f 66 74 20 57 69 6e 64 6f 77 73 20 55 70 64 61 74 65 2e 6c 6e 6b 00 } //01 00 
		$a_01_1 = {63 00 3a 00 5c 00 5c 00 2a 00 2e 00 6c 00 6e 00 6b 00 00 00 } //01 00 
		$a_00_2 = {6a 04 5f 8a 0e 8a 56 01 46 83 6d 0c 03 46 8a 1e 46 88 5d 0a } //01 00 
		$a_02_3 = {c6 45 e4 2f 50 8d 45 e4 ff 75 08 c6 45 90 01 01 46 c6 45 90 01 01 50 c6 45 90 01 01 4b 50 8d 85 90 01 04 50 c6 45 90 01 01 25 c6 45 90 01 01 64 c6 45 90 01 01 2e c6 45 90 01 01 6a c6 45 90 01 01 73 c6 45 90 01 01 70 c6 45 90 01 01 3f c6 45 90 01 01 25 c6 45 90 01 01 73 88 5d 90 00 } //01 00 
		$a_01_4 = {35 65 37 65 38 31 30 30 00 00 00 00 25 73 00 00 25 77 73 00 25 78 00 } //01 00 
		$a_03_5 = {b9 e1 04 00 00 33 c0 8d bd 90 01 02 ff ff f3 ab 66 ab aa c6 85 90 01 02 ff ff 27 c6 85 90 01 02 ff ff 25 c6 85 90 01 02 ff ff 73 90 00 } //00 00 
	condition:
		any of ($a_*)
 
}