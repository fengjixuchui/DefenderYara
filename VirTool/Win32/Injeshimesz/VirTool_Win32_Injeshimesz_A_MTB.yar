
rule VirTool_Win32_Injeshimesz_A_MTB{
	meta:
		description = "VirTool:Win32/Injeshimesz.A!MTB,SIGNATURE_TYPE_PEHSTR_EXT,05 00 05 00 05 00 00 "
		
	strings :
		$a_03_0 = {56 6a 00 6a 00 ?? ?? ?? ?? c7 44 24 1c 00 00 00 00 50 0f 57 c0 ?? ?? ?? ?? 68 03 00 1f 00 0f 29 44 24 30 8b f1 50 66 0f d6 44 24 44 c7 44 24 34 18 00 00 00 ?? ?? ?? ?? ?? ?? 85 c0 } //1
		$a_03_1 = {83 3d 28 01 44 00 07 ?? ?? ?? ?? ?? ?? 51 6a 00 6a 00 6a 00 6a 01 6a 04 b8 14 01 44 00 0f 47 05 14 01 44 00 6a 03 50 ?? ?? ?? ?? ?? ?? 8b f8 83 ff ff } //1
		$a_03_2 = {8b 4d a0 e8 ?? ?? ?? ?? 84 c0 [0-11] b9 40 f4 43 00 ?? ?? ?? ?? ?? 50 ?? ?? ?? ?? ?? 51 [0-10] b9 40 f4 43 00 [0-10] 8b c8 } //1
		$a_03_3 = {c6 45 fc 05 ?? ?? ?? ?? ?? ?? ?? ?? 85 db [0-22] b9 40 f4 43 00 ?? ?? ?? ?? ?? 50 ?? ?? ?? ?? ?? 83 c4 04 6a 00 6a 00 6a 00 68 c0 45 40 00 6a 00 6a 00 ?? ?? ?? ?? ?? ?? 8b f8 ff 75 a0 } //1
		$a_03_4 = {51 0f 47 85 d8 fb ff ff ?? ?? ?? ?? ?? ?? 51 6a 00 6a 00 6a 00 50 6a 00 6a 02 ff b5 8c fb ff ff ?? ?? ?? ?? ?? ?? b9 40 f4 43 00 85 c0 } //1
	condition:
		((#a_03_0  & 1)*1+(#a_03_1  & 1)*1+(#a_03_2  & 1)*1+(#a_03_3  & 1)*1+(#a_03_4  & 1)*1) >=5
 
}