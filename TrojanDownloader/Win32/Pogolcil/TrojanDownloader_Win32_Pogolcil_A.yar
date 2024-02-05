
rule TrojanDownloader_Win32_Pogolcil_A{
	meta:
		description = "TrojanDownloader:Win32/Pogolcil.A,SIGNATURE_TYPE_PEHSTR_EXT,07 00 07 00 05 00 00 02 00 "
		
	strings :
		$a_01_0 = {44 00 6f 00 77 00 6e 00 6c 00 6f 00 61 00 64 00 54 00 68 00 72 00 65 00 61 00 64 00 20 00 64 00 6f 00 6e 00 65 00 21 00 63 00 68 00 65 00 63 00 6b 00 20 00 66 00 69 00 6c 00 65 00 } //02 00 
		$a_01_1 = {65 00 76 00 65 00 72 00 79 00 74 00 68 00 69 00 6e 00 67 00 20 00 69 00 73 00 20 00 64 00 6f 00 6e 00 65 00 21 00 64 00 65 00 6c 00 65 00 74 00 65 00 20 00 6d 00 65 00 20 00 6e 00 6f 00 77 00 } //02 00 
		$a_01_2 = {66 00 75 00 63 00 6b 00 69 00 6e 00 67 00 } //01 00 
		$a_01_3 = {5c 00 50 00 72 00 6f 00 78 00 79 00 47 00 61 00 74 00 65 00 5c 00 } //01 00 
		$a_01_4 = {68 00 74 00 74 00 70 00 73 00 3a 00 2f 00 2f 00 31 00 30 00 37 00 2e 00 31 00 35 00 31 00 2e 00 31 00 35 00 32 00 2e 00 32 00 32 00 30 00 3a 00 35 00 36 00 35 00 38 00 } //00 00 
		$a_00_5 = {5d 04 00 } //00 25 
	condition:
		any of ($a_*)
 
}