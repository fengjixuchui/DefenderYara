
rule Trojan_BAT_Formbook_KAE_MTB{
	meta:
		description = "Trojan:BAT/Formbook.KAE!MTB,SIGNATURE_TYPE_PEHSTR_EXT,02 00 02 00 02 00 00 01 00 "
		
	strings :
		$a_03_0 = {11 09 61 d1 6f 90 01 01 00 00 0a 26 00 11 08 17 90 00 } //01 00 
		$a_01_1 = {8e 69 5d 91 61 d2 52 00 } //00 00 
	condition:
		any of ($a_*)
 
}