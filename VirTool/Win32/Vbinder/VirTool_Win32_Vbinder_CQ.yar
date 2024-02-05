
rule VirTool_Win32_Vbinder_CQ{
	meta:
		description = "VirTool:Win32/Vbinder.CQ,SIGNATURE_TYPE_PEHSTR_EXT,06 00 06 00 05 00 00 03 00 "
		
	strings :
		$a_03_0 = {c7 45 fc 10 00 00 00 6a 00 e8 90 01 04 e8 90 01 04 c7 45 fc 90 01 01 00 00 00 90 00 } //01 00 
		$a_03_1 = {6a ff 68 20 02 00 00 e8 90 01 03 ff 90 09 06 00 8b 90 03 01 01 75 7d 08 ff 90 03 02 02 36 57 37 56 90 00 } //01 00 
		$a_03_2 = {8b 45 0c ff 30 ff b5 90 01 02 ff ff 6a ff 68 20 02 00 00 e8 90 01 03 ff 90 00 } //02 00 
		$a_01_3 = {00 52 61 63 6b 65 74 00 } //02 00 
		$a_01_4 = {00 00 73 00 74 00 26 00 26 00 64 00 65 00 6c 00 00 00 } //00 00 
	condition:
		any of ($a_*)
 
}