
rule Trojan_BAT_XWorm_AMAI_MTB{
	meta:
		description = "Trojan:BAT/XWorm.AMAI!MTB,SIGNATURE_TYPE_PEHSTR_EXT,01 00 01 00 01 00 00 "
		
	strings :
		$a_03_0 = {1f 16 5d 91 13 ?? 07 09 91 11 ?? 61 13 ?? 07 09 17 58 08 5d 91 } //1
	condition:
		((#a_03_0  & 1)*1) >=1
 
}