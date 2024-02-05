
rule TrojanSpy_Win32_Safenet_A{
	meta:
		description = "TrojanSpy:Win32/Safenet.A,SIGNATURE_TYPE_PEHSTR_EXT,04 00 04 00 05 00 00 01 00 "
		
	strings :
		$a_01_0 = {44 00 6f 00 77 00 6e 00 6c 00 6f 00 61 00 64 00 20 00 46 00 72 00 6f 00 6d 00 20 00 52 00 65 00 6c 00 61 00 79 00 28 00 25 00 73 00 29 00 20 00 54 00 6f 00 20 00 52 00 65 00 6d 00 6f 00 74 00 65 00 28 00 25 00 73 00 29 00 } //01 00 
		$a_01_1 = {2f 73 61 66 65 2f 72 65 63 6f 72 64 2e 70 68 70 } //01 00 
		$a_01_2 = {53 00 41 00 46 00 45 00 44 00 49 00 53 00 4b 00 56 00 49 00 52 00 44 00 4c 00 47 00 } //01 00 
		$a_01_3 = {53 00 61 00 66 00 65 00 43 00 72 00 65 00 64 00 65 00 6e 00 74 00 69 00 61 00 6c 00 2e 00 44 00 41 00 54 00 } //01 00 
		$a_01_4 = {6e 00 61 00 6d 00 65 00 3d 00 22 00 75 00 70 00 5f 00 66 00 69 00 6c 00 65 00 5f 00 70 00 61 00 74 00 68 00 22 00 } //00 00 
		$a_00_5 = {5d 04 } //00 00 
	condition:
		any of ($a_*)
 
}