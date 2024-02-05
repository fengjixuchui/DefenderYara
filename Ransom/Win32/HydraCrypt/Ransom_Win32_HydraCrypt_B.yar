
rule Ransom_Win32_HydraCrypt_B{
	meta:
		description = "Ransom:Win32/HydraCrypt.B,SIGNATURE_TYPE_PEHSTR_EXT,03 00 03 00 09 00 00 01 00 "
		
	strings :
		$a_01_0 = {8b 50 08 8b 48 20 8b 00 81 79 0c 33 00 32 00 75 ef } //01 00 
		$a_03_1 = {30 06 46 0f af c1 ba 90 01 04 ff 4d 0c 4a 03 c2 83 7d 0c 00 77 e9 90 00 } //01 00 
		$a_01_2 = {0f be c9 c1 c0 07 33 c1 42 8a 0a 84 c9 75 f1 } //01 00 
		$a_01_3 = {81 38 73 00 79 00 75 12 81 78 04 73 00 74 00 75 09 81 78 08 65 00 6d 00 74 0c } //01 00 
		$a_03_4 = {30 07 47 0f af c1 ba 90 01 04 ff 4d 0c 03 c2 40 40 83 7d 0c 00 77 e8 90 00 } //01 00 
		$a_03_5 = {30 07 47 0f af c1 68 90 01 04 5a ff 4d 0c 03 c2 40 83 7d 0c 00 77 e8 90 00 } //01 00 
		$a_01_6 = {c1 c0 07 0f be c9 33 c1 42 8a 0a 84 c9 75 f1 } //01 00 
		$a_01_7 = {8a 07 32 c3 88 06 47 2b f2 49 75 f4 } //01 00 
		$a_01_8 = {81 38 73 00 79 00 75 0e 81 78 04 73 00 74 00 75 05 39 48 08 74 0f } //00 00 
		$a_00_9 = {7e 15 } //00 00 
	condition:
		any of ($a_*)
 
}