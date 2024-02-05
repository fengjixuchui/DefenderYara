
rule Trojan_Win32_VB_DNB{
	meta:
		description = "Trojan:Win32/VB.DNB,SIGNATURE_TYPE_PEHSTR_EXT,4b 00 4b 00 10 00 00 0a 00 "
		
	strings :
		$a_01_0 = {4d 53 56 42 56 4d 36 30 2e 44 4c 4c } //0a 00 
		$a_00_1 = {66 00 7a 00 78 00 39 00 38 00 32 00 33 00 2e 00 76 00 62 00 70 00 } //0a 00 
		$a_01_2 = {7b 00 47 00 54 00 44 00 43 00 36 00 44 00 4a 00 30 00 2d 00 4f 00 54 00 52 00 57 00 2d 00 55 00 35 00 47 00 48 00 2d 00 53 00 31 00 45 00 45 00 2d 00 45 00 30 00 41 00 43 00 31 00 30 00 42 00 34 00 45 00 36 00 36 00 36 00 7d 00 } //0a 00 
		$a_01_3 = {7b 00 46 00 31 00 34 00 36 00 43 00 39 00 42 00 31 00 2d 00 56 00 4d 00 56 00 51 00 2d 00 41 00 39 00 52 00 43 00 2d 00 46 00 4c 00 55 00 4b 00 2d 00 44 00 30 00 42 00 41 00 38 00 36 00 42 00 34 00 45 00 39 00 39 00 39 00 7d 00 } //0a 00 
		$a_01_4 = {65 00 78 00 70 00 6c 00 6f 00 72 00 65 00 72 00 2e 00 65 00 78 00 65 00 } //0a 00 
		$a_00_5 = {73 00 76 00 63 00 68 00 6f 00 73 00 74 00 2e 00 65 00 78 00 65 00 } //0a 00 
		$a_00_6 = {66 00 7a 00 78 00 39 00 38 00 32 00 33 00 2e 00 65 00 78 00 65 00 } //01 00 
		$a_00_7 = {6d 6f 64 4b 65 79 73 } //01 00 
		$a_00_8 = {55 73 65 72 49 6e 69 74 } //01 00 
		$a_00_9 = {52 65 61 64 4d 65 6d 6f 72 79 } //01 00 
		$a_00_10 = {56 65 72 69 66 69 63 61 72 41 72 63 68 69 76 6f } //01 00 
		$a_01_11 = {43 6f 70 69 61 20 64 65 20 65 78 70 6c 6f 72 65 72 } //01 00 
		$a_00_12 = {53 68 65 6c 6c 45 78 65 63 75 74 65 41 } //01 00 
		$a_00_13 = {55 52 4c 44 6f 77 6e 6c 6f 61 64 54 6f 43 61 63 68 65 46 69 6c 65 41 } //01 00 
		$a_01_14 = {49 6e 74 65 72 6e 65 74 47 65 74 43 6f 6e 6e 65 63 74 65 64 53 74 61 74 65 } //01 00 
		$a_00_15 = {68 00 74 00 74 00 70 00 3a 00 2f 00 2f 00 65 00 32 00 32 00 33 00 70 00 67 00 2e 00 61 00 77 00 61 00 72 00 64 00 73 00 70 00 61 00 63 00 65 00 2e 00 63 00 6f 00 2e 00 75 00 6b 00 2f 00 75 00 70 00 2e 00 70 00 68 00 70 00 } //00 00 
	condition:
		any of ($a_*)
 
}