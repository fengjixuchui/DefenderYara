
rule Trojan_Win32_Morto_C{
	meta:
		description = "Trojan:Win32/Morto.C,SIGNATURE_TYPE_PEHSTR_EXT,05 00 05 00 04 00 00 02 00 "
		
	strings :
		$a_03_0 = {8b 54 24 3c 68 02 00 00 80 42 6a 04 89 54 24 44 8d 54 24 44 6a 04 52 68 90 01 04 68 90 01 04 e8 90 01 04 83 c4 2c 8d 44 24 0c 50 90 00 } //01 00 
		$a_00_1 = {53 59 53 54 45 4d 5c 57 70 61 00 00 62 72 6b } //01 00 
		$a_03_2 = {5f 25 30 33 64 5f 25 30 32 64 2d 25 30 32 64 20 25 64 3a 25 64 3a 25 64 90 09 04 00 62 72 6b 90 00 } //01 00 
		$a_00_3 = {53 65 53 68 75 74 64 6f 77 6e 50 72 69 76 69 6c 65 67 65 00 62 72 6b 6c 74 } //00 00 
	condition:
		any of ($a_*)
 
}