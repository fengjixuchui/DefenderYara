
rule Backdoor_Win32_Nivdort_A_dll{
	meta:
		description = "Backdoor:Win32/Nivdort.A!dll,SIGNATURE_TYPE_PEHSTR_EXT,04 00 04 00 05 00 00 02 00 "
		
	strings :
		$a_03_0 = {33 c9 b3 7b 30 99 90 01 04 41 81 f9 b4 01 00 00 72 f1 33 c9 30 99 90 01 04 41 83 f9 54 72 f4 90 00 } //01 00 
		$a_03_1 = {8b f0 2b f2 89 34 8d 90 01 04 41 40 8b d0 40 3d b4 01 00 00 7c cd 90 00 } //01 00 
		$a_01_2 = {c6 44 24 10 e9 c6 44 24 12 e8 c6 44 24 11 60 c6 44 24 13 61 ff 15 } //01 00 
		$a_03_3 = {50 68 80 00 00 00 6a 05 53 ff 15 90 01 04 8d 4c 24 90 01 01 8d 54 24 90 01 01 51 6a 14 52 53 57 ff 15 90 01 04 85 c0 75 90 00 } //01 00 
		$a_01_4 = {31 37 32 2e 31 36 2e 33 32 2e 31 34 36 00 00 00 00 73 74 75 62 31 } //00 00 
		$a_00_5 = {5d 04 00 } //00 c5 
	condition:
		any of ($a_*)
 
}