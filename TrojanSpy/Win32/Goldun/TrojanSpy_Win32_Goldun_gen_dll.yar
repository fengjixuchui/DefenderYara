
rule TrojanSpy_Win32_Goldun_gen_dll{
	meta:
		description = "TrojanSpy:Win32/Goldun.gen!dll,SIGNATURE_TYPE_PEHSTR_EXT,12 00 0e 00 15 00 00 04 00 "
		
	strings :
		$a_00_0 = {74 1f 8b 4c 24 0c 81 39 77 77 77 2e 75 03 83 c1 04 } //04 00 
		$a_00_1 = {c7 42 06 62 61 6c 61 c7 42 0a 6e 63 65 2e } //03 00 
		$a_00_2 = {8a 06 46 51 8a 4d f7 d2 c8 59 50 56 ff 45 f8 8b 75 f8 8a 06 46 8b 5d fc 39 5d f8 75 0c } //03 00 
		$a_00_3 = {8b 54 24 0c 81 7a 02 63 63 74 } //02 00 
		$a_00_4 = {81 bd d4 fe ff ff 45 64 69 74 74 08 } //02 00 
		$a_00_5 = {0c 81 c1 00 10 00 00 c1 e9 0c 8b 7d 08 c1 ef 0c 68 00 00 06 20 6a 00 51 57 68 0d 00 01 00 ff 96 } //03 00 
		$a_01_6 = {3b 20 6d 61 69 6c 73 65 72 76 3a 20 25 73 20 3b 20 70 61 73 73 77 6f 72 64 3a 20 25 73 } //03 00 
		$a_01_7 = {26 69 6e 66 6f 3d 00 77 77 77 2e 65 2d 67 6f 6c 64 2e 63 6f 6d } //03 00 
		$a_01_8 = {3d 00 52 65 66 65 72 65 72 3a 20 68 74 74 70 73 3a 2f 2f 77 77 77 2e 65 2d 67 6f 6c 64 2e 63 6f 6d } //03 00 
		$a_01_9 = {50 4f 53 54 20 2f 25 73 3f 6f 73 3d 6e 74 20 48 54 54 50 2f 31 2e 31 } //03 00 
		$a_01_10 = {2d 67 6f 6c 64 2e 63 6f 6d 2f 61 63 63 74 2f 61 69 2e 61 73 70 0d 0a 43 6f 6e 74 65 6e 74 2d 54 79 70 65 3a 20 61 70 70 6c 69 63 61 74 69 6f 6e 2f 78 2d 77 } //03 00 
		$a_01_11 = {6e 00 5c 5c 2e 5c 70 69 70 65 5c 49 45 53 34 } //02 00 
		$a_01_12 = {4e 74 50 72 6f 74 65 63 74 56 69 72 74 75 61 6c 4d 65 6d 6f 72 79 00 5c 64 72 69 76 65 72 73 5c } //02 00 
		$a_01_13 = {47 45 54 20 2f 25 73 3f 70 61 72 61 6d 3d 63 6d 64 } //02 00 
		$a_00_14 = {2d 6c 61 62 73 2e 63 6f 6d 00 66 74 70 2e 66 2d 73 65 63 75 72 65 2e 63 6f 6d } //01 00 
		$a_00_15 = {3d 6c 6f 67 69 6e 20 61 63 74 69 6f 6e 3d 27 62 61 6c 61 6e 63 65 2e 61 73 70 27 3e } //01 00 
		$a_00_16 = {5c 64 72 69 76 65 72 73 5c 65 74 63 5c 68 6f 73 74 73 } //01 00 
		$a_00_17 = {63 65 73 5c 53 68 61 72 65 64 41 63 63 65 73 73 5c 50 61 72 61 6d 65 74 65 72 73 5c 46 69 72 65 77 61 6c 6c 50 6f 6c 69 } //01 00 
		$a_00_18 = {4e 74 57 72 69 74 65 56 69 72 74 75 61 6c 4d 65 6d 6f 72 79 } //01 00 
		$a_00_19 = {61 74 65 73 31 2e 6b 61 73 70 65 72 73 6b 79 2d 6c 61 62 73 2e 63 6f 6d 00 75 70 64 61 74 65 73 } //01 00 
		$a_00_20 = {64 6f 77 6e 6c 6f 61 64 2e 6d 63 61 66 65 65 2e 63 6f 6d 00 64 6f 77 6e 6c 6f 61 64 } //00 00 
	condition:
		any of ($a_*)
 
}