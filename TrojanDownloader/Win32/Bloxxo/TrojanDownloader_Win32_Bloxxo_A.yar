
rule TrojanDownloader_Win32_Bloxxo_A{
	meta:
		description = "TrojanDownloader:Win32/Bloxxo.A,SIGNATURE_TYPE_PEHSTR_EXT,03 00 03 00 04 00 00 01 00 "
		
	strings :
		$a_03_0 = {50 6a 00 6a 00 81 ce 00 80 00 00 56 6a 00 e8 90 01 03 ff eb 14 8b 07 e8 90 01 03 ff 50 6a 00 6a 00 56 6a 00 90 00 } //01 00 
		$a_01_1 = {36 00 41 00 46 00 31 00 35 00 33 00 38 00 31 00 44 00 39 00 31 00 35 00 37 00 30 00 45 00 41 00 32 00 44 00 44 00 38 00 36 00 34 00 46 00 46 00 } //01 00 
		$a_01_2 = {37 00 44 00 44 00 43 00 37 00 34 00 41 00 39 00 32 00 39 00 43 00 32 00 44 00 41 00 30 00 39 00 34 00 36 00 46 00 32 00 36 00 44 00 44 00 32 00 30 00 31 00 33 00 45 00 39 00 } //01 00 
		$a_01_3 = {62 00 6c 00 6f 00 6d 00 63 00 32 00 30 00 32 00 2e 00 74 00 78 00 74 00 } //00 00 
	condition:
		any of ($a_*)
 
}