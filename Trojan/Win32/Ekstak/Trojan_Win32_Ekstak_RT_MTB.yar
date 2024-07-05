
rule Trojan_Win32_Ekstak_RT_MTB{
	meta:
		description = "Trojan:Win32/Ekstak.RT!MTB,SIGNATURE_TYPE_PEHSTR_EXT,01 00 01 00 03 00 00 01 00 "
		
	strings :
		$a_03_0 = {55 8b ec 83 ec 0c 53 56 57 e8 90 01 01 fe f5 ff 89 45 fc e9 90 00 } //01 00 
		$a_01_1 = {55 8b ec 83 ec 0c 53 56 57 68 57 5c 4c 00 e8 1d ee f5 ff 89 45 fc e9 } //01 00 
		$a_01_2 = {55 8b ec 83 ec 0c 53 56 57 e8 12 f2 f5 ff 89 45 fc e9 } //00 00 
	condition:
		any of ($a_*)
 
}