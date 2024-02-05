
rule TrojanSpy_Win32_Bancos_AGL{
	meta:
		description = "TrojanSpy:Win32/Bancos.AGL,SIGNATURE_TYPE_PEHSTR_EXT,18 00 18 00 09 00 00 0f 00 "
		
	strings :
		$a_03_0 = {89 01 8b 45 98 89 41 04 b8 90 01 04 89 41 08 8b 45 a0 89 41 0c 8b cc b8 09 00 00 00 6a 03 89 01 90 00 } //05 00 
		$a_01_1 = {5c 00 61 00 6e 00 74 00 69 00 20 00 66 00 75 00 64 00 65 00 72 00 6f 00 73 00 6f 00 5c 00 } //05 00 
		$a_01_2 = {5c 00 62 00 62 00 20 00 73 00 61 00 6c 00 76 00 61 00 20 00 74 00 78 00 74 00 5c 00 } //01 00 
		$a_01_3 = {53 00 68 00 65 00 6c 00 6c 00 2e 00 45 00 78 00 70 00 6c 00 6f 00 72 00 65 00 72 00 2e 00 32 00 } //01 00 
		$a_01_4 = {77 00 65 00 62 00 63 00 74 00 6c 00 00 00 } //01 00 
		$a_01_5 = {6e 00 61 00 76 00 69 00 67 00 61 00 74 00 65 00 32 00 } //01 00 
		$a_01_6 = {41 74 75 61 6c 69 7a 61 e7 e3 6f 20 64 65 20 53 65 67 75 72 61 6e e7 61 } //01 00 
		$a_01_7 = {43 61 64 61 73 74 72 6f } //01 00 
		$a_01_8 = {44 69 73 70 6f 73 69 74 69 76 6f } //00 00 
	condition:
		any of ($a_*)
 
}