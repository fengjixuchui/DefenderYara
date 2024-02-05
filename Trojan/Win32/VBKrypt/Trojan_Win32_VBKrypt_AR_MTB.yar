
rule Trojan_Win32_VBKrypt_AR_MTB{
	meta:
		description = "Trojan:Win32/VBKrypt.AR!MTB,SIGNATURE_TYPE_PEHSTR,06 00 06 00 06 00 00 01 00 "
		
	strings :
		$a_01_0 = {6a 00 44 00 48 00 66 00 41 00 36 00 46 00 78 00 6f 00 4e 00 6f 00 63 00 67 00 32 00 76 00 7a 00 38 00 48 00 56 00 6c 00 32 00 79 00 56 00 55 00 52 00 49 00 49 00 30 00 74 00 72 00 33 00 42 00 30 00 39 00 69 00 33 00 72 00 47 00 73 00 33 00 31 00 } //01 00 
		$a_01_1 = {4d 00 36 00 43 00 30 00 47 00 33 00 55 00 53 00 34 00 39 00 34 00 66 00 46 00 76 00 53 00 42 00 79 00 61 00 37 00 6d 00 36 00 6f 00 64 00 34 00 39 00 53 00 31 00 30 00 77 00 79 00 56 00 51 00 46 00 6d 00 36 00 32 00 33 00 38 00 } //01 00 
		$a_01_2 = {45 00 77 00 79 00 45 00 66 00 75 00 79 00 62 00 69 00 44 00 74 00 42 00 44 00 32 00 6e 00 52 00 68 00 35 00 6e 00 42 00 34 00 57 00 6c 00 6b 00 6a 00 65 00 4a 00 47 00 52 00 58 00 4d 00 35 00 6a 00 4e 00 51 00 32 00 34 00 30 00 } //01 00 
		$a_01_3 = {53 65 72 76 69 63 65 6f 6d 72 61 61 64 65 73 } //01 00 
		$a_01_4 = {73 6b 69 6c 74 65 6d 61 6c 65 72 65 } //01 00 
		$a_01_5 = {66 6f 72 65 63 61 73 74 6c 65 6d 61 6e } //00 00 
	condition:
		any of ($a_*)
 
}