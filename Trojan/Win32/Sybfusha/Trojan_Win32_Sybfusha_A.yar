
rule Trojan_Win32_Sybfusha_A{
	meta:
		description = "Trojan:Win32/Sybfusha.A,SIGNATURE_TYPE_PEHSTR_EXT,07 00 07 00 08 00 00 04 00 "
		
	strings :
		$a_01_0 = {5c 00 73 00 79 00 73 00 66 00 75 00 63 00 6b 00 65 00 72 00 5c 00 50 00 72 00 6f 00 6a 00 65 00 63 00 74 00 } //01 00 
		$a_01_1 = {73 00 74 00 61 00 72 00 74 00 20 00 63 00 3a 00 5c 00 77 00 69 00 6e 00 64 00 6f 00 77 00 73 00 5c 00 6e 00 6f 00 74 00 66 00 61 00 6c 00 6c 00 2e 00 62 00 61 00 74 00 } //01 00 
		$a_01_2 = {73 00 68 00 75 00 74 00 64 00 6f 00 77 00 6e 00 20 00 2d 00 73 00 20 00 2d 00 74 00 20 00 31 00 30 00 20 00 2d 00 66 00 } //01 00 
		$a_01_3 = {63 00 6d 00 64 00 20 00 2f 00 63 00 20 00 65 00 72 00 61 00 73 00 65 00 20 00 2f 00 66 00 20 00 25 00 48 00 4f 00 4d 00 45 00 44 00 52 00 49 00 56 00 45 00 25 00 5c 00 62 00 6f 00 6f 00 74 00 2e 00 69 00 6e 00 69 00 } //01 00 
		$a_01_4 = {63 00 6d 00 64 00 20 00 2f 00 63 00 20 00 61 00 73 00 73 00 6f 00 63 00 20 00 2e 00 65 00 78 00 65 00 3d 00 57 00 69 00 6e 00 52 00 41 00 52 00 } //01 00 
		$a_01_5 = {6e 00 65 00 74 00 20 00 75 00 73 00 65 00 72 00 20 00 41 00 64 00 6d 00 69 00 6e 00 69 00 73 00 74 00 72 00 61 00 74 00 6f 00 72 00 20 00 2f 00 61 00 63 00 74 00 69 00 76 00 65 00 3a 00 6e 00 6f 00 } //01 00 
		$a_01_6 = {2f 00 63 00 20 00 64 00 65 00 6c 00 20 00 2f 00 71 00 20 00 25 00 77 00 69 00 6e 00 64 00 69 00 72 00 25 00 5c 00 72 00 65 00 70 00 61 00 69 00 72 00 5c 00 2a 00 2e 00 2a 00 } //01 00 
		$a_01_7 = {63 00 6d 00 64 00 20 00 2f 00 63 00 20 00 74 00 73 00 6b 00 69 00 6c 00 6c 00 20 00 2f 00 66 00 20 00 69 00 63 00 71 00 } //00 00 
		$a_00_8 = {87 10 00 00 9e } //77 d6 
	condition:
		any of ($a_*)
 
}