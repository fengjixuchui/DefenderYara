
rule TrojanDownloader_O97M_Emotet_RPAD_MTB{
	meta:
		description = "TrojanDownloader:O97M/Emotet.RPAD!MTB,SIGNATURE_TYPE_MACROHSTR_EXT,01 00 01 00 06 00 00 01 00 "
		
	strings :
		$a_01_0 = {64 22 26 22 65 62 72 22 26 22 6f 61 64 22 26 22 6c 69 6e 22 26 22 6b 2e 63 22 26 22 6f 6d 2f 62 72 22 26 22 6f 63 68 22 26 22 75 22 26 22 72 65 2f 44 2f 22 } //01 00 
		$a_01_1 = {63 6f 72 6e 65 72 73 74 6f 6e 65 63 72 65 61 74 69 76 65 73 74 75 64 69 6f 73 2e 63 6f 6d 2f 62 6f 61 72 64 73 2f 69 6c 73 46 4b 4b 48 48 37 47 61 52 2f 22 2c 22 } //01 00 
		$a_01_2 = {63 73 6d 31 30 31 2e 63 6f 6d 2f 74 72 61 6e 73 61 6d 2f 54 37 77 62 6c 4b 69 63 6d 65 42 61 62 6a 32 68 2f 22 2c 22 2f } //01 00 
		$a_01_3 = {64 61 63 65 6e 74 65 63 32 2e 6c 61 79 65 72 65 64 73 65 72 76 65 72 2e 63 6f 6d 2f 73 70 65 65 64 74 65 73 74 2f 79 6a 6e 6e 77 2f 22 2c 22 } //01 00 
		$a_01_4 = {64 61 74 69 65 2d 74 77 2e 63 6f 6d 2f 74 65 73 74 2f 79 58 50 72 30 44 4f 2f 22 2c 22 } //01 00 
		$a_01_5 = {64 63 70 68 6f 74 6f 30 31 2e 63 6f 6d 2f 77 70 2d 61 64 6d 69 6e 2f 4a 2f 22 2c 22 } //00 00 
	condition:
		any of ($a_*)
 
}
rule TrojanDownloader_O97M_Emotet_RPAD_MTB_2{
	meta:
		description = "TrojanDownloader:O97M/Emotet.RPAD!MTB,SIGNATURE_TYPE_MACROHSTR_EXT,01 00 01 00 06 00 00 01 00 "
		
	strings :
		$a_01_0 = {22 68 22 26 22 74 74 70 22 26 22 73 3a 2f 2f 77 22 26 22 77 77 2e 63 22 26 22 6c 69 6e 22 26 22 74 6d 22 26 22 6f 72 65 22 26 22 79 2e 63 22 26 22 6f 6d 2f 77 22 26 22 70 2d 63 22 26 22 6f 6e 22 26 22 74 65 22 26 22 6e 74 2f 51 53 22 26 22 7a 62 22 26 22 48 38 49 22 26 22 6b 6c 22 26 22 38 45 2f 22 2c } //01 00 
		$a_01_1 = {22 68 22 26 22 74 74 22 26 22 70 73 3a 2f 2f 63 69 62 22 26 22 65 72 66 61 22 26 22 6c 6c 61 22 26 22 73 2e 63 6f 22 26 22 6d 2f 77 22 26 22 70 2d 61 22 26 22 64 6d 22 26 22 69 6e 2f 34 22 26 22 73 55 31 22 26 22 64 41 22 26 22 54 79 2f } //01 00 
		$a_01_2 = {22 68 22 26 22 74 74 22 26 22 70 3a 2f 2f 63 6f 22 26 22 64 22 26 22 65 37 38 22 26 22 36 2e 63 22 26 22 6f 22 26 22 6d 2f 62 22 26 22 65 65 6c 22 26 22 64 4f 22 26 22 4c 22 26 22 44 2f 41 54 22 26 22 6e 4e 6b 22 26 22 33 31 22 26 22 36 } //01 00 
		$a_01_3 = {22 68 22 26 22 74 74 22 26 22 70 3a 2f 2f 63 6f 22 26 22 6d 62 61 22 26 22 74 65 6e 74 65 22 26 22 72 70 72 69 22 26 22 73 65 22 26 22 73 2e 63 22 26 22 6f 6d 2f 63 22 26 22 67 69 2d 62 22 26 22 69 6e 2f 31 42 22 26 22 61 62 6d 22 26 22 4e 71 43 4b 22 26 22 42 78 22 26 22 55 49 7a 22 26 22 55 79 } //01 00 
		$a_01_4 = {22 68 22 26 22 74 74 22 26 22 70 3a 2f 2f 73 22 26 22 64 2d 31 36 22 26 22 38 22 26 22 34 36 32 22 26 22 35 2d 68 22 26 22 30 30 22 26 22 30 30 22 26 22 31 2e 66 65 22 26 22 72 6f 22 26 22 7a 6f 2e 6e 22 26 22 65 74 2f 50 61 67 22 26 22 69 6e 61 22 26 22 4d 22 26 22 61 73 56 69 65 22 26 22 6a 61 31 33 22 26 22 32 31 36 22 26 22 35 34 2f 46 22 26 22 31 4d 35 22 26 22 64 42 22 26 22 75 38 61 22 26 22 78 75 22 26 22 51 6b 78 22 26 22 30 70 22 26 22 38 2f } //01 00 
		$a_01_5 = {22 68 22 26 22 74 74 70 22 26 22 73 3a 2f 2f 63 22 26 22 6f 6d 22 26 22 61 72 63 61 22 26 22 68 6f 22 26 22 79 2e 63 22 26 22 6f 6d 2e 61 22 26 22 72 2f 77 22 26 22 70 2d 63 6f 22 26 22 6e 74 22 26 22 65 6e 22 26 22 74 2f 53 22 26 22 31 6e 6b 72 22 26 22 78 43 22 26 22 63 44 22 26 22 56 38 22 26 22 39 44 22 26 22 4c 70 22 26 22 54 58 22 26 22 68 71 22 26 22 43 } //00 00 
	condition:
		any of ($a_*)
 
}