
rule TrojanDropper_O97M_Donoff_F_MSR{
	meta:
		description = "TrojanDropper:O97M/Donoff.F!MSR,SIGNATURE_TYPE_MACROHSTR_EXT,03 00 03 00 05 00 00 01 00 "
		
	strings :
		$a_00_0 = {43 72 65 61 74 65 4f 62 6a 65 63 74 28 22 4d 73 22 20 26 20 22 78 6d 6c 32 22 20 26 20 22 2e 44 4f 22 20 26 20 22 4d 44 6f 63 22 20 26 20 22 75 6d 22 20 26 20 22 65 6e 74 22 29 2e 63 72 65 61 74 65 45 6c 65 6d 65 6e 74 28 22 62 22 20 26 20 22 61 73 22 20 26 20 22 65 36 22 20 26 20 22 34 22 29 } //01 00 
		$a_00_1 = {22 62 69 22 20 26 20 22 6e 2e 62 61 22 20 26 20 22 73 65 36 22 20 26 20 22 34 22 } //01 00 
		$a_00_2 = {22 25 6c 6f 22 20 26 20 22 63 61 22 20 26 20 22 6c 61 22 20 26 20 22 70 70 64 61 22 20 26 20 22 74 61 25 22 } //01 00 
		$a_00_3 = {22 5c 61 73 22 20 26 20 22 73 65 6d 62 22 20 26 20 22 6c 79 5c 74 6d 70 5c 4e 56 43 22 20 26 20 22 41 35 52 22 20 26 20 22 44 52 5c 22 } //01 00 
		$a_02_4 = {67 65 74 45 6e 76 28 90 05 24 0b 22 20 26 25 6c 6f 63 70 64 61 74 90 00 } //00 00 
		$a_00_5 = {5d 04 } //00 00 
	condition:
		any of ($a_*)
 
}