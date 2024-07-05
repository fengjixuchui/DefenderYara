
rule VirTool_Win64_Minidumpesz_A_MTB{
	meta:
		description = "VirTool:Win64/Minidumpesz.A!MTB,SIGNATURE_TYPE_PEHSTR_EXT,03 00 03 00 03 00 00 01 00 "
		
	strings :
		$a_03_0 = {55 48 89 e5 48 83 ec 60 c7 45 fc 34 02 00 00 48 c7 44 24 30 00 00 00 00 c7 44 24 28 80 00 00 00 c7 44 24 20 02 00 00 00 41 b9 00 00 00 00 41 b8 01 00 00 00 ba 00 00 00 10 90 01 07 48 89 c1 90 01 09 48 89 45 f0 48 83 7d f0 00 90 00 } //01 00 
		$a_03_1 = {8b 45 fc 41 89 c0 ba 01 00 00 00 b9 ff ff 1f 00 90 01 09 48 89 45 e8 48 83 7d e8 00 90 02 11 89 c2 90 01 07 48 89 c1 90 01 05 b9 ff ff ff ff 90 00 } //01 00 
		$a_03_2 = {8b 55 fc 48 8b 4d f0 48 8b 45 e8 48 c7 44 24 30 00 00 00 00 48 c7 44 24 28 00 00 00 00 48 c7 44 24 20 00 00 00 00 41 b9 02 00 00 00 49 89 c8 48 89 c1 90 01 05 89 45 e4 83 7d e4 00 90 00 } //00 00 
	condition:
		any of ($a_*)
 
}