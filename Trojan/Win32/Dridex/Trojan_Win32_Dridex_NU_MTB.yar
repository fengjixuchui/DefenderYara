
rule Trojan_Win32_Dridex_NU_MTB{
	meta:
		description = "Trojan:Win32/Dridex.NU!MTB,SIGNATURE_TYPE_PEHSTR_EXT,01 00 01 00 02 00 00 01 00 "
		
	strings :
		$a_02_0 = {8b 44 24 18 35 90 02 04 89 90 02 03 eb 90 01 01 8b 90 02 03 83 90 02 02 89 90 02 03 8b 90 02 02 8b 90 02 03 80 90 02 03 75 e8 90 18 8b 90 02 03 8d 90 02 02 5e 5f 5d c3 90 00 } //01 00 
		$a_02_1 = {01 c1 88 ca 88 90 02 05 66 8b 90 02 02 8b 90 02 02 8b 90 02 02 89 90 02 05 8a 90 02 05 66 29 90 01 01 66 89 90 02 02 8b 90 02 05 88 90 02 02 90 18 8b 90 02 05 03 90 02 02 89 90 02 02 8b 90 02 02 39 90 02 02 0f 90 00 } //00 00 
	condition:
		any of ($a_*)
 
}