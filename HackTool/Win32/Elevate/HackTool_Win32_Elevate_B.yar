
rule HackTool_Win32_Elevate_B{
	meta:
		description = "HackTool:Win32/Elevate.B,SIGNATURE_TYPE_PEHSTR,09 00 09 00 09 00 00 01 00 "
		
	strings :
		$a_01_0 = {5c 00 5c 00 2e 00 5c 00 70 00 69 00 70 00 65 00 5c 00 54 00 49 00 4f 00 52 00 5f 00 49 00 6e 00 } //01 00 
		$a_01_1 = {5c 00 5c 00 2e 00 5c 00 70 00 69 00 70 00 65 00 5c 00 54 00 49 00 4f 00 52 00 5f 00 4f 00 75 00 74 00 } //01 00 
		$a_01_2 = {5c 00 5c 00 2e 00 5c 00 70 00 69 00 70 00 65 00 5c 00 54 00 49 00 4f 00 52 00 5f 00 45 00 72 00 72 00 } //01 00 
		$a_01_3 = {54 00 49 00 4f 00 52 00 3a 00 20 00 5b 00 69 00 6e 00 5d 00 } //01 00 
		$a_01_4 = {54 00 49 00 4f 00 52 00 3a 00 20 00 5b 00 6f 00 75 00 74 00 5d 00 } //01 00 
		$a_01_5 = {54 00 49 00 4f 00 52 00 3a 00 20 00 5b 00 65 00 72 00 72 00 5d 00 } //01 00 
		$a_01_6 = {77 00 37 00 65 00 5f 00 54 00 49 00 4f 00 52 00 53 00 68 00 65 00 6c 00 6c 00 } //01 00 
		$a_01_7 = {77 00 37 00 65 00 5f 00 54 00 49 00 4f 00 52 00 41 00 72 00 67 00 73 00 } //01 00 
		$a_01_8 = {77 00 37 00 65 00 5f 00 54 00 49 00 4f 00 52 00 44 00 69 00 72 00 } //00 00 
	condition:
		any of ($a_*)
 
}