
rule Trojan_Win32_CyberGateRAT_A_MTB{
	meta:
		description = "Trojan:Win32/CyberGateRAT.A!MTB,SIGNATURE_TYPE_PEHSTR_EXT,02 00 02 00 01 00 00 02 00 "
		
	strings :
		$a_03_0 = {ff 68 42 01 00 00 e8 90 01 03 ff 8b d0 8d 4d d0 e8 90 01 03 ff 8b d0 8d 8b 80 00 00 00 e8 90 01 03 ff 8d 4d d0 e8 90 01 03 ff 8b 03 8d 4d b8 51 68 90 00 } //00 00 
	condition:
		any of ($a_*)
 
}