
rule TrojanDownloader_O97M_Obfuse_JW_MTB{
	meta:
		description = "TrojanDownloader:O97M/Obfuse.JW!MTB,SIGNATURE_TYPE_MACROHSTR_EXT,05 00 05 00 05 00 00 01 00 "
		
	strings :
		$a_01_0 = {66 75 6e 20 3d 20 66 75 6e 31 20 2b 20 66 75 6e 32 20 2b 20 66 75 6e 33 } //01 00 
		$a_01_1 = {53 68 65 6c 6c 20 28 66 75 6e 29 } //01 00 
		$a_01_2 = {74 68 69 72 64 20 3d 20 28 74 68 69 72 64 20 2b 20 66 69 72 73 74 28 73 65 63 6f 6e 64 29 20 2b 20 66 6f 75 72 74 68 28 73 65 63 6f 6e 64 20 4d 6f 64 20 4c 65 6e 28 50 61 73 73 77 6f 72 64 29 29 29 20 4d 6f 64 20 32 35 36 } //01 00 
		$a_01_3 = {66 6f 75 72 74 68 28 73 65 63 6f 6e 64 29 20 3d 20 66 6f 75 72 74 68 28 73 65 63 6f 6e 64 29 20 58 6f 72 20 66 69 72 73 74 28 54 65 6d 70 20 2b 20 66 69 72 73 74 28 28 74 68 69 72 64 20 2b 20 66 69 72 73 74 28 74 68 69 72 64 29 29 20 4d 6f 64 20 32 35 34 29 29 } //01 00 
		$a_01_4 = {3d 20 53 74 72 43 6f 6e 76 28 50 61 73 73 77 6f 72 64 2c 20 76 62 46 72 6f 6d 55 6e 69 63 6f 64 65 29 } //00 00 
	condition:
		any of ($a_*)
 
}
rule TrojanDownloader_O97M_Obfuse_JW_MTB_2{
	meta:
		description = "TrojanDownloader:O97M/Obfuse.JW!MTB,SIGNATURE_TYPE_MACROHSTR_EXT,04 00 04 00 04 00 00 01 00 "
		
	strings :
		$a_00_0 = {63 47 39 33 5a 58 4a 7a 61 47 56 73 62 43 35 6c 65 47 55 67 4c 56 64 70 62 6d 52 76 64 31 4e 30 65 57 78 6c 49 45 68 70 5a 47 52 6c 62 69 41 74 52 58 68 6c 59 33 56 30 61 57 39 75 55 47 39 73 61 57 4e 35 49 } //01 00 
		$a_00_1 = {49 47 68 30 64 48 41 36 4c 79 38 78 4f 54 49 75 4d 6a 4d 32 4c 6a 45 33 4f 43 34 34 4d 43 38 33 65 69 39 45 52 6b 77 74 4d 54 55 31 4f 54 41 78 4c 6d 70 77 5a 79 } //01 00 
		$a_00_2 = {65 31 4e 30 59 58 4a 30 4c 56 42 79 62 32 4e 6c 63 33 4d 67 4c 55 5a 70 62 47 56 51 59 58 52 6f 49 43 4a 44 4f 6c 78 56 63 32 56 79 63 31 78 51 64 57 4a 73 61 57 4e 63 63 6d 78 68 63 57 6c 68 62 47 35 6b 4c 6d 56 34 5a 53 4a 39 49 67 3d 3d } //01 00 
		$a_00_3 = {64 32 6c 75 62 57 64 74 64 48 4d 36 64 32 6c 75 4d 7a 4a 66 55 48 4a 76 59 32 56 7a 63 77 3d 3d } //00 00 
	condition:
		any of ($a_*)
 
}
rule TrojanDownloader_O97M_Obfuse_JW_MTB_3{
	meta:
		description = "TrojanDownloader:O97M/Obfuse.JW!MTB,SIGNATURE_TYPE_MACROHSTR_EXT,07 00 07 00 0c 00 00 02 00 "
		
	strings :
		$a_00_0 = {36 38 20 37 34 20 37 34 20 37 30 20 33 41 20 32 46 20 32 46 20 36 42 20 36 46 20 37 31 20 36 36 20 36 42 20 37 32 20 36 41 20 36 37 20 32 45 20 37 37 20 37 41 20 36 35 20 32 45 20 36 39 20 36 46 20 32 46 20 37 33 20 37 31 20 36 43 20 32 46 20 36 45 20 36 45 20 36 37 20 37 36 20 36 36 20 36 34 20 32 45 20 36 35 20 37 38 20 36 35 } //02 00 
		$a_00_1 = {36 38 20 37 34 20 37 34 20 37 30 20 37 33 20 33 41 20 32 46 20 32 46 20 36 37 20 36 31 20 37 39 20 37 34 20 36 31 20 36 45 20 36 33 20 36 46 20 36 45 20 37 33 20 37 34 20 37 32 20 37 35 20 36 33 20 37 34 20 36 39 20 36 46 20 36 45 20 36 39 20 36 45 20 36 33 20 32 45 20 36 33 20 36 46 20 36 44 20 32 46 20 36 46 20 37 37 20 36 45 20 32 45 20 36 35 20 37 38 20 36 35 } //02 00 
		$a_00_2 = {36 38 20 37 34 20 37 34 20 37 30 20 33 41 20 32 46 20 32 46 20 36 32 20 37 32 20 36 31 20 36 45 20 36 34 20 36 46 20 37 34 20 36 46 20 36 34 20 36 31 20 37 39 20 32 45 20 36 33 20 36 46 20 36 44 20 32 46 20 35 31 20 37 35 20 36 46 20 37 34 20 36 31 20 37 34 20 36 39 20 36 46 20 36 45 20 33 32 20 32 45 20 36 35 20 37 38 20 36 35 } //02 00 
		$a_00_3 = {36 38 20 37 34 20 37 34 20 37 30 20 33 41 20 32 46 20 32 46 20 37 32 20 36 35 20 36 46 20 36 42 20 36 31 20 37 39 20 37 34 20 37 39 20 32 44 20 33 37 20 33 31 20 32 45 20 37 34 20 36 42 20 32 46 20 37 33 20 37 31 20 36 43 20 32 46 20 36 38 20 36 35 20 36 34 20 37 32 20 37 34 20 36 36 20 37 37 20 32 45 20 36 35 20 37 38 20 36 35 } //02 00 
		$a_00_4 = {36 38 20 37 34 20 37 34 20 37 30 20 33 41 20 32 46 20 32 46 20 36 37 20 36 31 20 37 39 20 37 34 20 36 31 20 36 45 20 36 33 20 36 46 20 36 45 20 37 33 20 37 34 20 37 32 20 37 35 20 36 33 20 37 34 20 36 39 20 36 46 20 36 45 20 36 39 20 36 45 20 36 33 20 32 45 20 36 33 20 36 46 20 36 44 20 32 46 20 36 45 20 36 35 20 36 43 20 32 45 20 36 35 20 37 38 20 36 35 } //02 00 
		$a_00_5 = {36 38 20 37 34 20 37 34 20 37 30 20 33 41 20 32 46 20 32 46 20 37 30 20 36 38 20 36 31 20 36 44 20 37 31 20 37 35 20 37 39 20 36 35 20 36 45 20 32 45 20 37 38 20 37 39 20 37 41 20 32 46 20 37 37 20 37 30 20 32 44 20 36 33 20 36 46 20 36 45 20 37 34 20 36 35 20 36 45 20 37 34 20 32 46 20 37 34 20 36 38 20 36 35 20 36 44 20 36 35 20 37 33 20 32 46 20 36 32 20 36 46 20 36 46 20 37 34 20 36 33 20 36 31 20 36 42 20 36 35 20 33 36 20 32 46 20 35 31 20 37 38 20 37 41 20 34 31 20 35 36 20 34 32 20 32 45 20 36 35 20 37 38 20 36 35 } //02 00 
		$a_00_6 = {36 38 20 37 34 20 37 34 20 37 30 20 33 41 20 32 46 20 32 46 20 37 37 20 37 37 20 37 37 20 32 45 20 36 35 20 37 30 20 37 39 20 36 46 20 37 32 20 36 42 20 36 35 20 32 45 20 36 35 20 36 34 20 37 35 20 32 45 20 36 32 20 37 41 20 32 46 20 32 46 20 36 43 20 36 39 20 36 32 20 37 32 20 36 31 20 37 32 20 36 39 20 36 35 20 37 33 20 32 46 20 34 32 20 36 31 20 36 45 20 36 42 20 34 32 20 36 31 20 36 45 20 36 42 20 34 37 20 34 37 20 32 45 20 36 35 20 37 38 20 36 35 } //02 00 
		$a_00_7 = {34 33 20 33 61 20 35 63 20 35 35 20 37 33 20 36 35 20 37 32 20 37 33 20 35 63 20 35 30 20 37 35 20 36 32 20 36 63 20 36 39 20 36 33 20 35 63 20 37 38 20 37 37 20 36 43 20 36 36 20 36 31 20 36 34 20 36 36 20 37 32 20 37 33 20 32 65 20 36 35 20 37 38 20 36 35 } //02 00 
		$a_00_8 = {34 33 20 33 61 20 35 63 20 35 35 20 37 33 20 36 35 20 37 32 20 37 33 20 35 63 20 35 30 20 37 35 20 36 32 20 36 63 20 36 39 20 36 33 20 35 63 20 37 33 20 37 36 20 36 33 20 36 38 20 36 66 20 37 33 20 37 34 20 33 33 20 33 32 20 32 65 20 36 35 20 37 38 20 36 35 } //01 00 
		$a_00_9 = {34 64 20 36 39 20 36 33 20 37 32 20 36 66 20 37 33 20 36 66 20 36 36 20 37 34 20 32 65 20 35 38 20 34 64 20 34 63 20 34 38 20 35 34 20 35 34 20 35 30 } //01 00 
		$a_00_10 = {35 37 20 35 33 20 36 33 20 37 32 20 36 39 20 37 30 20 37 34 20 32 65 20 35 33 20 36 38 20 36 35 20 36 63 20 36 63 } //01 00 
		$a_03_11 = {43 68 72 24 28 56 61 6c 28 22 26 48 22 20 26 20 4d 69 64 24 28 90 02 64 2c 20 90 02 64 2c 20 32 29 90 00 } //00 00 
	condition:
		any of ($a_*)
 
}