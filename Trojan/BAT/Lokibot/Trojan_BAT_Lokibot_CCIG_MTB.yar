
rule Trojan_BAT_Lokibot_CCIG_MTB{
	meta:
		description = "Trojan:BAT/Lokibot.CCIG!MTB,SIGNATURE_TYPE_PEHSTR_EXT,01 00 01 00 01 00 00 01 00 "
		
	strings :
		$a_03_0 = {11 07 11 0d d4 11 0e 6e 11 11 20 90 01 04 5f 6a 61 d2 9c 11 14 90 00 } //00 00 
	condition:
		any of ($a_*)
 
}