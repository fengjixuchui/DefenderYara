
rule Trojan_Win32_Antavmu_GMA_MTB{
	meta:
		description = "Trojan:Win32/Antavmu.GMA!MTB,SIGNATURE_TYPE_PEHSTR_EXT,0a 00 0a 00 01 00 00 0a 00 "
		
	strings :
		$a_03_0 = {0f 57 c9 66 0f f8 c8 0f 11 89 90 01 04 0f 10 81 90 01 04 0f 57 c9 66 0f f8 c8 0f 11 89 90 01 04 83 c1 90 00 } //00 00 
	condition:
		any of ($a_*)
 
}