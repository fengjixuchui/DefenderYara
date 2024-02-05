
rule Trojan_BAT_AgentTesla_NJS_MTB{
	meta:
		description = "Trojan:BAT/AgentTesla.NJS!MTB,SIGNATURE_TYPE_PEHSTR_EXT,05 00 05 00 05 00 00 01 00 "
		
	strings :
		$a_01_0 = {1f 4e 33 05 14 13 05 de 36 06 07 1f 10 6f 24 00 00 0a 25 26 0c 08 20 03 02 00 00 } //01 00 
		$a_01_1 = {24 65 36 34 35 65 35 37 34 2d 38 36 37 32 2d 34 36 66 30 2d 62 64 38 34 2d 39 37 38 32 62 31 65 39 32 64 33 38 } //01 00 
		$a_01_2 = {48 55 50 4b 4f 4d 4e 4c 42 59 2e 65 78 65 00 6d 73 63 6f 72 6c 69 62 00 53 79 73 74 65 6d 00 48 55 50 4b 4f 4d 4e 4c 42 59 26 26 } //01 00 
		$a_81_3 = {53 46 56 51 53 30 39 4e 54 6b 78 43 57 53 55 3d } //01 00 
		$a_01_4 = {57 15 02 08 09 01 00 00 00 fa 01 33 00 02 00 00 01 00 00 00 33 00 00 00 07 00 00 00 0c 00 00 00 1b 00 00 00 14 00 00 00 49 00 00 00 11 00 00 00 0d } //00 00 
	condition:
		any of ($a_*)
 
}