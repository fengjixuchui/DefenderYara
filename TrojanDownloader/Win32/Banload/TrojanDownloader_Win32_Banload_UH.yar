
rule TrojanDownloader_Win32_Banload_UH{
	meta:
		description = "TrojanDownloader:Win32/Banload.UH,SIGNATURE_TYPE_PEHSTR,1f 00 1f 00 05 00 00 0a 00 "
		
	strings :
		$a_01_0 = {55 00 6c 00 69 00 74 00 69 00 7a 00 61 00 64 00 6f 00 72 00 3a 00 } //0a 00 
		$a_01_1 = {43 00 6f 00 64 00 2e 00 20 00 73 00 65 00 63 00 72 00 65 00 74 00 6f 00 3a 00 } //0a 00 
		$a_01_2 = {68 00 74 00 74 00 70 00 73 00 3a 00 2f 00 2f 00 63 00 61 00 69 00 78 00 61 00 64 00 69 00 72 00 65 00 63 00 74 00 61 00 2e 00 63 00 67 00 64 00 2e 00 70 00 74 00 } //01 00 
		$a_01_3 = {32 00 30 00 30 00 2e 00 31 00 33 00 2e 00 32 00 34 00 34 00 2e 00 32 00 34 00 35 00 2f 00 63 00 77 00 2d 00 61 00 73 00 73 00 65 00 6e 00 64 00 61 00 2f 00 62 00 69 00 6e 00 2f 00 65 00 73 00 } //01 00 
		$a_01_4 = {32 00 30 00 32 00 2e 00 39 00 36 00 2e 00 31 00 36 00 34 00 2e 00 37 00 30 00 2f 00 42 00 42 00 53 00 } //00 00 
	condition:
		any of ($a_*)
 
}