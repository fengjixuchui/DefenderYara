
rule Worm_Win32_VB_EB{
	meta:
		description = "Worm:Win32/VB.EB,SIGNATURE_TYPE_PEHSTR,03 00 03 00 03 00 00 01 00 "
		
	strings :
		$a_01_0 = {5f 00 4b 00 45 00 59 00 47 00 45 00 4e 00 00 00 } //01 00 
		$a_01_1 = {41 00 6e 00 74 00 69 00 56 00 69 00 72 00 20 00 47 00 75 00 61 00 72 00 64 00 3a 00 20 00 41 00 74 00 74 00 65 00 6e 00 74 00 69 00 6f 00 6e 00 2c 00 20 00 44 00 65 00 74 00 65 00 63 00 74 00 69 00 6f 00 6e 00 21 00 00 00 } //01 00 
		$a_01_2 = {73 00 70 00 72 00 65 00 61 00 64 00 62 00 79 00 6c 00 61 00 6e 00 00 00 } //00 00 
	condition:
		any of ($a_*)
 
}