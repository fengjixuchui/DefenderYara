
rule Trojan_Win32_Redline_MQE_MTB{
	meta:
		description = "Trojan:Win32/Redline.MQE!MTB,SIGNATURE_TYPE_PEHSTR_EXT,02 00 02 00 01 00 00 02 00 "
		
	strings :
		$a_03_0 = {8b 45 8c 8b 4d 88 8b 7d 94 8a 84 05 90 01 04 30 04 39 8b 4d d4 83 f9 0f 76 90 00 } //00 00 
	condition:
		any of ($a_*)
 
}