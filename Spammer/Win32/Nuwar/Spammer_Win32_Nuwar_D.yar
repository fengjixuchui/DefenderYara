
rule Spammer_Win32_Nuwar_D{
	meta:
		description = "Spammer:Win32/Nuwar.D,SIGNATURE_TYPE_PEHSTR_EXT,18 00 14 00 15 00 00 06 00 "
		
	strings :
		$a_00_0 = {8b fe 83 c9 ff 33 c0 33 d2 f2 ae f7 d1 49 74 15 80 04 32 } //03 00 
		$a_01_1 = {75 73 62 67 67 35 62 6d 6d } //03 00 
		$a_01_2 = {30 62 65 6d 70 62 65 2f 71 69 71 } //03 00 
		$a_01_3 = {69 75 75 71 3b 30 30 } //04 00 
		$a_00_4 = {83 c4 38 89 c3 89 f0 25 ff 00 00 00 83 c0 1d } //04 00 
		$a_00_5 = {6e 65 74 73 68 20 66 69 72 65 77 61 6c 6c 20 73 65 74 20 61 6c 6c 6f 77 65 64 70 72 6f 67 72 61 6d 20 27 } //03 00 
		$a_01_6 = {2f 63 6a 7b 00 75 79 } //02 00 
		$a_01_7 = {2f 71 69 71 } //02 00 
		$a_01_8 = {2f 63 6a 7b } //02 00 
		$a_01_9 = {63 6e 74 72 2e 70 68 70 } //02 00 
		$a_01_10 = {73 76 63 70 2e 63 73 76 } //02 00 
		$a_01_11 = {74 69 62 73 2e } //02 00 
		$a_01_12 = {70 72 6f 78 79 2e } //02 00 
		$a_00_13 = {89 d8 25 ff 00 00 00 83 c0 17 88 85 } //02 00 
		$a_00_14 = {ff ff 89 da c1 ea 08 88 95 } //02 00 
		$a_01_15 = {6e 6f 74 6f 75 74 70 6f 73 74 } //03 00 
		$a_00_16 = {2e 70 68 70 3f 61 64 76 3d } //03 00 
		$a_00_17 = {3f 61 64 76 3d 25 75 } //03 00 
		$a_00_18 = {26 63 6f 64 65 31 3d 25 63 25 63 25 63 25 63 } //03 00 
		$a_00_19 = {26 74 61 62 6c 65 3d 61 64 76 25 75 } //03 00 
		$a_00_20 = {2f 61 64 6c 6f 61 64 2e 70 68 70 } //00 00 
	condition:
		any of ($a_*)
 
}