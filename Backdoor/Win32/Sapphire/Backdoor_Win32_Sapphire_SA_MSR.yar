
rule Backdoor_Win32_Sapphire_SA_MSR{
	meta:
		description = "Backdoor:Win32/Sapphire.SA!MSR,SIGNATURE_TYPE_PEHSTR_EXT,1f 00 1f 00 0e 00 00 0a 00 "
		
	strings :
		$a_01_0 = {2a 00 2e 00 73 00 75 00 72 00 } //0a 00 
		$a_01_1 = {2a 00 2e 00 75 00 77 00 74 00 } //0a 00 
		$a_01_2 = {2a 00 2e 00 74 00 76 00 73 00 } //0a 00 
		$a_01_3 = {75 00 63 00 30 00 39 00 5f 00 62 00 77 00 6b 00 68 00 61 00 6c 00 2e 00 69 00 68 00 61 00 } //0a 00 
		$a_01_4 = {77 00 65 00 72 00 6e 00 66 00 32 00 31 00 5f 00 64 00 79 00 6d 00 6a 00 63 00 6e 00 2e 00 6b 00 6a 00 63 00 } //0a 00 
		$a_01_5 = {76 00 64 00 31 00 30 00 5f 00 63 00 78 00 6c 00 69 00 62 00 6d 00 2e 00 6a 00 69 00 62 00 } //05 00 
		$a_01_6 = {25 00 4c 00 4f 00 43 00 41 00 4c 00 41 00 50 00 50 00 44 00 41 00 54 00 41 00 25 00 5c 00 } //05 00 
		$a_01_7 = {25 00 54 00 45 00 4d 00 50 00 25 00 5c 00 } //01 00 
		$a_01_8 = {5f 6e 65 78 74 61 66 74 65 72 } //01 00 
		$a_01_9 = {53 00 74 00 61 00 72 00 74 00 75 00 70 00 } //01 00 
		$a_01_10 = {49 00 6e 00 74 00 65 00 72 00 6e 00 65 00 74 00 20 00 45 00 78 00 70 00 6c 00 6f 00 72 00 65 00 72 00 } //01 00 
		$a_01_11 = {43 00 68 00 72 00 6f 00 6d 00 65 00 } //01 00 
		$a_01_12 = {53 00 61 00 66 00 61 00 72 00 69 00 } //01 00 
		$a_01_13 = {3e 2d 2d 2d 2d 2d 2d 2d 2d 2d 2d } //00 00 
	condition:
		any of ($a_*)
 
}