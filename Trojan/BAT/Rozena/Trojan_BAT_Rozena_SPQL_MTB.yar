
rule Trojan_BAT_Rozena_SPQL_MTB{
	meta:
		description = "Trojan:BAT/Rozena.SPQL!MTB,SIGNATURE_TYPE_PEHSTR_EXT,02 00 02 00 01 00 00 02 00 "
		
	strings :
		$a_03_0 = {07 11 05 07 11 05 91 18 59 20 90 01 03 00 5f d2 9c 11 05 17 58 13 05 11 05 07 8e 69 90 00 } //00 00 
	condition:
		any of ($a_*)
 
}