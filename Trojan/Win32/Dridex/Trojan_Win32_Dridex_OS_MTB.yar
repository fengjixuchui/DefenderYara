
rule Trojan_Win32_Dridex_OS_MTB{
	meta:
		description = "Trojan:Win32/Dridex.OS!MTB,SIGNATURE_TYPE_PEHSTR_EXT,01 00 01 00 01 00 00 01 00 "
		
	strings :
		$a_02_0 = {89 e2 89 32 89 90 02 03 89 90 02 03 e8 90 02 04 8b 90 02 03 81 90 02 05 8b 90 02 03 89 90 02 06 89 90 02 06 8b 90 02 03 01 c1 c7 90 02 0a c7 90 02 0a 88 c8 88 90 02 03 8a 90 02 03 28 c0 88 90 02 06 8b 90 02 03 8a 90 02 03 8b 90 02 03 8b 90 02 03 89 90 02 06 88 90 02 02 8a 90 02 03 34 90 01 01 88 90 02 06 eb 10 c7 90 02 0a e9 90 02 04 8b 90 02 03 8b 90 02 03 81 90 02 05 89 90 02 06 03 90 02 03 c7 90 02 0a 89 90 02 03 eb 18 8b 90 02 03 35 90 02 04 89 90 02 06 8d 90 02 03 5e 5f 5d c3 90 00 } //00 00 
	condition:
		any of ($a_*)
 
}