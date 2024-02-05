
rule VirTool_Win32_Obfuscator_BZS{
	meta:
		description = "VirTool:Win32/Obfuscator.BZS,SIGNATURE_TYPE_PEHSTR_EXT,03 00 03 00 04 00 00 01 00 "
		
	strings :
		$a_01_0 = {8a 55 f4 8b 4d 08 2a d0 8b 45 fc 2a d0 02 d3 8b 5d 10 03 ce 02 d3 30 11 3b de 8b } //01 00 
		$a_01_1 = {7c 0a 8b fa 2b fe 8d 7c 1f 02 eb 07 8b f9 } //01 00 
		$a_01_2 = {ff d0 8b 45 c4 8b 8d ac 27 00 00 83 c4 0c ff } //01 00 
		$a_03_3 = {75 0b 03 de 53 ff b5 90 01 04 eb 90 00 } //01 00 
		$a_00_4 = {5d 04 } //00 00 
	condition:
		any of ($a_*)
 
}