
rule Trojan_BAT_Injuke_PSPK_MTB{
	meta:
		description = "Trojan:BAT/Injuke.PSPK!MTB,SIGNATURE_TYPE_PEHSTR_EXT,02 00 02 00 01 00 00 02 00 "
		
	strings :
		$a_03_0 = {7d 28 02 00 04 7e 0e 00 00 04 28 90 01 03 0a 07 6f 90 01 03 0a 12 02 e0 0f 01 e0 12 03 e0 6f 90 01 03 06 13 04 11 04 16 fe 03 13 05 11 05 2c 05 90 00 } //00 00 
	condition:
		any of ($a_*)
 
}