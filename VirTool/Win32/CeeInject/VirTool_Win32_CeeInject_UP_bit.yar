
rule VirTool_Win32_CeeInject_UP_bit{
	meta:
		description = "VirTool:Win32/CeeInject.UP!bit,SIGNATURE_TYPE_PEHSTR_EXT,03 00 03 00 03 00 00 01 00 "
		
	strings :
		$a_01_0 = {8b 45 08 8a 10 8a 4d 13 32 d1 02 d1 88 10 } //01 00 
		$a_01_1 = {55 03 c5 ff d0 } //01 00 
		$a_03_2 = {0f b7 02 8b e8 81 e5 90 01 04 81 fd 90 01 04 75 0d 8b 6c 24 18 25 90 01 04 03 c7 01 28 8b 46 04 83 e8 08 83 c1 01 d1 e8 83 c2 02 3b c8 72 ce 90 00 } //00 00 
	condition:
		any of ($a_*)
 
}