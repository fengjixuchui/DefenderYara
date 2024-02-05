
rule TrojanDownloader_BAT_Fofldr_A{
	meta:
		description = "TrojanDownloader:BAT/Fofldr.A,SIGNATURE_TYPE_PEHSTR_EXT,07 00 07 00 05 00 00 01 00 "
		
	strings :
		$a_01_0 = {4c 6f 61 64 65 73 5c 4c 6f 61 64 65 72 } //02 00 
		$a_01_1 = {43 00 3a 00 5c 00 50 00 72 00 6f 00 67 00 72 00 61 00 6d 00 44 00 61 00 74 00 61 00 5c 00 50 00 72 00 6f 00 74 00 65 00 63 00 74 00 65 00 64 00 4f 00 62 00 6a 00 65 00 63 00 74 00 2e 00 63 00 70 00 6c 00 } //01 00 
		$a_03_2 = {68 00 74 00 74 00 70 00 3a 00 2f 00 2f 00 77 00 77 00 77 00 2e 00 6d 00 6f 00 75 00 73 00 65 00 2e 00 6e 00 65 00 74 00 2e 00 62 00 72 00 2f 00 63 00 6c 00 61 00 2f 00 90 02 10 2e 00 68 00 62 00 32 00 90 00 } //02 00 
		$a_03_3 = {43 00 3a 00 5c 00 50 00 72 00 6f 00 67 00 72 00 61 00 6d 00 44 00 61 00 74 00 61 00 5c 00 90 02 10 2e 00 68 00 62 00 32 00 90 00 } //01 00 
		$a_03_4 = {44 6f 77 6e 6c 6f 61 64 46 69 6c 65 90 02 20 50 72 6f 63 65 73 73 90 02 20 48 69 64 65 90 00 } //00 00 
		$a_00_5 = {5d 04 00 00 } //c1 42 
	condition:
		any of ($a_*)
 
}