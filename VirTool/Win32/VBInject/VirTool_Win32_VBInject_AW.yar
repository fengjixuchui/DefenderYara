
rule VirTool_Win32_VBInject_AW{
	meta:
		description = "VirTool:Win32/VBInject.AW,SIGNATURE_TYPE_PEHSTR_EXT,02 00 02 00 02 00 00 01 00 "
		
	strings :
		$a_01_0 = {44 6f 4e 6f 74 43 61 6c 6c 00 00 00 43 61 6c 6c 41 50 49 42 79 4e 61 6d 65 00 } //01 00 
		$a_00_1 = {43 00 72 00 65 00 61 00 74 00 65 00 50 00 72 00 6f 00 63 00 65 00 73 00 73 00 57 00 00 00 00 00 0a 00 00 00 6e 00 74 00 64 00 6c 00 6c 00 00 00 28 00 00 00 4e 00 74 00 55 00 6e 00 6d 00 61 00 70 00 56 00 69 00 65 00 77 00 4f 00 66 00 53 00 65 00 63 00 74 00 69 00 6f 00 6e 00 00 00 00 00 1c 00 00 00 56 00 69 00 72 00 74 00 75 00 61 00 6c 00 41 00 6c 00 6c 00 6f 00 63 00 45 00 78 00 00 00 00 00 08 00 00 00 50 00 61 00 53 00 53 00 00 00 } //00 00 
	condition:
		any of ($a_*)
 
}