
rule Trojan_BAT_Tedy_RW_MTB{
	meta:
		description = "Trojan:BAT/Tedy.RW!MTB,SIGNATURE_TYPE_PEHSTR_EXT,06 00 06 00 02 00 00 05 00 "
		
	strings :
		$a_03_0 = {0d 08 0e 04 0e 04 8e 69 12 04 11 05 11 05 8e 69 09 09 8e 69 12 06 16 28 90 01 03 06 13 07 11 07 7e 90 01 04 fe 01 13 09 11 09 2c 0b 72 90 00 } //01 00 
		$a_01_1 = {50 69 6c 6c 61 67 65 72 2e 64 6c 6c } //00 00  Pillager.dll
	condition:
		any of ($a_*)
 
}