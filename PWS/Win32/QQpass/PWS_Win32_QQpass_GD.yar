
rule PWS_Win32_QQpass_GD{
	meta:
		description = "PWS:Win32/QQpass.GD,SIGNATURE_TYPE_PEHSTR,05 00 04 00 05 00 00 01 00 "
		
	strings :
		$a_01_0 = {48 6f 6d 65 2e 76 62 73 00 22 29 0d 0a 64 6f 20 75 6e 74 69 6c 20 69 65 2e 72 65 61 64 79 73 74 61 74 65 3d 34 0d 0a 6c 6f 6f 70 0d 0a 73 65 74 20 69 65 3d 6e 6f 74 68 69 6e 67 00 26 51 51 50 61 73 73 57 6f 72 64 3d 00 } //01 00 
		$a_01_1 = {2f 66 69 6e 64 2e 61 73 70 3f 51 51 4e 75 6d 62 65 72 3d 00 } //01 00 
		$a_01_2 = {73 65 74 20 69 65 3d 63 72 65 61 74 65 6f 62 6a 65 63 74 28 22 69 6e 74 65 72 6e 65 74 65 78 70 6c 6f 72 65 72 2e 61 70 70 6c 69 63 61 74 69 6f 6e 22 29 0d 0a 69 65 2e 76 69 73 69 62 6c 65 3d 46 41 4c 53 45 0d 0a } //01 00 
		$a_01_3 = {40 55 73 65 72 00 43 3a 5c 55 73 65 72 57 6f 72 64 2e 69 6e 69 00 5c 48 6f 74 4b 65 79 54 61 79 2e 69 6e 69 00 49 20 27 6d 20 73 6f 72 72 79 00 } //01 00 
		$a_01_4 = {71 70 6c 75 73 72 70 00 71 70 72 65 67 69 73 74 72 00 } //00 00 
	condition:
		any of ($a_*)
 
}