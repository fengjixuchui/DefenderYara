
rule TrojanDownloader_O97M_Donoff_WA{
	meta:
		description = "TrojanDownloader:O97M/Donoff.WA,SIGNATURE_TYPE_MACROHSTR_EXT,04 00 04 00 04 00 00 01 00 "
		
	strings :
		$a_03_0 = {57 6f 72 6b 62 6f 6f 6b 5f 4f 70 65 6e 28 29 90 0b 02 00 90 02 03 20 3d 20 22 90 02 02 22 90 0b 02 00 90 1b 02 20 90 1b 01 90 0b 02 00 45 6e 64 20 53 75 62 90 00 } //01 00 
		$a_03_1 = {28 42 79 52 65 66 20 90 01 04 90 02 04 2c 20 42 79 52 65 66 20 90 01 04 90 02 04 2c 20 90 01 04 90 02 04 29 90 0b 02 00 90 01 04 90 02 06 20 3d 20 4c 65 6e 28 90 1b 04 90 1b 05 29 90 0b 02 00 49 66 20 90 1b 00 90 1b 01 20 3c 3d 20 90 1b 07 90 1b 08 20 54 68 65 6e 90 0b 02 00 90 1b 02 90 1b 03 20 3d 20 90 1b 02 90 1b 03 20 2b 20 90 00 } //01 00 
		$a_03_2 = {28 52 69 67 68 74 28 4c 65 66 74 28 90 01 04 90 02 04 2c 20 90 01 04 90 02 04 29 2c 20 31 29 29 2c 20 90 0f 01 00 90 10 02 00 29 90 0b 02 00 90 00 } //01 00 
		$a_03_3 = {53 68 65 6c 6c 20 90 01 04 90 02 08 2c 20 30 90 0b 02 00 45 6e 64 20 53 75 62 90 00 } //00 00 
		$a_00_4 = {5d 04 00 } //00 2b 
	condition:
		any of ($a_*)
 
}