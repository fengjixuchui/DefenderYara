
rule PWS_Win32_OnLineGames_JB_dll{
	meta:
		description = "PWS:Win32/OnLineGames.JB!dll,SIGNATURE_TYPE_PEHSTR_EXT,04 00 04 00 04 00 00 01 00 "
		
	strings :
		$a_03_0 = {57 56 c6 45 90 01 01 8b c6 45 90 01 01 4d c6 45 90 01 01 0c c6 45 90 01 01 8b c6 45 90 01 01 75 c6 45 90 01 01 10 c6 45 90 01 01 8a c6 45 90 01 01 45 c6 45 90 01 01 18 90 00 } //01 00 
		$a_03_1 = {57 56 c6 45 90 01 01 40 c6 45 90 01 01 83 c6 45 90 01 01 c1 c6 45 90 01 01 03 c6 45 90 01 01 83 c6 45 90 01 01 c2 c6 45 90 01 01 08 c6 45 90 01 01 83 c6 45 90 01 01 f8 c6 45 90 01 01 03 c6 45 90 01 01 7c c6 45 90 01 01 e1 c6 45 90 00 } //01 00 
		$a_01_2 = {75 70 2f 55 70 66 2e 61 73 70 } //01 00 
		$a_01_3 = {25 73 25 73 3f 63 3d 71 26 69 3d 25 73 26 73 3d 25 73 26 61 3d 25 73 26 6d 3d 25 73 26 74 3d 25 } //00 00 
	condition:
		any of ($a_*)
 
}