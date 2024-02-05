
rule TrojanDownloader_Win32_Delf_QG{
	meta:
		description = "TrojanDownloader:Win32/Delf.QG,SIGNATURE_TYPE_PEHSTR_EXT,02 00 02 00 04 00 00 01 00 "
		
	strings :
		$a_02_0 = {6a 00 ff 35 90 01 04 68 90 01 04 a1 90 01 04 8b 55 f8 ff 34 90 90 8d 45 e4 ba 03 00 00 00 e8 90 01 04 8b 45 e4 e8 90 01 04 50 e8 90 01 04 33 c0 5a 59 59 64 89 10 90 00 } //01 00 
		$a_02_1 = {8b 55 f8 8b 0c 90 90 8d 45 e8 8b 15 90 01 04 e8 90 01 04 8b 45 e8 e8 90 01 04 50 6a 00 e8 90 01 04 a1 90 01 04 8b 55 f8 8b 04 90 90 90 00 } //01 00 
		$a_02_2 = {8b 45 f4 e8 90 01 04 50 e8 90 01 04 68 e8 03 00 00 e8 90 01 04 8b 83 90 01 02 00 00 66 be eb ff e8 90 01 04 eb 30 80 bb 90 01 02 00 00 00 75 90 01 01 c6 83 90 01 02 00 00 01 90 00 } //01 00 
		$a_02_3 = {50 6a 00 e8 90 01 04 33 c0 5a 59 59 64 89 10 eb 90 01 01 e9 90 01 04 e8 90 01 04 68 e8 03 00 00 e8 90 01 04 8b 45 fc 8b 80 18 03 00 00 66 be eb ff 90 00 } //00 00 
	condition:
		any of ($a_*)
 
}