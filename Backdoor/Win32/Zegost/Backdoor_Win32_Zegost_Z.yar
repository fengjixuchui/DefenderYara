
rule Backdoor_Win32_Zegost_Z{
	meta:
		description = "Backdoor:Win32/Zegost.Z,SIGNATURE_TYPE_PEHSTR_EXT,02 00 02 00 04 00 00 01 00 "
		
	strings :
		$a_03_0 = {6a 02 6a 00 68 00 fc ff ff 56 ff 15 90 01 04 68 00 04 00 00 e8 90 01 04 83 c4 04 8b f8 8d 44 24 08 6a 00 50 68 00 04 00 00 57 56 ff 15 90 00 } //01 00 
		$a_01_1 = {6a 7c 57 ff d5 8b f0 83 c4 08 85 f6 0f 84 } //01 00 
		$a_03_2 = {c6 44 24 04 53 c6 44 24 05 70 c6 44 24 06 69 c6 44 24 07 64 8b 54 24 04 8d 8e 90 01 04 89 86 90 01 04 c6 44 24 08 65 c6 44 24 09 72 90 00 } //01 00 
		$a_03_3 = {7e 3b b9 00 08 00 00 33 c0 8d bc 24 90 01 04 50 f3 ab 8b 83 90 01 04 8d 94 24 90 01 04 68 00 20 00 00 52 50 ff d5 85 c0 7e 2b 90 00 } //00 00 
	condition:
		any of ($a_*)
 
}