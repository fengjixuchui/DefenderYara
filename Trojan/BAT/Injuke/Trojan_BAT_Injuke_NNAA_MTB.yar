
rule Trojan_BAT_Injuke_NNAA_MTB{
	meta:
		description = "Trojan:BAT/Injuke.NNAA!MTB,SIGNATURE_TYPE_PEHSTR_EXT,04 00 04 00 02 00 00 02 00 "
		
	strings :
		$a_03_0 = {11 0c 11 02 6f 90 01 01 00 00 0a 20 00 00 00 00 28 90 01 01 00 00 06 3a 90 01 01 ff ff ff 26 38 90 01 01 ff ff ff 00 00 11 0c 28 90 01 01 00 00 06 13 09 90 00 } //02 00 
		$a_03_1 = {11 09 11 03 16 11 03 8e 69 6f 90 01 01 00 00 0a 13 07 38 00 00 00 00 11 07 13 0b 90 00 } //00 00 
	condition:
		any of ($a_*)
 
}