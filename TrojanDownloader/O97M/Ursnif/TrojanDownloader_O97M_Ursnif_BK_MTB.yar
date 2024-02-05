
rule TrojanDownloader_O97M_Ursnif_BK_MTB{
	meta:
		description = "TrojanDownloader:O97M/Ursnif.BK!MTB,SIGNATURE_TYPE_MACROHSTR_EXT,06 00 06 00 06 00 00 01 00 "
		
	strings :
		$a_03_0 = {50 72 69 76 61 74 65 20 44 65 63 6c 61 72 65 20 46 75 6e 63 74 69 6f 6e 20 55 52 4c 44 6f 77 6e 6c 6f 61 64 54 6f 46 69 6c 65 20 4c 69 62 20 22 75 72 6c 6d 6f 6e 22 20 5f 90 0c 02 00 41 6c 69 61 73 20 22 55 52 4c 44 6f 77 6e 6c 6f 61 64 54 6f 46 69 6c 65 41 22 20 28 20 5f 90 00 } //01 00 
		$a_03_1 = {55 52 4c 44 6f 77 6e 6c 6f 61 64 54 6f 46 69 6c 65 28 30 26 2c 20 90 02 02 2c 20 90 02 02 2c 20 30 26 2c 20 30 26 29 90 0c 02 00 45 6e 64 20 46 75 6e 63 74 69 6f 6e 90 00 } //01 00 
		$a_03_2 = {44 69 6d 20 90 02 02 20 41 73 20 4e 65 77 20 57 73 68 53 68 65 6c 6c 90 02 06 2e 65 78 65 63 90 00 } //01 00 
		$a_03_3 = {3d 20 52 65 70 6c 61 63 65 28 90 02 02 2c 20 22 90 02 06 22 2c 20 22 22 29 90 00 } //01 00 
		$a_03_4 = {3d 20 53 70 6c 69 74 28 90 02 02 2c 20 22 2d 2d 2d 22 29 90 00 } //01 00 
		$a_03_5 = {22 72 65 67 73 76 72 33 32 20 22 20 2b 20 5a 28 31 29 90 0c 02 00 45 6e 64 20 53 75 62 90 00 } //00 00 
	condition:
		any of ($a_*)
 
}