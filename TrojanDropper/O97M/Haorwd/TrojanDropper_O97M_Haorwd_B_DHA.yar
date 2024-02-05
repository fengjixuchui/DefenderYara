
rule TrojanDropper_O97M_Haorwd_B_DHA{
	meta:
		description = "TrojanDropper:O97M/Haorwd.B!DHA,SIGNATURE_TYPE_MACROHSTR_EXT,05 00 05 00 05 00 00 01 00 "
		
	strings :
		$a_03_0 = {3d 20 45 6e 76 69 72 6f 6e 28 22 54 90 02 06 65 90 02 06 6d 90 02 06 70 22 29 20 26 20 22 5c 22 90 00 } //01 00 
		$a_03_1 = {53 68 65 6c 6c 20 22 90 02 04 2e 62 61 74 22 2c 20 76 62 48 69 64 65 90 00 } //01 00 
		$a_03_2 = {53 68 65 6c 6c 20 45 6e 76 69 72 6f 6e 28 53 74 72 43 6f 6e 76 28 44 65 63 6f 64 65 42 61 73 65 36 34 28 90 02 10 29 2c 20 76 62 55 6e 69 63 6f 64 65 29 29 20 26 20 53 74 72 43 6f 6e 76 28 44 65 63 6f 64 65 42 61 73 65 36 34 28 22 90 02 10 22 29 2c 20 76 62 55 6e 69 63 6f 64 65 29 2c 20 76 62 48 69 64 65 90 00 } //02 00 
		$a_03_3 = {2e 43 72 65 61 74 65 54 65 78 74 46 69 6c 65 28 90 02 10 20 26 20 22 36 66 73 64 46 66 61 2e 63 6f 6d 22 2c 20 54 72 75 65 29 90 00 } //02 00 
		$a_03_4 = {4f 70 65 6e 20 90 02 10 20 26 20 22 36 66 73 64 46 66 61 2e 63 6f 6d 22 20 46 6f 72 20 4f 75 74 70 75 74 20 41 73 20 23 31 90 00 } //00 00 
	condition:
		any of ($a_*)
 
}