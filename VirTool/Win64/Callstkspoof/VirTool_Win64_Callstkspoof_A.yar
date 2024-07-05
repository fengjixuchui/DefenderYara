
rule VirTool_Win64_Callstkspoof_A{
	meta:
		description = "VirTool:Win64/Callstkspoof.A,SIGNATURE_TYPE_PEHSTR_EXT,03 00 03 00 03 00 00 01 00 "
		
	strings :
		$a_03_0 = {48 83 ec 50 48 89 4d 10 48 89 55 18 4c 89 45 20 66 0f ef c0 0f 29 45 d0 0f 29 45 e0 0f 29 45 f0 48 8b 45 10 48 89 45 d0 48 8b 45 18 48 89 45 d8 90 01 07 48 89 45 e0 c7 45 e8 12 00 00 00 48 8b 45 20 48 89 45 f0 90 01 07 48 89 c1 e8 90 01 04 89 45 f8 90 01 04 48 89 c2 48 8b 05 43 39 00 00 48 89 c1 e8 90 00 } //01 00 
		$a_03_1 = {48 83 ec 40 48 89 4d 10 e8 90 01 04 48 89 45 f8 48 8b 45 f8 48 89 c1 e8 90 01 04 48 89 45 f0 48 8b 4d 10 48 8b 55 f0 48 8b 45 f8 49 89 c8 48 89 c1 e8 90 01 04 48 89 45 e8 48 8b 45 e8 48 89 c1 e8 90 00 } //01 00 
		$a_03_2 = {bb 4c 8b d1 b8 ba 00 00 00 00 48 8b 01 39 d8 90 01 02 48 83 c1 20 48 83 c2 01 90 00 } //00 00 
	condition:
		any of ($a_*)
 
}