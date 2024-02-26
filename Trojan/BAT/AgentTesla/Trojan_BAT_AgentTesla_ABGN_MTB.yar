
rule Trojan_BAT_AgentTesla_ABGN_MTB{
	meta:
		description = "Trojan:BAT/AgentTesla.ABGN!MTB,SIGNATURE_TYPE_PEHSTR_EXT,07 00 07 00 03 00 00 05 00 "
		
	strings :
		$a_03_0 = {02 07 02 8e 69 5d 02 07 02 8e 69 5d 91 06 07 06 8e 69 5d 91 61 7e 90 01 03 04 28 90 01 03 06 02 07 17 58 02 8e 69 5d 91 7e 90 01 03 04 28 90 01 03 06 59 20 90 01 03 00 58 20 90 01 03 00 5d d2 9c 00 07 15 58 0b 07 6c 90 00 } //01 00 
		$a_01_1 = {37 00 34 00 35 00 34 00 34 00 35 00 42 00 4a 00 35 00 43 00 48 00 4f 00 38 00 39 00 38 00 30 00 46 00 47 00 47 00 41 00 5a 00 37 00 } //01 00  745445BJ5CHO8980FGGAZ7
		$a_01_2 = {43 00 6f 00 6d 00 62 00 69 00 6e 00 65 00 54 00 78 00 74 00 2e 00 50 00 72 00 6f 00 70 00 65 00 72 00 74 00 69 00 65 00 73 00 2e 00 52 00 65 00 73 00 6f 00 75 00 72 00 63 00 65 00 73 00 } //00 00  CombineTxt.Properties.Resources
	condition:
		any of ($a_*)
 
}