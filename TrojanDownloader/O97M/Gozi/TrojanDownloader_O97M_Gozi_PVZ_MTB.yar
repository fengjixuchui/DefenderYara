
rule TrojanDownloader_O97M_Gozi_PVZ_MTB{
	meta:
		description = "TrojanDownloader:O97M/Gozi.PVZ!MTB,SIGNATURE_TYPE_MACROHSTR_EXT,09 00 09 00 09 00 00 01 00 "
		
	strings :
		$a_01_0 = {50 72 69 76 61 74 65 20 53 75 62 20 43 6f 6d 6d 61 6e 64 42 75 74 74 6f 6e 31 5f 43 6c 69 63 6b 28 29 } //01 00 
		$a_01_1 = {4c 69 73 74 42 6f 78 31 2e 41 64 64 49 74 65 6d 20 28 49 6d 61 67 65 31 2e 43 6f 6e 74 72 6f 6c 54 69 70 54 65 78 74 29 } //01 00 
		$a_01_2 = {4c 69 73 74 42 6f 78 31 2e 41 64 64 49 74 65 6d 20 28 22 3a 2f 2f } //01 00 
		$a_01_3 = {2e 63 6f 6d 2f 68 65 61 64 65 72 2e 6a 70 67 22 29 } //01 00 
		$a_03_4 = {49 6e 73 74 72 75 6d 65 6e 74 61 74 69 6f 6e 55 74 69 6c 2e 90 02 20 20 3d 20 22 43 3a 5c 75 73 65 72 73 5c 50 75 62 6c 69 63 5c 22 20 2b 20 22 90 02 04 2e 6a 70 67 22 90 00 } //01 00 
		$a_03_5 = {49 6e 73 74 72 75 6d 65 6e 74 61 74 69 6f 6e 55 74 69 6c 2e 90 02 20 20 3d 20 22 68 74 74 70 22 90 00 } //01 00 
		$a_03_6 = {49 6e 73 74 72 75 6d 65 6e 74 61 74 69 6f 6e 55 74 69 6c 2e 90 02 20 20 3d 20 22 47 45 54 22 90 00 } //01 00 
		$a_01_7 = {4c 65 6e 28 22 5a 5a 5a 22 29 20 54 68 65 6e } //01 00 
		$a_03_8 = {53 68 65 6c 6c 25 20 28 90 02 20 20 2b 20 22 20 22 20 26 20 49 6e 73 74 72 75 6d 65 6e 74 61 74 69 6f 6e 55 74 69 6c 90 00 } //00 00 
	condition:
		any of ($a_*)
 
}