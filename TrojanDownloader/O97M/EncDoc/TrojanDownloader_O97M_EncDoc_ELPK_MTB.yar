
rule TrojanDownloader_O97M_EncDoc_ELPK_MTB{
	meta:
		description = "TrojanDownloader:O97M/EncDoc.ELPK!MTB,SIGNATURE_TYPE_MACROHSTR_EXT,01 00 01 00 06 00 00 01 00 "
		
	strings :
		$a_01_0 = {3a 2f 2f 61 22 26 22 69 22 26 22 72 6c 22 26 22 69 22 26 22 66 74 22 26 22 6c 22 26 22 69 22 26 22 6d 22 26 22 6f 2e 63 22 26 22 6f 22 26 22 6d 2f 77 22 26 22 70 2d 61 22 26 22 64 22 26 22 6d 69 22 26 22 6e 2f 31 22 26 22 32 22 26 22 44 22 26 22 74 22 26 22 42 22 26 22 37 22 26 22 6b 22 26 22 50 22 26 22 36 22 26 22 55 22 26 22 72 22 26 22 38 22 26 22 58 22 26 22 37 22 26 22 37 2f } //01 00 
		$a_01_1 = {3a 2f 2f 6d 22 26 22 65 22 26 22 75 22 26 22 73 22 26 22 72 22 26 22 65 22 26 22 63 22 26 22 75 22 26 22 72 22 26 22 73 22 26 22 6f 22 26 22 73 2e 63 22 26 22 6f 22 26 22 6d 2e 62 22 26 22 72 2f 77 22 26 22 70 2d 69 22 26 22 6e 63 6c 22 26 22 75 22 26 22 64 22 26 22 65 22 26 22 73 2f 72 22 26 22 64 22 26 22 78 22 26 22 72 6f 2f } //01 00 
		$a_01_2 = {3a 2f 2f 6d 22 26 22 65 22 26 22 75 22 26 22 73 22 26 22 72 22 26 22 65 22 26 22 63 22 26 22 75 22 26 22 72 22 26 22 73 22 26 22 6f 22 26 22 73 2e 63 22 26 22 6f 22 26 22 6d 2e 62 22 26 22 72 2f 77 22 26 22 70 2d 69 22 26 22 6e 63 22 26 22 6c 22 26 22 75 22 26 22 64 22 26 22 65 22 26 22 73 2f 5a 22 26 22 32 22 26 22 6b 22 26 22 66 22 26 22 41 22 26 22 59 22 26 22 63 22 26 22 59 22 26 22 57 22 26 22 70 2f } //01 00 
		$a_01_3 = {3a 2f 22 26 22 2f 72 22 26 22 6f 22 26 22 62 22 26 22 6f 22 26 22 74 22 26 22 69 22 26 22 78 22 26 22 70 22 26 22 65 22 26 22 6e 22 26 22 65 22 26 22 64 22 26 22 65 22 26 22 73 2e 63 22 26 22 6f 22 26 22 6d 2f 77 22 26 22 70 2d 61 22 26 22 64 22 26 22 6d 22 26 22 69 6e 2f 32 22 26 22 54 22 26 22 48 22 26 22 36 22 26 22 4e 22 26 22 4f 22 26 22 33 2f } //01 00 
		$a_01_4 = {3a 2f 2f 6c 69 22 26 22 74 22 26 22 65 22 26 22 73 22 26 22 63 22 26 22 61 22 26 22 70 22 26 22 65 2e 63 22 26 22 6f 22 26 22 6d 2e 6d 22 26 22 79 2f 77 22 26 22 70 2d 63 22 26 22 6f 6e 22 26 22 74 22 26 22 65 22 26 22 6e 22 26 22 74 2f 77 22 26 22 68 2f } //01 00 
		$a_01_5 = {3a 2f 2f 6f 22 26 22 6c 22 26 22 64 2e 6c 22 26 22 69 22 26 22 63 22 26 22 65 22 26 22 75 22 26 22 6d 22 26 22 39 2e 72 22 26 22 75 2f 69 22 26 22 6d 22 26 22 61 22 26 22 67 22 26 22 65 22 26 22 73 2f 22 26 22 52 2f } //00 00 
	condition:
		any of ($a_*)
 
}