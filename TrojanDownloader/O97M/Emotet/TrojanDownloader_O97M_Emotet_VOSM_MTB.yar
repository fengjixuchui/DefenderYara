
rule TrojanDownloader_O97M_Emotet_VOSM_MTB{
	meta:
		description = "TrojanDownloader:O97M/Emotet.VOSM!MTB,SIGNATURE_TYPE_MACROHSTR_EXT,01 00 01 00 06 00 00 01 00 "
		
	strings :
		$a_00_0 = {68 22 26 22 74 74 22 26 22 70 3a 2f 22 26 22 2f 64 22 26 22 72 22 26 22 76 69 22 26 22 73 68 22 26 22 61 6c 22 26 22 63 22 26 22 68 22 26 22 65 22 26 22 73 74 22 26 22 63 6c 22 26 22 69 6e 22 26 22 69 63 2e 63 22 26 22 6f 22 26 22 6d 2f 77 22 26 22 70 2d 69 22 26 22 6e 22 26 22 63 6c 22 26 22 75 22 26 22 64 22 26 22 65 22 26 22 73 2f 53 22 26 22 71 71 22 26 22 43 22 26 22 5a 22 26 22 51 36 79 22 26 22 32 22 26 22 75 79 22 26 22 46 46 2f } //01 00 
		$a_00_1 = {68 22 26 22 74 74 22 26 22 70 3a 2f 22 26 22 2f 66 22 26 22 75 6e 22 26 22 65 22 26 22 73 22 26 22 74 6f 22 26 22 74 61 22 26 22 6c 2e 63 22 26 22 6f 22 26 22 6d 2f 35 22 26 22 61 22 26 22 63 22 26 22 6c 22 26 22 6f 22 26 22 31 65 22 26 22 6d 2f 32 22 26 22 31 22 26 22 55 2f } //01 00 
		$a_00_2 = {68 22 26 22 74 74 22 26 22 70 3a 2f 22 26 22 2f 67 2d 77 22 26 22 69 7a 22 26 22 63 6f 22 26 22 6d 22 26 22 70 22 26 22 75 22 26 22 74 22 26 22 65 22 26 22 72 22 26 22 73 2e 63 22 26 22 6f 22 26 22 6d 2f 70 22 26 22 61 22 26 22 72 22 26 22 74 22 26 22 79 2f 36 22 26 22 31 22 26 22 57 22 26 22 30 22 26 22 6f 22 26 22 76 22 26 22 42 22 26 22 75 22 26 22 38 22 26 22 36 2f } //01 00 
		$a_00_3 = {68 22 26 22 74 74 22 26 22 70 3a 2f 22 26 22 2f 70 22 26 22 72 22 26 22 69 22 26 22 6d 22 26 22 65 22 26 22 66 22 26 22 69 22 26 22 6e 22 26 22 64 2e 63 22 26 22 6f 22 26 22 6d 2f 31 22 26 22 6d 22 26 22 61 22 26 22 6c 22 26 22 6c 2d 75 22 26 22 6b 2f 68 22 26 22 35 2f } //01 00 
		$a_00_4 = {68 22 26 22 74 74 22 26 22 70 3a 2f 2f 6c 22 26 22 61 2d 63 73 22 26 22 69 2e 63 22 26 22 6f 22 26 22 6d 2f 6d 22 26 22 74 2d 61 22 26 22 64 22 26 22 6d 22 26 22 69 22 26 22 6e 2f 42 22 26 22 42 22 26 22 37 2f } //01 00 
		$a_00_5 = {68 22 26 22 74 74 70 22 26 22 73 3a 2f 22 26 22 2f 70 22 26 22 61 22 26 22 6e 22 26 22 63 22 26 22 6f 22 26 22 6f 22 26 22 6b 2e 63 22 26 22 6f 22 26 22 6d 2f 6e 22 26 22 65 22 26 22 77 22 26 22 73 69 22 26 22 74 22 26 22 65 2f 48 22 26 22 36 78 22 26 22 78 22 26 22 65 4c 22 26 22 65 22 26 22 66 22 26 22 58 22 26 22 31 49 22 26 22 32 22 26 22 76 67 22 26 22 4a 22 26 22 46 22 26 22 4d 22 26 22 31 22 26 22 59 2f } //00 00 
	condition:
		any of ($a_*)
 
}