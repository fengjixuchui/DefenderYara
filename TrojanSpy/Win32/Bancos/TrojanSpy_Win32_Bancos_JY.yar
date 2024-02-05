
rule TrojanSpy_Win32_Bancos_JY{
	meta:
		description = "TrojanSpy:Win32/Bancos.JY,SIGNATURE_TYPE_PEHSTR_EXT,07 00 06 00 07 00 00 01 00 "
		
	strings :
		$a_01_0 = {55 52 4c 44 6f 77 6e 6c 6f 61 64 54 6f 46 69 6c 65 41 } //01 00 
		$a_00_1 = {61 72 71 75 69 76 6f 2e 74 78 74 } //01 00 
		$a_00_2 = {69 6e 6c 67 78 70 2e 6c 6f 67 } //01 00 
		$a_01_3 = {45 34 31 34 44 44 30 33 33 46 34 42 34 39 33 33 45 44 36 31 45 42 30 42 33 32 39 31 43 41 37 39 45 30 32 30 30 42 34 35 45 31 31 35 32 35 41 37 33 44 39 35 38 44 42 44 36 45 38 33 45 41 30 30 34 34 46 46 33 34 44 32 30 38 32 32 30 37 32 43 45 39 31 44 } //01 00 
		$a_01_4 = {37 45 39 38 38 37 42 32 35 38 46 38 35 39 38 35 41 32 32 42 41 39 39 33 34 45 46 46 34 34 } //01 00 
		$a_01_5 = {44 42 34 36 44 35 36 33 38 38 43 38 30 39 33 35 44 32 37 42 44 39 34 43 38 36 43 37 30 43 } //01 00 
		$a_01_6 = {31 30 30 41 31 31 33 43 44 31 37 36 44 34 30 31 32 36 41 45 32 44 31 46 44 35 37 37 44 42 } //00 00 
	condition:
		any of ($a_*)
 
}