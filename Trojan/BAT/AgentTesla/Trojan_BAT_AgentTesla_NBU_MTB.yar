
rule Trojan_BAT_AgentTesla_NBU_MTB{
	meta:
		description = "Trojan:BAT/AgentTesla.NBU!MTB,SIGNATURE_TYPE_PEHSTR_EXT,09 00 09 00 09 00 00 01 00 "
		
	strings :
		$a_01_0 = {59 37 38 33 34 32 31 34 32 33 34 32 33 34 } //01 00 
		$a_01_1 = {59 38 32 37 33 34 34 32 37 34 33 32 34 33 32 34 } //01 00 
		$a_01_2 = {00 47 65 74 50 69 78 65 6c 00 } //01 00 
		$a_01_3 = {00 63 79 7a 00 } //01 00 
		$a_01_4 = {59 38 39 35 34 33 30 35 33 34 35 34 33 35 33 34 } //01 00 
		$a_01_5 = {47 65 74 45 78 70 6f 72 74 65 64 54 79 70 65 73 } //01 00 
		$a_01_6 = {59 39 32 33 34 30 39 32 35 34 32 30 35 32 } //01 00 
		$a_81_7 = {54 2d 6f 2d 57 2d 69 2d 6e 2d 33 2d 32 } //01 00 
		$a_01_8 = {44 65 62 75 67 67 65 72 4e 6f 6e 55 73 65 72 43 6f 64 65 41 74 74 72 69 62 75 74 65 } //00 00 
	condition:
		any of ($a_*)
 
}