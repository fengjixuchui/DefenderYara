
rule HackTool_Linux_SuspUnixReShellCmd_E{
	meta:
		description = "HackTool:Linux/SuspUnixReShellCmd.E,SIGNATURE_TYPE_CMDHSTR_EXT,1a 00 1a 00 0a 00 00 0a 00 "
		
	strings :
		$a_02_0 = {70 00 65 00 72 00 6c 00 90 02 20 2d 00 65 00 90 02 20 75 00 73 00 65 00 90 00 } //0a 00 
		$a_02_1 = {65 00 78 00 65 00 63 00 90 02 02 28 00 90 02 04 2f 00 62 00 69 00 6e 00 2f 00 90 02 04 73 00 68 00 90 00 } //01 00 
		$a_00_2 = {70 00 66 00 5f 00 69 00 6e 00 65 00 74 00 } //01 00 
		$a_00_3 = {73 00 6f 00 63 00 6b 00 5f 00 73 00 74 00 72 00 65 00 61 00 6d 00 } //01 00 
		$a_02_4 = {63 00 6f 00 6e 00 6e 00 65 00 63 00 74 00 90 02 02 28 00 90 02 50 2c 00 90 00 } //01 00 
		$a_02_5 = {73 00 6f 00 63 00 6b 00 61 00 64 00 64 00 72 00 5f 00 69 00 6e 00 90 02 02 28 00 90 02 50 2c 00 90 00 } //01 00 
		$a_00_6 = {69 00 6e 00 65 00 74 00 5f 00 61 00 74 00 6f 00 6e 00 } //01 00 
		$a_00_7 = {6f 00 70 00 65 00 6e 00 } //b0 ff 
		$a_00_8 = {31 00 32 00 37 00 2e 00 30 00 2e 00 30 00 2e 00 31 00 } //b0 ff 
		$a_00_9 = {30 00 2e 00 30 00 2e 00 30 00 2e 00 30 00 } //00 00 
	condition:
		any of ($a_*)
 
}