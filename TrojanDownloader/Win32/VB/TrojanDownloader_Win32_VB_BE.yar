
rule TrojanDownloader_Win32_VB_BE{
	meta:
		description = "TrojanDownloader:Win32/VB.BE,SIGNATURE_TYPE_PEHSTR_EXT,6b 00 6b 00 08 00 00 01 00 "
		
	strings :
		$a_00_0 = {44 00 3a 00 5c 00 4d 00 61 00 73 00 74 00 65 00 72 00 5c 00 62 00 62 00 5f 00 73 00 6f 00 66 00 74 00 5c 00 62 00 62 00 5f 00 6c 00 6f 00 61 00 64 00 65 00 72 00 5c 00 50 00 72 00 6f 00 6a 00 65 00 63 00 74 00 31 00 2e 00 76 00 62 00 70 00 } //01 00 
		$a_01_1 = {68 00 74 00 74 00 70 00 3a 00 2f 00 2f 00 6c 00 69 00 76 00 65 00 75 00 70 00 64 00 61 00 74 00 65 00 73 00 6e 00 65 00 74 00 2e 00 63 00 6f 00 6d 00 2f 00 } //01 00 
		$a_00_2 = {2f 00 6d 00 2e 00 70 00 68 00 70 00 3f 00 61 00 69 00 64 00 3d 00 } //01 00 
		$a_01_3 = {76 00 6d 00 77 00 61 00 72 00 65 00 73 00 65 00 72 00 76 00 69 00 63 00 65 00 2e 00 65 00 78 00 65 00 } //01 00 
		$a_00_4 = {4d 00 6f 00 7a 00 69 00 6c 00 6c 00 61 00 2f 00 34 00 2e 00 30 00 20 00 28 00 63 00 6f 00 6d 00 70 00 61 00 74 00 69 00 62 00 6c 00 65 00 3b 00 20 00 4d 00 53 00 49 00 45 00 20 00 35 00 2e 00 30 00 3b 00 20 00 57 00 69 00 6e 00 64 00 6f 00 77 00 73 00 20 00 39 00 38 00 3b 00 20 00 44 00 69 00 67 00 45 00 78 00 74 00 3b 00 20 00 4d 00 61 00 78 00 74 00 68 00 6f 00 6e 00 29 00 } //01 00 
		$a_00_5 = {6c 00 6f 00 61 00 64 00 65 00 72 00 2e 00 65 00 78 00 65 00 } //01 00 
		$a_00_6 = {5c 00 76 00 76 00 67 00 65 00 6f 00 77 00 62 00 76 00 2e 00 65 00 78 00 65 00 } //64 00 
		$a_00_7 = {43 3a 5c 50 72 6f 67 72 61 6d 20 46 69 6c 65 73 5c 4d 69 63 72 6f 73 6f 66 74 20 56 69 73 75 61 6c 20 53 74 75 64 69 6f 5c 56 42 39 38 5c 56 42 36 2e 4f 4c 42 } //00 00 
	condition:
		any of ($a_*)
 
}