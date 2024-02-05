
rule Trojan_BAT_AgentTesla_GAJ_MTB{
	meta:
		description = "Trojan:BAT/AgentTesla.GAJ!MTB,SIGNATURE_TYPE_PEHSTR_EXT,01 00 01 00 01 00 00 01 00 "
		
	strings :
		$a_03_0 = {73 24 00 00 0a 0a 73 25 00 00 0a 0c 06 08 28 90 01 03 0a 72 5d 00 00 70 6f 90 01 03 0a 6f 90 01 03 0a 6f 90 01 03 0a 06 18 6f 90 01 03 0a 06 6f 90 01 03 0a 13 04 02 0d 11 04 09 16 09 8e b7 6f 90 01 03 0a 0b de 11 de 0f 25 28 90 01 03 0a 13 05 28 90 01 03 0a de 00 07 2a 90 00 } //00 00 
	condition:
		any of ($a_*)
 
}
rule Trojan_BAT_AgentTesla_GAJ_MTB_2{
	meta:
		description = "Trojan:BAT/AgentTesla.GAJ!MTB,SIGNATURE_TYPE_PEHSTR_EXT,04 00 04 00 02 00 00 02 00 "
		
	strings :
		$a_01_0 = {7e 00 44 00 30 00 7e 00 45 00 32 00 7e 00 35 00 36 00 7e 00 34 00 36 00 7e 00 46 00 36 00 7e 00 44 00 36 00 7e 00 30 00 32 00 7e 00 33 00 35 00 7e 00 46 00 34 00 7e 00 34 00 34 00 7e 00 30 00 32 00 7e 00 45 00 36 00 7e 00 39 00 36 00 7e 00 30 00 32 00 7e 00 } //02 00 
		$a_01_1 = {45 00 36 00 7e 00 35 00 37 00 7e 00 32 00 37 00 7e 00 30 00 32 00 7e 00 35 00 36 00 7e 00 32 00 36 00 7e 00 30 00 32 00 7e 00 34 00 37 00 7e 00 46 00 36 00 7e 00 45 00 36 00 7e 00 45 00 36 00 7e 00 31 00 36 00 7e 00 33 00 36 00 7e 00 30 00 32 00 7e 00 44 00 36 00 7e 00 31 00 36 00 } //00 00 
	condition:
		any of ($a_*)
 
}