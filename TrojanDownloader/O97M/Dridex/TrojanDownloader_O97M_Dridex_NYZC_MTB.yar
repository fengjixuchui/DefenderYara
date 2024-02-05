
rule TrojanDownloader_O97M_Dridex_NYZC_MTB{
	meta:
		description = "TrojanDownloader:O97M/Dridex.NYZC!MTB,SIGNATURE_TYPE_MACROHSTR_EXT,01 00 01 00 0a 00 00 01 00 "
		
	strings :
		$a_03_0 = {3d 20 52 65 70 6c 61 63 65 28 22 68 74 74 70 73 3a 2f 2f 73 90 02 0a 75 72 75 73 74 6f 72 65 2e 63 6f 6d 2f 69 6d 61 67 65 2f 63 61 63 68 65 90 02 0a 2f 63 61 74 61 6c 6f 67 2f 64 65 6d 6f 2f 62 61 6e 6e 65 72 73 2f 68 30 64 44 38 54 32 61 4e 52 7a 2e 70 68 70 22 2c 90 00 } //01 00 
		$a_03_1 = {3d 20 52 65 70 6c 61 63 65 28 22 68 74 74 70 73 3a 2f 2f 76 69 74 69 6c 69 67 6f 6d 61 74 63 68 2e 63 6f 6d 2f 77 70 76 69 74 69 6c 69 67 6f 6d 61 74 63 68 2f 77 70 2d 69 6e 63 6c 75 64 65 73 2f 63 73 73 2f 64 90 02 0a 69 73 74 2f 62 6c 6f 63 6b 2d 64 69 72 65 63 74 6f 72 79 2f 51 61 4c 55 49 55 6b 78 6f 6d 58 2e 70 68 90 02 0a 70 22 2c 90 00 } //01 00 
		$a_03_2 = {3d 20 52 65 70 6c 61 63 65 28 22 68 74 74 70 73 3a 2f 2f 63 61 6e 61 76 65 72 61 6c 2e 74 6f 75 72 73 2f 77 70 2d 63 6f 6e 74 65 6e 74 2f 70 6c 75 67 69 6e 73 2f 62 69 72 63 68 73 63 68 65 64 75 6c 65 2f 69 6e 63 6c 75 64 65 73 2f 6d 6f 64 65 90 02 0a 6c 2f 6e 43 53 4a 4c 59 76 76 47 4a 77 2e 70 68 70 22 2c 90 00 } //01 00 
		$a_03_3 = {3d 20 52 65 70 6c 61 63 65 28 22 68 74 74 70 73 3a 2f 2f 65 6d 70 6f 77 65 72 70 69 6c 61 74 65 73 73 74 75 64 69 6f 2e 63 6f 6d 2f 77 70 2d 63 6f 6e 74 90 02 0a 65 6e 74 2f 70 6c 75 67 90 02 0a 69 6e 73 2f 90 02 0a 65 6c 65 6d 65 6e 74 6f 72 2d 70 72 6f 2f 6d 6f 64 75 6c 65 73 2f 61 6e 69 6d 61 74 65 64 2d 68 90 02 0a 65 61 64 6c 69 6e 65 2f 71 66 63 46 4a 79 6e 47 61 6b 33 4f 2e 70 68 70 22 2c 90 00 } //01 00 
		$a_03_4 = {3d 20 52 65 70 6c 61 63 65 28 22 68 74 74 70 90 02 0a 73 3a 2f 2f 70 72 65 64 90 02 0a 69 63 74 69 6f 6e 32 30 32 30 2e 63 6f 6d 2f 77 70 2d 90 02 0a 63 6f 6e 74 65 6e 74 2f 70 6c 75 67 69 90 02 0a 6e 73 2f 72 65 61 6c 6c 79 2d 73 69 6d 70 90 02 0a 6c 65 2d 73 73 6c 2f 74 65 73 74 73 73 6c 2f 63 6c 6f 75 64 66 6c 61 72 65 2f 6a 44 4e 36 77 6d 46 69 64 47 36 35 2e 70 68 70 22 2c 90 00 } //01 00 
		$a_03_5 = {3d 20 52 65 70 6c 61 63 65 28 22 68 74 74 70 73 3a 2f 2f 6f 70 63 61 62 64 2e 6f 72 67 2f 77 70 2d 63 6f 6e 74 65 6e 74 2f 74 68 65 6d 65 73 2f 90 02 0a 74 77 65 6e 74 79 73 65 76 65 6e 74 65 65 6e 2f 74 65 6d 70 6c 61 74 65 2d 70 61 72 90 02 0a 74 70 48 2d 6c 57 5f 73 2f 66 6f 6f 74 65 72 2f 38 42 55 50 62 6c 53 35 43 52 47 6d 2e 70 68 70 22 2c 90 00 } //01 00 
		$a_03_6 = {3d 20 52 65 70 6c 61 63 65 28 22 68 74 74 70 73 3a 2f 2f 6f 6f 74 61 73 68 6f 70 2e 63 6f 6d 2f 63 61 74 61 6c 6f 67 2f 90 02 0a 6c 61 6e 67 75 61 67 65 2f 61 72 2f 65 78 74 65 6e 73 69 6f 6e 2f 63 61 70 74 63 68 61 2f 49 7a 34 30 43 61 43 46 78 2e 70 68 70 22 2c 90 00 } //01 00 
		$a_03_7 = {3d 20 52 65 70 6c 61 63 65 28 22 90 02 0a 68 74 74 70 73 3a 2f 2f 6d 61 72 63 6f 69 90 02 0a 73 6c 61 90 02 0a 6e 64 67 75 69 64 65 62 6f 6f 6b 2e 63 90 02 0a 6f 6d 2f 77 70 2d 69 6e 63 6c 75 64 65 73 2f 6a 73 2f 74 69 6e 79 6d 63 65 2f 70 6c 75 67 69 6e 73 90 02 0f 2f 63 68 61 72 6d 61 70 2f 78 6c 74 47 72 4a 57 69 4b 2e 70 68 70 22 2c 90 00 } //01 00 
		$a_03_8 = {3d 20 52 65 70 6c 61 63 65 28 22 68 74 74 70 73 3a 2f 2f 73 72 69 76 69 6e 61 90 02 0a 79 73 61 6c 69 61 6e 2e 63 6f 6d 2f 77 70 2d 63 6f 6e 74 65 6e 74 2f 70 6c 75 67 69 6e 73 2f 90 02 0a 63 61 74 90 02 0a 63 68 90 02 0a 2d 69 6e 73 74 61 67 72 61 6d 2d 66 65 65 64 2d 67 61 6c 6c 65 72 79 2d 77 69 64 67 65 74 90 02 0a 2f 70 75 62 90 02 0a 6c 69 63 2f 63 73 73 2f 6a 59 66 65 34 62 39 69 6d 42 2e 70 68 70 22 2c 90 00 } //01 00 
		$a_03_9 = {3d 20 52 65 70 6c 61 63 65 28 22 68 74 74 70 73 3a 2f 2f 62 65 6c 6c 61 6c 6f 90 02 0a 76 65 62 6f 75 74 69 71 75 65 2e 63 6f 6d 2f 77 70 2d 63 90 02 0a 6f 6e 74 65 6e 74 2f 74 68 65 6d 65 73 2f 73 61 6c 90 02 0a 69 65 90 02 0a 6e 74 2f 69 6e 63 6c 75 64 65 73 2f 70 61 72 90 02 0a 74 69 61 6c 73 2f 74 67 90 02 0a 54 7a 4b 64 71 7a 47 69 76 75 5a 39 2e 70 68 70 22 2c 90 00 } //00 00 
	condition:
		any of ($a_*)
 
}