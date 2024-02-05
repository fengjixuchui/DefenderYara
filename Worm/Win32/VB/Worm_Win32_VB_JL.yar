
rule Worm_Win32_VB_JL{
	meta:
		description = "Worm:Win32/VB.JL,SIGNATURE_TYPE_PEHSTR_EXT,03 00 03 00 03 00 00 01 00 "
		
	strings :
		$a_01_0 = {61 74 74 72 69 62 20 2b 68 20 2b 73 20 2b 72 20 66 3a 5c 41 75 74 6f 72 75 6e 2e 69 6e 66 } //01 00 
		$a_03_1 = {3a 00 5c 00 53 00 65 00 72 00 76 00 69 00 63 00 65 00 2e 00 65 00 78 00 65 00 90 02 0a 3a 00 5c 00 41 00 75 00 74 00 6f 00 72 00 75 00 6e 00 2e 00 69 00 6e 00 66 00 90 02 0a 63 00 3a 00 5c 00 62 00 6f 00 6f 00 74 00 2e 00 62 00 61 00 74 00 90 00 } //01 00 
		$a_03_2 = {68 00 74 00 74 00 70 00 3a 00 2f 00 2f 00 90 02 20 2f 00 6d 00 6d 00 2f 00 30 00 33 00 2e 00 65 00 78 00 65 00 90 00 } //00 00 
	condition:
		any of ($a_*)
 
}