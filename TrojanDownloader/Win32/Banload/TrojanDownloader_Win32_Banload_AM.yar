
rule TrojanDownloader_Win32_Banload_AM{
	meta:
		description = "TrojanDownloader:Win32/Banload.AM,SIGNATURE_TYPE_PEHSTR,43 00 41 00 0f 00 00 01 00 "
		
	strings :
		$a_01_0 = {74 79 70 65 3d 22 6d 75 6c 74 69 70 61 72 74 2f 61 6c 74 65 72 6e 61 74 69 76 65 22 3b } //01 00 
		$a_01_1 = {4d 49 4d 45 2d 56 65 72 73 69 6f 6e } //01 00 
		$a_01_2 = {53 75 62 6a 65 63 74 } //01 00 
		$a_01_3 = {52 65 70 6c 79 2d 54 6f } //01 00 
		$a_01_4 = {4e 65 77 73 67 72 6f 75 70 73 } //01 00 
		$a_01_5 = {4d 41 49 4c 20 46 52 4f 4d 3a 3c } //01 00 
		$a_01_6 = {52 65 6d 6f 74 65 4d 61 63 68 69 6e 65 4e 61 6d 65 } //01 00 
		$a_01_7 = {50 72 6f 78 79 2d 43 6f 6e 6e 65 63 74 69 6f 6e } //01 00 
		$a_01_8 = {53 53 4c 4f 70 65 6e 53 53 4c } //0a 00 
		$a_01_9 = {68 74 74 70 3a 2f 2f 77 77 77 2e 6d 69 6a 61 66 6f 6c 75 2e 63 6f 6d } //0a 00 
		$a_01_10 = {54 46 42 52 41 44 45 53 43 4f } //0a 00 
		$a_01_11 = {54 46 49 54 41 55 } //0a 00 
		$a_01_12 = {54 46 4f 52 4d 5f 41 4d 41 52 45 4c 4f } //0a 00 
		$a_01_13 = {54 55 42 41 4e 54 41 42 } //0a 00 
		$a_01_14 = {43 5f 41 5f 52 5f 54 5f 41 5f 4f 4b 65 79 50 72 65 73 73 } //00 00 
	condition:
		any of ($a_*)
 
}