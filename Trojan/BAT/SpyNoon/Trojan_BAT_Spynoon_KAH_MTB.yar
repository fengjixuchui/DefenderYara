
rule Trojan_BAT_Spynoon_KAH_MTB{
	meta:
		description = "Trojan:BAT/Spynoon.KAH!MTB,SIGNATURE_TYPE_PEHSTR_EXT,01 00 01 00 01 00 00 01 00 "
		
	strings :
		$a_03_0 = {02 07 08 91 11 90 01 01 61 07 08 17 58 07 8e 69 5d 91 90 00 } //00 00 
	condition:
		any of ($a_*)
 
}