
rule TrojanDownloader_Win32_Bancos_EX{
	meta:
		description = "TrojanDownloader:Win32/Bancos.EX,SIGNATURE_TYPE_PEHSTR_EXT,03 00 03 00 06 00 00 01 00 "
		
	strings :
		$a_03_0 = {75 23 69 25 76 90 01 01 6f 90 01 03 63 90 01 01 6f 90 01 01 72 90 01 01 72 90 01 01 6f 90 01 01 6d 90 01 01 70 90 01 01 69 90 01 01 64 90 01 01 6f 90 00 } //01 00 
		$a_03_1 = {63 23 73 23 73 90 01 01 72 90 01 01 73 90 01 01 61 90 00 } //01 00 
		$a_03_2 = {63 2a 6f 23 6e 90 01 01 74 90 01 01 61 90 01 01 64 90 01 01 6f 90 01 01 72 90 01 01 2e 90 01 01 70 90 01 01 68 90 01 01 70 90 01 01 3f 90 01 01 75 90 01 01 72 90 01 01 6c 90 01 01 3d 90 00 } //01 00 
		$a_03_3 = {63 23 6f 23 6e 90 01 01 74 90 01 01 61 90 01 01 64 90 01 01 6f 90 01 01 72 90 01 01 2e 90 01 01 70 90 01 01 68 90 01 01 70 90 01 01 3f 90 01 01 75 90 01 01 72 90 01 01 6c 90 01 01 3d 90 00 } //01 00 
		$a_01_4 = {2e 63 70 6c 00 43 50 6c 41 70 70 6c 65 74 } //01 00 
		$a_01_5 = {43 3a 5c 70 72 6f 67 72 61 6d 66 69 6c 65 73 5c 63 73 73 72 73 61 2e 65 78 65 } //00 00 
	condition:
		any of ($a_*)
 
}