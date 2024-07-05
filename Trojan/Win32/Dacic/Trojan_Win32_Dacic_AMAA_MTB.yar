
rule Trojan_Win32_Dacic_AMAA_MTB{
	meta:
		description = "Trojan:Win32/Dacic.AMAA!MTB,SIGNATURE_TYPE_PEHSTR_EXT,02 00 02 00 02 00 00 01 00 "
		
	strings :
		$a_01_0 = {8d 41 0d f7 6d fc 03 45 10 51 b9 11 00 00 00 33 d2 f7 f1 59 33 d2 f7 75 f0 8a 04 16 88 03 41 43 3b f9 7f } //01 00 
		$a_03_1 = {6a 01 6a 00 e8 90 01 03 00 e8 90 01 03 00 3d b7 00 00 00 74 90 01 01 e8 90 01 03 ff 54 6a 00 6a 00 68 90 01 03 00 6a 00 6a 00 e8 90 01 03 00 90 00 } //00 00 
	condition:
		any of ($a_*)
 
}