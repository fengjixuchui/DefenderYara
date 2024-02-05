
rule TrojanDownloader_Win32_VB_NP{
	meta:
		description = "TrojanDownloader:Win32/VB.NP,SIGNATURE_TYPE_PEHSTR,08 00 05 00 05 00 00 02 00 "
		
	strings :
		$a_01_0 = {63 00 6d 00 64 00 20 00 2f 00 63 00 20 00 72 00 65 00 67 00 65 00 64 00 69 00 74 00 20 00 2f 00 73 00 20 00 43 00 3a 00 5c 00 73 00 79 00 73 00 74 00 65 00 6d 00 2e 00 72 00 65 00 67 00 } //02 00 
		$a_01_1 = {43 00 3a 00 5c 00 5c 00 77 00 69 00 6e 00 64 00 6f 00 77 00 73 00 5c 00 5c 00 63 00 74 00 66 00 6d 00 6f 00 6e 00 73 00 2e 00 65 00 78 00 65 00 } //03 00 
		$a_01_2 = {6d 00 32 00 70 00 6b 00 2e 00 63 00 6f 00 6d 00 3a 00 32 00 30 00 30 00 31 00 2f 00 74 00 73 00 74 00 2f 00 61 00 62 00 63 00 2e 00 65 00 78 00 65 00 } //03 00 
		$a_01_3 = {6a 00 69 00 61 00 6e 00 71 00 69 00 61 00 6e 00 67 00 7a 00 68 00 65 00 31 00 2e 00 63 00 6f 00 6d 00 2f 00 41 00 64 00 64 00 53 00 65 00 74 00 75 00 70 00 2e 00 61 00 73 00 70 00 } //01 00 
		$a_01_4 = {26 00 6c 00 6f 00 63 00 61 00 6c 00 49 00 44 00 3d 00 } //00 00 
	condition:
		any of ($a_*)
 
}