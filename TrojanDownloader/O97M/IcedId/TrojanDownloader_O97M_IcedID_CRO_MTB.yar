
rule TrojanDownloader_O97M_IcedID_CRO_MTB{
	meta:
		description = "TrojanDownloader:O97M/IcedID.CRO!MTB,SIGNATURE_TYPE_MACROHSTR_EXT,08 00 08 00 08 00 00 01 00 "
		
	strings :
		$a_03_0 = {43 72 65 61 74 65 4f 62 6a 65 63 74 28 90 02 06 29 2e 65 78 65 63 20 28 90 02 06 20 26 20 22 20 22 20 26 20 90 02 06 29 90 0c 02 00 45 6e 64 20 53 75 62 90 00 } //01 00 
		$a_03_1 = {50 75 62 6c 69 63 20 43 6f 6e 73 74 20 90 02 06 20 41 73 20 53 74 72 69 6e 67 20 3d 20 22 68 22 90 00 } //01 00 
		$a_01_2 = {20 3d 20 22 22 } //01 00 
		$a_03_3 = {20 3d 20 43 68 72 28 90 02 07 29 90 0c 02 00 45 6e 64 20 46 75 6e 63 74 69 6f 6e 90 00 } //01 00 
		$a_03_4 = {53 75 62 20 90 02 06 28 90 02 06 2c 20 90 02 06 29 90 0c 02 00 27 20 90 00 } //01 00 
		$a_03_5 = {20 3d 20 56 42 41 2e 63 6c 6e 67 28 90 02 06 28 90 02 06 29 20 26 20 90 02 06 20 26 20 90 02 06 29 90 0c 02 00 45 6e 64 20 46 75 6e 63 74 69 6f 6e 90 0c 02 00 46 75 6e 63 74 69 6f 6e 20 90 02 06 28 90 02 06 29 90 0c 02 00 27 20 90 00 } //01 00 
		$a_03_6 = {4f 70 65 6e 20 90 02 06 20 46 6f 72 20 4f 75 74 70 75 74 20 41 73 20 23 90 02 04 50 72 69 6e 74 20 23 31 2c 20 90 02 10 43 6c 6f 73 65 20 23 90 02 04 45 6e 64 20 53 75 62 90 00 } //01 00 
		$a_03_7 = {20 3d 20 52 65 70 6c 61 63 65 28 90 02 06 28 90 02 06 29 2c 20 90 02 06 2c 20 90 02 06 29 90 0c 02 00 45 6e 64 20 46 75 6e 63 74 69 6f 6e 90 00 } //00 00 
	condition:
		any of ($a_*)
 
}