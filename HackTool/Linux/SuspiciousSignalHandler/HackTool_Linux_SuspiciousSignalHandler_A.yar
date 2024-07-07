
rule HackTool_Linux_SuspiciousSignalHandler_A{
	meta:
		description = "HackTool:Linux/SuspiciousSignalHandler.A,SIGNATURE_TYPE_CMDHSTR_EXT,1e 00 1e 00 03 00 00 "
		
	strings :
		$a_00_0 = {74 00 72 00 61 00 70 00 } //10 trap
		$a_00_1 = {53 00 42 00 53 00 69 00 67 00 6e 00 61 00 6c 00 } //10 SBSignal
		$a_00_2 = {45 00 58 00 49 00 54 00 } //10 EXIT
	condition:
		((#a_00_0  & 1)*10+(#a_00_1  & 1)*10+(#a_00_2  & 1)*10) >=30
 
}