
rule Trojan_Win32_Zusy_GXB_MTB{
	meta:
		description = "Trojan:Win32/Zusy.GXB!MTB,SIGNATURE_TYPE_PEHSTR_EXT,0a 00 0a 00 01 00 00 0a 00 "
		
	strings :
		$a_03_0 = {46 8a 84 35 90 01 04 88 8c 35 90 01 04 0f b6 c8 88 84 3d 90 01 04 0f b6 84 35 90 01 04 03 c8 0f b6 c1 8b 8d 90 01 04 0f b6 84 05 90 01 04 32 44 1a 08 88 04 11 42 81 fa 00 30 00 00 90 00 } //00 00 
	condition:
		any of ($a_*)
 
}