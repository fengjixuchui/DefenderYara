
rule Trojan_BAT_AgentTesla_CQK_MTB{
	meta:
		description = "Trojan:BAT/AgentTesla.CQK!MTB,SIGNATURE_TYPE_PEHSTR_EXT,07 00 07 00 07 00 00 01 00 "
		
	strings :
		$a_01_0 = {32 00 42 00 30 00 46 00 30 00 37 00 32 00 30 00 44 00 30 00 46 00 33 00 46 00 41 00 38 00 30 00 35 00 41 00 32 00 30 00 38 00 45 00 41 00 37 00 42 00 31 00 42 00 43 00 36 00 31 00 32 00 42 00 44 00 34 00 } //01 00 
		$a_01_1 = {45 00 46 00 34 00 33 00 45 00 32 00 43 00 34 00 35 00 41 00 36 00 31 00 33 00 38 00 37 00 35 00 46 00 46 00 46 00 46 00 46 00 46 00 30 00 30 00 31 00 31 00 30 00 37 00 32 00 30 00 34 00 32 00 42 00 36 00 37 00 43 00 44 00 34 00 35 00 41 00 32 00 30 00 37 00 31 00 } //01 00 
		$a_01_2 = {32 00 30 00 34 00 41 00 33 00 41 00 46 00 35 00 45 00 44 00 32 00 30 00 36 00 45 00 42 00 42 00 42 00 46 00 42 00 32 00 36 00 31 00 32 00 35 00 31 00 33 00 30 00 37 00 31 00 39 00 35 00 45 00 34 00 35 00 30 00 33 00 } //01 00 
		$a_01_3 = {47 65 74 54 79 70 65 } //01 00 
		$a_01_4 = {43 72 65 61 74 65 49 6e 73 74 61 6e 63 65 } //01 00 
		$a_01_5 = {54 6f 42 79 74 65 } //01 00 
		$a_01_6 = {53 75 62 73 74 72 69 6e 67 } //00 00 
	condition:
		any of ($a_*)
 
}