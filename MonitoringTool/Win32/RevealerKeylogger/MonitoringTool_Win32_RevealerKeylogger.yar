
rule MonitoringTool_Win32_RevealerKeylogger{
	meta:
		description = "MonitoringTool:Win32/RevealerKeylogger,SIGNATURE_TYPE_PEHSTR_EXT,0b 00 0b 00 06 00 00 05 00 "
		
	strings :
		$a_02_0 = {43 00 6f 00 6d 00 70 00 61 00 6e 00 79 00 4e 00 61 00 6d 00 65 00 00 00 00 00 77 00 77 00 77 00 2e 00 72 00 65 00 76 00 65 00 61 00 6c 00 65 00 72 00 6b 00 65 00 79 00 6c 00 6f 00 67 00 67 00 65 00 72 00 2e 00 63 00 6f 00 6d 00 00 00 90 01 01 00 18 00 01 00 46 00 69 00 6c 00 65 00 44 00 65 00 73 00 63 00 72 00 69 00 70 00 74 00 69 00 6f 00 6e 00 00 00 00 00 52 00 65 00 76 00 65 00 61 00 6c 00 65 00 72 00 20 00 4b 00 65 00 79 00 6c 00 6f 00 67 00 67 00 65 00 72 00 90 00 } //03 00 
		$a_00_1 = {00 52 00 65 00 76 00 65 00 61 00 6c 00 65 00 72 00 20 00 69 00 73 00 20 00 63 00 75 00 72 00 72 00 65 00 6e 00 74 00 6c 00 79 00 20 00 6d 00 6f 00 6e 00 69 00 74 00 6f 00 72 00 69 00 6e 00 67 00 2c 00 20 00 61 00 72 00 65 00 20 00 79 00 6f 00 75 00 20 00 73 00 75 00 72 00 65 00 20 00 79 00 6f 00 75 00 20 00 77 00 61 00 6e 00 74 00 20 00 74 00 6f 00 20 00 71 00 75 00 69 00 74 00 } //02 00 
		$a_00_2 = {00 77 00 77 00 77 00 2e 00 72 00 65 00 76 00 65 00 61 00 6c 00 65 00 72 00 6b 00 65 00 79 00 6c 00 6f 00 67 00 67 00 65 00 72 00 2e 00 63 00 6f 00 6d 00 } //02 00 
		$a_00_3 = {01 00 50 00 72 00 6f 00 64 00 75 00 63 00 74 00 4e 00 61 00 6d 00 65 00 00 00 00 00 52 00 65 00 76 00 65 00 61 00 6c 00 65 00 72 00 20 00 4b 00 65 00 79 00 6c 00 6f 00 67 00 67 00 65 00 72 00 } //02 00 
		$a_00_4 = {00 52 00 65 00 76 00 65 00 61 00 6c 00 65 00 72 00 20 00 4b 00 65 00 79 00 6c 00 6f 00 67 00 67 00 65 00 72 00 20 00 72 00 65 00 70 00 6f 00 72 00 74 00 } //01 00 
		$a_00_5 = {72 6b 66 72 65 65 2e 65 78 65 } //00 00 
	condition:
		any of ($a_*)
 
}
rule MonitoringTool_Win32_RevealerKeylogger_2{
	meta:
		description = "MonitoringTool:Win32/RevealerKeylogger,SIGNATURE_TYPE_PEHSTR,02 00 02 00 02 00 00 01 00 "
		
	strings :
		$a_01_0 = {52 00 65 00 76 00 65 00 61 00 6c 00 65 00 72 00 20 00 4b 00 65 00 79 00 6c 00 6f 00 67 00 67 00 65 00 72 00 20 00 50 00 72 00 6f 00 } //01 00 
		$a_01_1 = {5f 4c 6f 77 4c 65 76 65 6c 4b 65 79 62 6f 61 72 64 50 72 6f 63 40 } //00 00 
	condition:
		any of ($a_*)
 
}