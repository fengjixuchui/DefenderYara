
rule VirTool_Win64_Bypatchsz_A_MTB{
	meta:
		description = "VirTool:Win64/Bypatchsz.A!MTB,SIGNATURE_TYPE_PEHSTR_EXT,02 00 02 00 02 00 00 "
		
	strings :
		$a_03_0 = {57 56 53 48 83 ec 30 48 89 cb [0-13] 48 85 c0 ?? ?? ?? ?? ?? ?? 48 89 da 48 89 c1 ?? ?? ?? ?? ?? ?? 48 85 c0 48 89 c3 [0-12] 41 b8 40 00 00 00 ba 03 00 00 00 48 8b 35 29 b8 14 00 49 89 f9 48 89 c1 ?? ?? 85 c0 ?? ?? b8 33 c0 ff ff c6 43 02 c3 49 89 f9 48 89 d9 66 89 03 ba 03 00 00 00 ?? ?? ?? ?? ?? ?? ?? 85 c0 } //1
		$a_03_1 = {49 3b 66 10 ?? ?? 55 48 89 e5 48 83 ec 20 48 89 44 24 30 48 89 c3 31 c9 31 ff [0-12] 48 8b 54 24 30 48 89 14 24 ?? ?? ?? ?? ?? 45 0f 57 ff 4c 8b 35 51 55 14 00 65 4d 8b 36 4d 8b 36 8b 44 24 08 48 83 c4 20 } //1
	condition:
		((#a_03_0  & 1)*1+(#a_03_1  & 1)*1) >=2
 
}