
rule TrojanDownloader_Win32_QQHelper_T{
	meta:
		description = "TrojanDownloader:Win32/QQHelper.T,SIGNATURE_TYPE_PEHSTR_EXT,17 00 16 00 05 00 00 0a 00 "
		
	strings :
		$a_02_0 = {c7 45 bc 00 00 00 00 eb 01 90 01 01 68 90 01 02 40 00 e8 90 01 02 00 00 83 c4 04 68 90 01 02 40 00 8d 8d a4 fd ff ff e8 90 01 02 00 00 90 00 } //0a 00 
		$a_02_1 = {68 74 74 70 3a 2f 2f 69 6e 73 74 61 6c 6c 90 01 01 2e 72 69 6e 67 35 32 30 2e 6f 72 67 2f 6b 6b 6b 6b 2f 6d 6d 69 6e 73 74 61 6c 6c 2e 65 78 65 3f 71 75 65 72 79 69 64 3d 90 00 } //01 00 
		$a_00_2 = {5c 74 65 6d 70 61 71 20 37 30 30 } //01 00 
		$a_00_3 = {53 65 74 75 70 49 64 } //01 00 
		$a_00_4 = {53 63 6f 72 65 } //00 00 
	condition:
		any of ($a_*)
 
}