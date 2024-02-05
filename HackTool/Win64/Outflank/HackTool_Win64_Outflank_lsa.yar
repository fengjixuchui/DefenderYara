
rule HackTool_Win64_Outflank_lsa{
	meta:
		description = "HackTool:Win64/Outflank!lsa,SIGNATURE_TYPE_PEHSTR_EXT,05 00 05 00 09 00 00 02 00 "
		
	strings :
		$a_01_0 = {7c 00 20 00 20 00 7c 00 20 00 20 00 7c 00 20 00 20 00 7c 00 5f 00 5f 00 2f 00 20 00 5f 00 5f 00 20 00 5c 00 7c 00 } //02 00 
		$a_01_1 = {42 00 79 00 20 00 43 00 6e 00 65 00 65 00 6c 00 69 00 7a 00 20 00 40 00 4f 00 75 00 74 00 66 00 6c 00 61 00 6e 00 6b 00 } //02 00 
		$a_01_2 = {54 00 65 00 6d 00 70 00 5c 00 64 00 75 00 6d 00 70 00 65 00 72 00 74 00 2e 00 64 00 6d 00 70 00 } //01 00 
		$a_01_3 = {5b 00 21 00 5d 00 20 00 59 00 6f 00 75 00 20 00 6e 00 65 00 65 00 64 00 20 00 65 00 6c 00 65 00 76 00 61 00 74 00 65 00 64 00 } //01 00 
		$a_01_4 = {5b 00 21 00 5d 00 20 00 46 00 61 00 69 00 6c 00 65 00 64 00 20 00 74 00 6f 00 20 00 63 00 72 00 65 00 61 00 74 00 65 00 20 00 6d 00 69 00 6e 00 69 00 64 00 75 00 6d 00 70 00 2c 00 } //01 00 
		$a_01_5 = {5b 00 31 00 5d 00 20 00 43 00 68 00 65 00 63 00 6b 00 69 00 6e 00 67 00 20 00 4f 00 53 00 } //01 00 
		$a_01_6 = {5b 00 2b 00 5d 00 20 00 44 00 75 00 6d 00 70 00 20 00 25 00 77 00 5a 00 20 00 6d 00 65 00 6d 00 6f 00 72 00 79 00 20 00 74 00 6f 00 3a 00 20 00 25 00 77 00 5a 00 } //01 00 
		$a_01_7 = {69 00 73 00 20 00 57 00 69 00 6e 00 64 00 6f 00 77 00 73 00 20 00 25 00 6c 00 73 00 2c 00 20 00 62 00 75 00 69 00 6c 00 64 00 20 00 6e 00 75 00 6d 00 62 00 65 00 72 00 20 00 25 00 64 00 } //01 00 
		$a_01_8 = {4d 69 6e 69 44 75 6d 70 57 72 69 74 65 44 75 6d 70 } //00 00 
		$a_00_9 = {5d 04 00 } //00 94 
	condition:
		any of ($a_*)
 
}