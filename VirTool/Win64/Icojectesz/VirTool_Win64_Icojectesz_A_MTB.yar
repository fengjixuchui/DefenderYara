
rule VirTool_Win64_Icojectesz_A_MTB{
	meta:
		description = "VirTool:Win64/Icojectesz.A!MTB,SIGNATURE_TYPE_PEHSTR_EXT,03 00 03 00 03 00 00 "
		
	strings :
		$a_03_0 = {48 63 45 04 48 89 85 58 01 00 00 b8 02 00 00 00 48 8b 8d 58 01 00 00 48 f7 e1 48 c7 c1 ff ff ff ff 48 0f 40 c1 48 8b c8 ?? ?? ?? ?? ?? 48 89 85 28 01 00 00 48 8b 85 28 01 00 00 48 89 45 28 44 8b 45 04 48 8b 55 28 48 8b 8d 80 01 00 00 } //1
		$a_03_1 = {48 8b 8d 58 02 00 00 ?? ?? ?? ?? ?? ?? ba 05 00 00 00 48 8b 0d 0d c5 00 00 ?? ?? ?? ?? ?? ?? ba 05 00 00 00 48 8b c8 ?? ?? ?? ?? ?? ?? ba 01 00 00 00 48 8b c8 ?? ?? ?? ?? ?? ?? 48 89 85 78 02 00 00 45 33 c9 45 33 c0 ba f5 00 00 00 48 8b 8d 78 02 00 00 ?? ?? ?? ?? ?? ?? 48 8b 8d 38 02 00 00 } //1
		$a_03_2 = {c7 44 24 20 00 00 00 00 45 33 c9 ?? ?? ?? ?? ?? ?? ?? 33 d2 33 c9 ?? ?? ?? ?? ?? ?? 48 83 3d 9e c3 00 00 00 ?? ?? 33 d2 } //1
	condition:
		((#a_03_0  & 1)*1+(#a_03_1  & 1)*1+(#a_03_2  & 1)*1) >=3
 
}