
rule Trojan_BAT_AgentTesla_DSL_MTB{
	meta:
		description = "Trojan:BAT/AgentTesla.DSL!MTB,SIGNATURE_TYPE_PEHSTR_EXT,10 00 10 00 08 00 00 0a 00 "
		
	strings :
		$a_01_0 = {24 63 38 61 36 66 34 30 63 2d 66 63 39 38 2d 34 31 62 33 2d 62 39 62 34 2d 37 61 36 33 66 34 31 38 66 66 31 32 } //0a 00 
		$a_01_1 = {24 30 32 30 30 34 39 66 34 2d 36 64 61 64 2d 34 65 64 34 2d 62 30 64 37 2d 32 62 64 36 35 31 64 32 38 35 36 66 } //01 00 
		$a_01_2 = {00 47 65 74 54 79 70 65 73 00 } //01 00 
		$a_01_3 = {00 47 65 74 50 69 78 65 6c 00 } //01 00 
		$a_01_4 = {00 54 6f 57 69 6e 33 32 00 } //01 00 
		$a_01_5 = {00 43 6f 6c 6f 72 54 72 61 6e 73 6c 61 74 6f 72 00 } //01 00 
		$a_01_6 = {00 44 65 62 75 67 67 69 6e 67 4d 6f 64 65 73 00 } //01 00 
		$a_01_7 = {00 44 65 62 75 67 67 61 62 6c 65 41 74 74 72 69 62 75 74 65 00 } //00 00 
	condition:
		any of ($a_*)
 
}