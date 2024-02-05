
rule Trojan_BAT_AgentTesla_LSP_MTB{
	meta:
		description = "Trojan:BAT/AgentTesla.LSP!MTB,SIGNATURE_TYPE_PEHSTR_EXT,02 00 02 00 02 00 00 01 00 "
		
	strings :
		$a_03_0 = {16 13 05 2b 27 00 09 11 04 11 05 28 90 01 03 06 13 07 11 07 28 90 01 03 0a 13 08 08 11 08 d2 6f 90 01 03 0a 00 00 11 05 17 58 13 05 11 05 17 fe 04 13 09 11 09 2d ce 07 17 58 0b 00 11 04 17 58 90 00 } //01 00 
		$a_01_1 = {47 65 74 50 69 78 65 6c } //00 00 
	condition:
		any of ($a_*)
 
}