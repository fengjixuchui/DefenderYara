
rule Trojan_BAT_Formbook_DU_MTB{
	meta:
		description = "Trojan:BAT/Formbook.DU!MTB,SIGNATURE_TYPE_PEHSTR_EXT,07 00 07 00 07 00 00 01 00 "
		
	strings :
		$a_81_0 = {24 35 33 37 66 38 37 32 34 2d 35 37 35 36 2d 34 33 65 63 2d 62 32 32 39 2d 33 34 35 65 34 35 30 66 33 35 36 62 } //01 00 
		$a_81_1 = {44 53 4d 53 5f 44 42 43 6f 6e 6e 65 63 74 69 6f 6e 53 74 72 69 6e 67 } //01 00 
		$a_81_2 = {44 53 4d 53 2e 4d 79 2e 52 65 73 6f 75 72 63 65 73 } //01 00 
		$a_81_3 = {44 20 53 20 44 61 6d 61 74 20 4f 6e 6c 69 6e 65 } //01 00 
		$a_81_4 = {48 6f 73 74 65 6c 20 61 6e 64 20 4d 65 73 73 20 46 65 65 73 } //01 00 
		$a_81_5 = {44 53 4d 53 2e 46 6c 65 74 } //01 00 
		$a_81_6 = {41 64 68 61 72 5f 4e 75 6d 62 65 72 } //00 00 
	condition:
		any of ($a_*)
 
}