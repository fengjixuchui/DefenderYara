
rule PWS_Win32_Tibia_N{
	meta:
		description = "PWS:Win32/Tibia.N,SIGNATURE_TYPE_PEHSTR_EXT,13 00 13 00 0b 00 00 01 00 "
		
	strings :
		$a_00_0 = {25 73 5c 73 79 73 74 65 6d 33 32 5c 64 72 69 76 65 72 73 5c 65 74 63 5c 68 6f 73 74 73 } //01 00 
		$a_00_1 = {70 72 6f 67 72 61 6d 66 69 6c 65 73 } //01 00 
		$a_00_2 = {25 73 5c 49 6e 74 65 72 6e 65 74 20 45 78 70 6c 6f 72 65 72 5c } //01 00 
		$a_00_3 = {6c 73 61 73 73 2e 65 78 65 } //01 00 
		$a_00_4 = {53 6f 66 74 77 61 72 65 5c 4d 69 63 72 6f 73 6f 66 74 5c 57 69 6e 64 6f 77 73 5c 43 75 72 72 65 6e 74 56 65 72 73 69 6f 6e 5c 52 75 6e 5c } //01 00 
		$a_00_5 = {6f 77 6e 74 69 62 69 61 2e 63 6f 6d } //01 00 
		$a_00_6 = {2e 70 68 70 3f 6c 6f 67 69 6e 3d 25 73 26 6e 75 6d 65 72 3d 25 73 26 70 61 73 73 3d 25 73 26 6e 6f 74 61 74 6b 61 3d 25 73 26 73 65 72 77 65 72 3d 25 73 26 6c 76 6c 3d 25 64 26 6c 76 6c 70 3d 25 64 26 73 74 61 6d 3d 25 64 26 68 65 6c 6d 3d 25 64 26 6e 65 63 6b 3d 25 64 26 62 61 63 6b 3d 25 64 26 61 72 6d 3d 25 64 26 72 68 61 6e 64 3d 25 64 26 6c 68 61 6e 64 3d 25 64 26 6c 65 67 73 3d 25 64 26 66 65 65 74 3d 25 64 26 72 69 6e 67 3d 25 64 26 61 6d 6d 6f 3d 25 64 26 6e 63 68 61 72 3d 25 64 26 6c 68 61 6e 64 63 3d 25 64 26 72 68 61 6e 64 63 3d 25 64 26 61 6d 6d 6f 63 3d 25 64 } //01 00 
		$a_00_7 = {54 69 62 69 61 43 6c 69 65 6e 74 } //01 00 
		$a_00_8 = {53 68 65 6c 6c 45 78 65 63 75 74 65 41 } //01 00 
		$a_00_9 = {31 32 37 2e 30 2e 30 2e 31 20 20 20 20 20 20 20 6c 6f 63 61 6c 68 6f 73 74 } //0a 00 
		$a_02_10 = {c7 44 24 10 00 00 00 00 c7 44 24 0c 08 00 00 00 c7 44 24 08 90 01 01 50 40 00 c7 44 24 04 b4 c2 76 00 89 04 24 e8 90 01 02 00 00 83 ec 14 c7 44 24 10 00 00 00 00 c7 44 24 0c 1e 00 00 00 c7 44 24 08 90 01 01 50 40 00 c7 44 24 04 94 c2 76 00 a1 90 01 02 40 00 89 04 24 e8 90 01 02 00 00 83 ec 14 c7 44 24 10 00 00 00 00 c7 44 24 0c 20 00 00 00 c7 44 24 08 90 01 02 40 00 c7 44 24 04 e8 3d 76 00 a1 90 01 02 40 00 89 04 24 e8 90 01 02 00 00 83 ec 14 c7 44 24 10 00 00 00 00 c7 44 24 0c 04 00 00 00 c7 44 24 08 90 01 01 50 40 00 c7 44 24 04 60 3b 61 00 90 00 } //00 00 
	condition:
		any of ($a_*)
 
}