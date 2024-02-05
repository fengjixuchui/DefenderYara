
rule VirTool_Win32_ProcKill_B{
	meta:
		description = "VirTool:Win32/ProcKill.B,SIGNATURE_TYPE_PEHSTR_EXT,0c 00 0c 00 04 00 00 0a 00 "
		
	strings :
		$a_00_0 = {6b 00 69 00 6c 00 6c 00 73 00 2e 00 73 00 79 00 73 00 00 00 } //01 00 
		$a_02_1 = {61 00 76 00 70 00 2e 00 65 00 78 00 65 00 90 02 08 4d 00 63 00 73 00 68 00 69 00 65 00 6c 00 64 00 2e 00 65 00 78 00 65 90 02 08 00 56 00 73 00 54 00 73 00 6b 00 4d 00 67 00 72 00 2e 00 65 00 78 00 65 00 90 02 08 6e 00 61 00 50 00 72 00 64 00 4d 00 67 00 72 00 2e 00 65 00 78 00 65 00 90 02 08 54 00 42 00 4d 00 6f 00 6e 00 2e 00 65 00 78 00 65 00 90 02 08 73 00 63 00 90 00 } //01 00 
		$a_02_2 = {6b 00 61 00 76 00 73 00 76 00 63 00 2e 00 65 00 78 00 65 00 90 02 08 55 00 49 00 48 00 6f 00 73 00 74 00 2e 00 65 00 78 00 65 00 90 02 08 54 00 72 00 6f 00 6a 00 44 00 69 00 65 00 2e 00 65 00 78 00 65 00 90 02 08 46 00 72 00 6f 00 67 00 41 00 67 00 65 00 6e 00 74 00 2e 00 65 00 78 00 65 00 90 02 08 6b 00 61 00 76 00 2e 00 65 00 78 00 65 00 90 02 08 6b 00 61 00 76 00 90 00 } //01 00 
		$a_02_3 = {54 00 61 00 73 00 6b 00 6d 00 67 00 72 00 2e 00 65 00 78 00 65 00 90 02 08 52 00 65 00 67 00 65 00 64 00 69 00 74 00 2e 00 65 00 78 00 65 00 90 02 08 4d 00 73 00 63 00 6f 00 6e 00 66 00 69 00 67 00 2e 00 65 00 78 00 65 00 90 02 08 33 00 36 00 30 00 74 00 72 00 61 00 79 00 2e 00 65 00 78 00 65 00 90 02 08 69 00 63 00 65 00 73 00 77 00 6f 00 72 00 64 00 2e 00 65 00 78 00 90 00 } //00 00 
	condition:
		any of ($a_*)
 
}