
rule PWS_BAT_Dcstl_PDO_MTB{
	meta:
		description = "PWS:BAT/Dcstl.PDO!MTB,SIGNATURE_TYPE_PEHSTR_EXT,03 00 03 00 03 00 00 01 00 "
		
	strings :
		$a_03_0 = {70 02 7b 01 90 01 02 04 72 90 01 03 70 28 90 01 03 0a 7d 90 01 03 04 02 7b 90 01 03 04 72 90 01 03 70 28 90 01 03 0a 28 90 01 03 0a 26 2a 90 00 } //01 00 
		$a_03_1 = {0d 16 13 04 2b 20 09 11 04 9a 13 05 00 11 05 11 05 02 03 6f 90 01 03 0a 17 28 90 01 03 0a 00 00 11 04 17 58 13 04 11 04 09 8e 69 32 d9 90 00 } //01 00 
		$a_03_2 = {0a 26 72 01 90 01 03 02 7b 90 01 03 04 72 90 01 03 70 28 90 01 03 0a 02 7b 90 01 03 04 72 90 01 03 70 28 90 01 03 0a 28 90 01 03 06 00 2a 90 00 } //00 00 
	condition:
		any of ($a_*)
 
}