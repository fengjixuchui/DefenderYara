
rule TrojanDownloader_Win32_Jizog_A{
	meta:
		description = "TrojanDownloader:Win32/Jizog.A,SIGNATURE_TYPE_PEHSTR,06 00 06 00 06 00 00 01 00 "
		
	strings :
		$a_01_0 = {55 52 4c 44 6f 77 6e 6c 6f 61 64 54 6f 46 69 6c 65 41 } //01 00 
		$a_01_1 = {62 00 65 00 61 00 75 00 74 00 69 00 66 00 75 00 6c 00 63 00 6f 00 6c 00 6c 00 65 00 67 00 65 00 76 00 69 00 65 00 77 00 2e 00 63 00 6f 00 6d 00 2f 00 6a 00 69 00 7a 00 68 00 6f 00 6e 00 67 00 2f 00 6a 00 69 00 7a 00 68 00 6f 00 6e 00 67 00 2e 00 65 00 78 00 65 00 } //01 00 
		$a_01_2 = {4e 00 4f 00 54 00 45 00 44 00 41 00 44 00 2e 00 45 00 58 00 45 00 20 00 25 00 31 00 } //01 00 
		$a_01_3 = {49 00 45 00 78 00 70 00 6c 00 6f 00 72 00 65 00 72 00 2e 00 64 00 6c 00 6c 00 20 00 20 00 20 00 20 00 20 00 20 00 20 00 20 00 20 00 20 00 20 00 20 00 20 00 20 00 20 00 20 00 20 00 20 00 20 00 20 00 20 00 20 00 20 00 20 00 20 00 20 00 20 00 20 00 20 00 20 00 20 00 20 00 20 00 20 00 20 00 20 00 20 00 20 00 20 00 20 00 20 00 20 00 20 00 20 00 20 00 20 00 20 00 20 00 20 00 20 00 20 00 20 00 20 00 20 00 20 00 20 00 20 00 20 00 20 00 20 00 20 00 20 00 2e 00 64 00 62 00 74 00 } //01 00 
		$a_01_4 = {74 00 78 00 74 00 66 00 69 00 6c 00 65 00 5c 00 73 00 68 00 65 00 6c 00 6c 00 5c 00 6f 00 70 00 65 00 6e 00 5c 00 63 00 6f 00 6d 00 6d 00 61 00 6e 00 64 00 } //01 00 
		$a_01_5 = {5c 00 57 00 69 00 6e 00 64 00 6f 00 77 00 73 00 5c 00 43 00 75 00 72 00 72 00 65 00 6e 00 74 00 56 00 65 00 72 00 73 00 69 00 6f 00 6e 00 5c 00 52 00 75 00 6e 00 5c 00 49 00 45 00 53 00 65 00 74 00 } //00 00 
	condition:
		any of ($a_*)
 
}