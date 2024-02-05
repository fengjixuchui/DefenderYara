
rule TrojanSpy_Win32_Bancos_QI{
	meta:
		description = "TrojanSpy:Win32/Bancos.QI,SIGNATURE_TYPE_PEHSTR_EXT,04 00 04 00 04 00 00 01 00 "
		
	strings :
		$a_01_0 = {41 4c 4c 3a 21 41 44 48 3a 52 43 34 2b 52 53 41 3a 2b 48 49 47 48 3a 2b 4d 45 44 49 55 4d 3a 2b 4c 4f 57 3a 2b 53 53 4c 76 32 3a 2b 45 58 50 00 } //01 00 
		$a_01_1 = {42 72 61 64 65 73 63 6f 20 53 65 67 75 72 61 6e e7 61 00 } //01 00 
		$a_01_2 = {53 65 6e 68 61 20 64 6f 20 43 61 72 74 e3 6f 2e 2e 2e 2e 2e 2e 2e 3a 00 } //01 00 
		$a_01_3 = {50 6c 65 61 73 65 20 72 75 6e 20 61 20 76 69 72 75 73 2d 63 68 65 63 6b 2c 20 74 68 65 6e 20 72 65 69 6e 73 74 61 6c 6c 20 74 68 65 20 61 70 70 6c 69 63 61 74 69 6f 6e 2e 00 } //00 00 
	condition:
		any of ($a_*)
 
}