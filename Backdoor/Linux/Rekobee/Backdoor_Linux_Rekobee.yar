
rule Backdoor_Linux_Rekobee{
	meta:
		description = "Backdoor:Linux/Rekobee,SIGNATURE_TYPE_ELFHSTR_EXT,05 00 05 00 05 00 00 04 00 "
		
	strings :
		$a_03_0 = {c6 00 2f c6 40 04 2f c6 40 01 62 90 03 04 07 c6 40 05 73 48 8d 70 05 c6 06 73 90 02 05 c6 40 02 69 c6 40 06 68 90 02 03 c6 40 03 6e c6 40 07 00 90 02 17 e8 90 00 } //01 00 
		$a_03_1 = {be 14 54 00 00 90 1a 31 01 be e8 90 00 } //01 00 
		$a_03_2 = {68 14 54 00 00 90 02 31 e8 90 00 } //01 00 
		$a_03_3 = {c7 44 24 04 14 54 00 00 90 02 31 e8 90 00 } //04 00 
		$a_01_4 = {c6 00 48 c6 40 05 49 c6 40 01 49 c6 40 06 4c c6 40 02 53 c6 40 07 45 c6 40 03 54 c6 40 08 3d c6 40 04 46 c6 40 09 00 } //00 00 
	condition:
		any of ($a_*)
 
}