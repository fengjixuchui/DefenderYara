
rule Worm_Win32_Phorpiex_V{
	meta:
		description = "Worm:Win32/Phorpiex.V,SIGNATURE_TYPE_PEHSTR_EXT,04 00 04 00 07 00 00 01 00 "
		
	strings :
		$a_03_0 = {8b f0 83 c4 04 c6 06 00 ff 90 02 05 50 e8 90 01 04 83 c4 04 90 02 15 99 b9 0a 00 00 00 f7 f9 52 56 68 90 00 } //01 00 
		$a_03_1 = {8b f0 83 c4 04 88 1e ff 90 02 05 50 e8 90 01 04 83 c4 04 90 02 15 99 b9 0a 00 00 00 f7 f9 52 56 68 90 00 } //01 00 
		$a_03_2 = {b9 07 00 00 00 be 90 01 04 8d 7c 24 90 01 01 f3 a5 66 a5 8d 84 24 90 01 02 00 00 50 68 04 01 00 00 a4 ff 15 90 00 } //01 00 
		$a_03_3 = {25 73 5c 25 73 2e 65 78 65 00 00 90 0a 0a 00 2e 65 78 65 90 00 } //01 00 
		$a_03_4 = {00 25 73 25 64 00 00 90 02 50 68 74 74 70 3a 2f 2f 90 00 } //01 00 
		$a_01_5 = {5c 55 73 65 72 73 5c 73 5c 44 65 73 6b 74 6f 70 5c 47 65 74 5c 52 65 6c 65 61 73 65 5c 47 4c 6f 61 64 2e 70 64 62 00 } //01 00 
		$a_01_6 = {50 61 69 6e 74 00 00 00 41 6e 20 75 6e 64 65 66 69 6e 65 64 20 65 72 72 6f 72 20 68 61 73 20 6f 63 63 75 72 72 65 64 20 2d 20 25 75 00 00 00 00 } //00 00 
		$a_00_7 = {5d 04 00 } //00 70 
	condition:
		any of ($a_*)
 
}