
rule Trojan_Win32_Zusy_SPCT_MTB{
	meta:
		description = "Trojan:Win32/Zusy.SPCT!MTB,SIGNATURE_TYPE_PEHSTR_EXT,03 00 03 00 02 00 00 02 00 "
		
	strings :
		$a_03_0 = {8b 44 24 20 8d 4c 24 34 8a 44 04 68 30 07 e8 90 01 04 8b 5c 24 24 47 8b 54 24 28 81 ff 90 00 } //01 00 
		$a_03_1 = {0f b6 44 1c 90 01 01 03 c6 33 ed 0f b6 c0 59 89 44 24 90 00 } //00 00 
	condition:
		any of ($a_*)
 
}