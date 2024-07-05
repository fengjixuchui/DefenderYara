
rule Trojan_Win32_CobaltStrike_FK_MTB{
	meta:
		description = "Trojan:Win32/CobaltStrike.FK!MTB,SIGNATURE_TYPE_PEHSTR_EXT,02 00 02 00 02 00 00 01 00 "
		
	strings :
		$a_01_0 = {8a 07 47 84 c0 75 } //01 00 
		$a_03_1 = {8b c6 99 f7 ff 8a 44 15 90 01 01 32 84 35 90 01 04 88 84 35 90 01 04 0f b6 c0 90 00 } //00 00 
	condition:
		any of ($a_*)
 
}