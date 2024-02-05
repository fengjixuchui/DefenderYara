
rule TrojanDownloader_O97M_Donoff_ER{
	meta:
		description = "TrojanDownloader:O97M/Donoff.ER,SIGNATURE_TYPE_MACROHSTR_EXT,04 00 04 00 07 00 00 01 00 "
		
	strings :
		$a_01_0 = {2b 20 41 72 72 61 79 28 22 63 6d 64 2e 65 78 65 20 2f 63 20 22 22 70 6f 77 65 72 73 68 65 22 29 28 30 29 } //01 00 
		$a_03_1 = {2b 20 41 72 72 61 79 28 22 6c 6c 20 20 24 90 02 10 3d 27 5e 90 02 08 27 3b 90 02 08 22 29 28 30 29 90 00 } //01 00 
		$a_03_2 = {49 6e 76 6f 6b 65 2d 90 02 20 22 29 28 30 29 90 00 } //01 00 
		$a_03_3 = {53 68 65 6c 6c 20 90 02 08 2c 20 90 02 10 45 6e 64 20 49 66 90 00 } //01 00 
		$a_01_4 = {2c 20 22 63 6d 64 2e 65 78 65 20 2f 63 20 22 22 70 6f 77 65 72 73 68 65 6c 6c 20 20 24 } //01 00 
		$a_03_5 = {6e 76 6f 6b 65 2d 45 78 70 72 65 73 73 90 02 30 2c 20 4e 61 4e 2c 20 4e 61 4e 2c 90 00 } //01 00 
		$a_03_6 = {3d 20 41 72 72 61 79 28 4e 61 4e 2c 20 90 02 60 2c 20 4e 61 4e 2c 20 4e 61 4e 2c 20 4e 61 4e 2c 20 4e 61 4e 2c 20 4e 61 4e 2c 20 4e 61 4e 29 90 00 } //00 00 
		$a_00_7 = {5d 04 } //00 00 
	condition:
		any of ($a_*)
 
}