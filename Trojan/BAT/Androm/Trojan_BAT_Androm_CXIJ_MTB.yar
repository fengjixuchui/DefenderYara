
rule Trojan_BAT_Androm_CXIJ_MTB{
	meta:
		description = "Trojan:BAT/Androm.CXIJ!MTB,SIGNATURE_TYPE_PEHSTR_EXT,02 00 02 00 02 00 00 01 00 "
		
	strings :
		$a_01_0 = {36 61 35 61 39 30 30 30 32 34 30 30 30 30 30 30 32 33 30 30 30 30 30 30 64 38 66 } //01 00 
		$a_01_1 = {66 30 30 30 30 39 66 30 30 30 30 30 30 32 37 30 30 30 30 30 30 36 37 30 30 30 30 } //00 00 
	condition:
		any of ($a_*)
 
}