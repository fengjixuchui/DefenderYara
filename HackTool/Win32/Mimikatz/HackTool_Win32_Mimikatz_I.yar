
rule HackTool_Win32_Mimikatz_I{
	meta:
		description = "HackTool:Win32/Mimikatz.I,SIGNATURE_TYPE_CMDHSTR_EXT,02 00 02 00 1e 00 00 01 00 "
		
	strings :
		$a_00_0 = {70 00 72 00 69 00 76 00 69 00 6c 00 65 00 67 00 65 00 3a 00 3a 00 64 00 65 00 62 00 75 00 67 00 } //01 00 
		$a_00_1 = {73 00 65 00 6b 00 75 00 72 00 6c 00 73 00 61 00 3a 00 3a 00 63 00 72 00 65 00 64 00 6d 00 61 00 6e 00 } //01 00 
		$a_00_2 = {73 00 65 00 6b 00 75 00 72 00 6c 00 73 00 61 00 3a 00 3a 00 64 00 70 00 61 00 70 00 69 00 } //01 00 
		$a_00_3 = {73 00 65 00 6b 00 75 00 72 00 6c 00 73 00 61 00 3a 00 3a 00 64 00 70 00 61 00 70 00 69 00 73 00 79 00 73 00 74 00 65 00 6d 00 } //01 00 
		$a_00_4 = {73 00 65 00 6b 00 75 00 72 00 6c 00 73 00 61 00 3a 00 3a 00 6d 00 69 00 6e 00 69 00 64 00 75 00 6d 00 70 00 } //01 00 
		$a_00_5 = {73 00 65 00 6b 00 75 00 72 00 6c 00 73 00 61 00 3a 00 3a 00 70 00 72 00 6f 00 63 00 65 00 73 00 73 00 } //01 00 
		$a_00_6 = {73 00 65 00 6b 00 75 00 72 00 6c 00 73 00 61 00 3a 00 3a 00 73 00 73 00 70 00 } //01 00 
		$a_00_7 = {73 00 65 00 6b 00 75 00 72 00 6c 00 73 00 61 00 3a 00 3a 00 6c 00 69 00 76 00 65 00 73 00 73 00 70 00 } //01 00 
		$a_00_8 = {73 00 65 00 6b 00 75 00 72 00 6c 00 73 00 61 00 3a 00 3a 00 74 00 73 00 70 00 6b 00 67 00 } //01 00 
		$a_00_9 = {73 00 65 00 6b 00 75 00 72 00 6c 00 73 00 61 00 3a 00 3a 00 74 00 69 00 63 00 6b 00 65 00 74 00 73 00 } //01 00 
		$a_00_10 = {73 00 65 00 6b 00 75 00 72 00 6c 00 73 00 61 00 3a 00 3a 00 70 00 74 00 68 00 } //01 00 
		$a_00_11 = {73 00 65 00 6b 00 75 00 72 00 6c 00 73 00 61 00 3a 00 3a 00 6c 00 6f 00 67 00 6f 00 6e 00 70 00 61 00 73 00 73 00 77 00 6f 00 72 00 64 00 73 00 } //01 00 
		$a_00_12 = {73 00 65 00 6b 00 75 00 72 00 6c 00 73 00 61 00 3a 00 3a 00 6b 00 65 00 72 00 62 00 65 00 72 00 6f 00 73 00 } //01 00 
		$a_00_13 = {73 00 65 00 6b 00 75 00 72 00 6c 00 73 00 61 00 3a 00 3a 00 65 00 6b 00 65 00 79 00 73 00 } //01 00 
		$a_00_14 = {73 00 65 00 6b 00 75 00 72 00 6c 00 73 00 61 00 3a 00 3a 00 77 00 64 00 69 00 67 00 65 00 73 00 74 00 } //01 00 
		$a_00_15 = {73 00 65 00 6b 00 75 00 72 00 6c 00 73 00 61 00 3a 00 3a 00 6d 00 73 00 76 00 } //01 00 
		$a_00_16 = {6c 00 73 00 61 00 64 00 75 00 6d 00 70 00 3a 00 3a 00 63 00 61 00 63 00 68 00 65 00 } //01 00 
		$a_00_17 = {6c 00 73 00 61 00 64 00 75 00 6d 00 70 00 3a 00 3a 00 73 00 65 00 63 00 72 00 65 00 74 00 73 00 } //01 00 
		$a_00_18 = {6c 00 73 00 61 00 64 00 75 00 6d 00 70 00 3a 00 3a 00 74 00 72 00 75 00 73 00 74 00 } //01 00 
		$a_00_19 = {6c 00 73 00 61 00 64 00 75 00 6d 00 70 00 3a 00 3a 00 73 00 61 00 6d 00 } //01 00 
		$a_00_20 = {6c 00 73 00 61 00 64 00 75 00 6d 00 70 00 3a 00 3a 00 6c 00 73 00 61 00 } //01 00 
		$a_00_21 = {6c 00 73 00 61 00 64 00 75 00 6d 00 70 00 3a 00 3a 00 64 00 63 00 73 00 79 00 6e 00 63 00 } //01 00 
		$a_00_22 = {6b 00 65 00 72 00 62 00 65 00 72 00 6f 00 73 00 3a 00 3a 00 63 00 6c 00 69 00 73 00 74 00 } //01 00 
		$a_00_23 = {6b 00 65 00 72 00 62 00 65 00 72 00 6f 00 73 00 3a 00 3a 00 70 00 74 00 63 00 } //01 00 
		$a_00_24 = {6b 00 65 00 72 00 62 00 65 00 72 00 6f 00 73 00 3a 00 3a 00 68 00 61 00 73 00 68 00 } //01 00 
		$a_00_25 = {6b 00 65 00 72 00 62 00 65 00 72 00 6f 00 73 00 3a 00 3a 00 70 00 75 00 72 00 67 00 65 00 } //01 00 
		$a_00_26 = {6b 00 65 00 72 00 62 00 65 00 72 00 6f 00 73 00 3a 00 3a 00 74 00 67 00 74 00 } //01 00 
		$a_00_27 = {6b 00 65 00 72 00 62 00 65 00 72 00 6f 00 73 00 3a 00 3a 00 70 00 74 00 74 00 } //01 00 
		$a_00_28 = {6b 00 65 00 72 00 62 00 65 00 72 00 6f 00 73 00 3a 00 3a 00 6c 00 69 00 73 00 74 00 } //01 00 
		$a_00_29 = {6b 00 65 00 72 00 62 00 65 00 72 00 6f 00 73 00 3a 00 3a 00 67 00 6f 00 6c 00 64 00 65 00 6e 00 } //00 00 
	condition:
		any of ($a_*)
 
}