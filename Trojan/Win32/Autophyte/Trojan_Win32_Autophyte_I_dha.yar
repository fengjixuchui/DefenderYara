
rule Trojan_Win32_Autophyte_I_dha{
	meta:
		description = "Trojan:Win32/Autophyte.I!dha,SIGNATURE_TYPE_PEHSTR_EXT,0a 00 0a 00 13 00 00 0a 00 "
		
	strings :
		$a_02_0 = {8a 08 fe c9 80 f9 62 88 08 7c 90 01 01 80 f9 79 7f 90 01 01 b2 db 2a d1 88 10 8a 48 01 40 84 c9 75 90 00 } //01 00 
		$a_01_1 = {53 77 75 73 69 68 77 6a 54 77 6a 66 73 79 77 44 68 6a 70 49 62 6e 78 70 77 6a 58 00 } //01 00 
		$a_01_2 = {44 74 62 6e 75 77 54 77 6a 66 73 79 77 44 6d 6e 76 73 75 33 58 00 } //01 00 
		$a_01_3 = {4d 6d 6d 71 67 6c 51 6a 73 66 73 70 77 75 77 57 62 70 67 77 58 00 } //01 00 
		$a_01_4 = {58 6d 65 37 35 45 73 69 62 7a 70 77 58 6d 65 37 35 47 69 53 77 78 73 6a 77 79 68 73 6d 6e 00 } //01 00 
		$a_01_5 = {47 6a 77 77 4d 73 7a 6a 62 6a 63 00 } //01 00 
		$a_01_6 = {57 73 6a 68 67 62 70 42 70 70 6d 79 00 } //01 00 
		$a_01_7 = {44 6a 77 62 68 77 54 77 6a 66 73 79 77 58 00 } //01 00 
		$a_01_8 = {50 6c 77 6e 51 6a 6d 79 77 69 69 00 } //01 00 
		$a_01_9 = {54 77 68 47 73 70 77 51 6d 73 6e 68 77 6a 00 } //01 00 
		$a_01_10 = {47 73 6e 78 53 77 69 6d 67 6a 79 77 58 00 } //01 00 
		$a_01_11 = {58 73 6e 46 64 77 79 00 } //01 00 
		$a_01_12 = {58 54 42 44 70 77 62 6e 67 6c 00 } //01 00 
		$a_01_13 = {4e 6d 78 67 70 77 34 33 47 73 6a 69 68 58 00 } //01 00 
		$a_01_14 = {57 73 6a 68 67 62 70 51 6a 6d 68 77 79 68 46 64 00 } //01 00 
		$a_01_15 = {54 77 68 46 6a 6a 6d 6a 4e 6d 78 77 00 } //01 00 
		$a_01_16 = {48 77 68 45 6a 73 66 77 55 63 6c 77 58 00 } //01 00 
		$a_01_17 = {69 77 70 77 79 68 00 } //01 00 
		$a_01_18 = {69 74 67 68 78 6d 65 6e 00 } //00 00 
	condition:
		any of ($a_*)
 
}