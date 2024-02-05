
rule Trojan_Win32_VBObfuse_SO_eml{
	meta:
		description = "Trojan:Win32/VBObfuse.SO!eml,SIGNATURE_TYPE_PEHSTR_EXT,06 00 06 00 08 00 00 03 00 "
		
	strings :
		$a_01_0 = {6e 00 4a 00 35 00 48 00 58 00 6e 00 65 00 65 00 49 00 64 00 45 00 72 00 58 00 35 00 6d 00 7a 00 5a 00 31 00 33 00 } //03 00 
		$a_01_1 = {6c 00 6c 00 44 00 55 00 4d 00 74 00 62 00 44 00 49 00 41 00 6f 00 44 00 34 00 48 00 4a 00 50 00 39 00 4a 00 32 00 59 00 4a 00 63 00 66 00 35 00 34 00 } //01 00 
		$a_01_2 = {70 00 59 00 63 00 38 00 65 00 39 00 54 00 79 00 7a 00 75 00 32 00 55 00 75 00 38 00 68 00 59 00 38 00 51 00 6e 00 6d 00 69 00 46 00 62 00 66 00 5a 00 53 00 33 00 6f 00 72 00 30 00 6f 00 72 00 6d 00 6b 00 73 00 6e 00 6a 00 72 00 76 00 33 00 34 00 } //01 00 
		$a_01_3 = {70 00 61 00 71 00 77 00 6a 00 42 00 56 00 52 00 34 00 6a 00 61 00 6a 00 71 00 6b 00 36 00 51 00 33 00 5a 00 4c 00 39 00 73 00 34 00 53 00 54 00 63 00 63 00 46 00 65 00 6c 00 74 00 55 00 42 00 64 00 6b 00 6b 00 47 00 39 00 33 00 } //01 00 
		$a_01_4 = {73 00 6a 00 43 00 58 00 67 00 53 00 62 00 47 00 39 00 6d 00 78 00 74 00 75 00 73 00 39 00 66 00 41 00 35 00 4d 00 32 00 74 00 57 00 57 00 79 00 31 00 63 00 46 00 39 00 67 00 42 00 6a 00 56 00 59 00 44 00 57 00 37 00 75 00 38 00 31 00 35 00 37 00 } //01 00 
		$a_01_5 = {51 00 61 00 47 00 43 00 78 00 32 00 75 00 38 00 70 00 71 00 74 00 33 00 72 00 6a 00 64 00 4f 00 6a 00 6b 00 70 00 4c 00 39 00 32 00 57 00 75 00 64 00 70 00 72 00 31 00 34 00 37 00 } //01 00 
		$a_01_6 = {72 00 43 00 61 00 56 00 6e 00 38 00 31 00 79 00 66 00 71 00 46 00 69 00 67 00 58 00 78 00 72 00 4e 00 44 00 4d 00 36 00 52 00 42 00 31 00 39 00 33 00 } //01 00 
		$a_01_7 = {71 00 45 00 62 00 70 00 57 00 49 00 6f 00 4e 00 58 00 69 00 32 00 56 00 48 00 5a 00 70 00 47 00 5a 00 46 00 59 00 36 00 31 00 } //00 00 
	condition:
		any of ($a_*)
 
}