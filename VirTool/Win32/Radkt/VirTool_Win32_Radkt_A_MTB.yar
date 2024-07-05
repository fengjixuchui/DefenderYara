
rule VirTool_Win32_Radkt_A_MTB{
	meta:
		description = "VirTool:Win32/Radkt.A!MTB,SIGNATURE_TYPE_PEHSTR_EXT,03 00 03 00 03 00 00 01 00 "
		
	strings :
		$a_03_0 = {50 6a 01 6a 00 90 01 04 50 90 01 06 85 c0 90 01 02 50 90 02 10 83 c4 08 33 c0 5f 5e 5b 8b 4c 24 30 33 cc 90 00 } //01 00 
		$a_03_1 = {8b e5 5d c3 8b 44 24 14 90 01 04 52 90 01 04 52 8b 08 90 01 05 50 90 01 03 85 c0 90 01 02 50 90 02 10 83 c4 08 33 c0 5f 5e 5b 8b 4c 24 30 33 cc 90 01 05 8b e5 5d c3 8b 7c 24 18 85 ff 90 00 } //01 00 
		$a_03_2 = {8b 7c 24 38 90 01 03 43 83 c4 20 3b df 90 01 02 8b 44 24 10 90 01 06 89 44 24 0c 85 ff 90 02 10 ff 76 f4 90 01 02 ff 76 f8 90 01 02 ff 36 90 01 05 83 ef 01 90 01 02 8b 44 24 0c 50 90 00 } //00 00 
	condition:
		any of ($a_*)
 
}