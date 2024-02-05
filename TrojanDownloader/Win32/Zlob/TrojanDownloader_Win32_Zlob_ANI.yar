
rule TrojanDownloader_Win32_Zlob_ANI{
	meta:
		description = "TrojanDownloader:Win32/Zlob.ANI,SIGNATURE_TYPE_PEHSTR,03 00 03 00 03 00 00 01 00 "
		
	strings :
		$a_01_0 = {7b 00 45 00 32 00 30 00 39 00 30 00 36 00 37 00 33 00 2d 00 32 00 35 00 36 00 42 00 2d 00 34 00 36 00 33 00 32 00 2d 00 39 00 34 00 45 00 45 00 2d 00 46 00 45 00 43 00 37 00 46 00 35 00 35 00 31 00 35 00 34 00 33 00 43 00 7d 00 } //01 00 
		$a_01_1 = {25 00 73 00 73 00 3a 00 2f 00 2f 00 25 00 73 00 5c 00 73 00 68 00 64 00 6f 00 25 00 73 00 25 00 73 00 72 00 72 00 25 00 73 00 25 00 73 00 } //01 00 
		$a_01_2 = {26 00 73 00 72 00 63 00 68 00 3d 00 00 00 00 00 3f 00 4d 00 54 00 3d 00 00 00 00 00 65 00 2e 00 61 00 73 00 70 00 3f 00 4d 00 54 00 3d 00 00 00 70 00 6f 00 6e 00 73 00 00 00 00 00 73 00 6e 00 2e 00 63 00 6f 00 6d 00 2f 00 72 00 65 00 73 00 00 00 00 00 61 00 72 00 63 00 68 00 2e 00 6d 00 00 00 00 00 61 00 75 00 74 00 6f 00 2e 00 73 00 65 00 00 00 68 00 74 00 74 00 70 00 3a 00 2f 00 2f 00 } //00 00 
	condition:
		any of ($a_*)
 
}