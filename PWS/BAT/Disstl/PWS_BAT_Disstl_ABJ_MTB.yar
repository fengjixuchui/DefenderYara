
rule PWS_BAT_Disstl_ABJ_MTB{
	meta:
		description = "PWS:BAT/Disstl.ABJ!MTB,SIGNATURE_TYPE_PEHSTR_EXT,0c 00 0c 00 07 00 00 06 00 "
		
	strings :
		$a_01_0 = {57 d5 02 28 09 02 00 00 00 fa 25 33 00 16 00 00 01 00 00 00 22 00 00 00 6a 02 00 00 04 00 00 00 cd 04 00 00 02 00 00 00 21 00 00 00 } //01 00 
		$a_01_1 = {47 65 74 52 75 6e 74 69 6d 65 44 69 72 65 63 74 6f 72 79 } //01 00 
		$a_01_2 = {47 65 74 43 6f 6d 6d 61 6e 64 4c 69 6e 65 41 72 67 73 } //01 00 
		$a_01_3 = {43 6f 6d 62 69 6e 65 } //01 00 
		$a_01_4 = {43 72 65 61 74 65 44 65 63 72 79 70 74 6f 72 } //01 00 
		$a_01_5 = {54 72 61 6e 73 66 6f 72 6d 46 69 6e 61 6c 42 6c 6f 63 6b } //01 00 
		$a_01_6 = {51 00 32 00 39 00 79 00 62 00 32 00 35 00 76 00 64 00 6d 00 6c 00 79 00 64 00 58 00 4d 00 75 00 51 00 32 00 39 00 79 00 62 00 32 00 35 00 76 00 64 00 6d 00 6c 00 79 00 64 00 58 00 4d 00 3d 00 } //00 00 
	condition:
		any of ($a_*)
 
}