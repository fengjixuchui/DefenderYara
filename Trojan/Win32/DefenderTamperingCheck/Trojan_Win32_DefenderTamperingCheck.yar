
rule Trojan_Win32_DefenderTamperingCheck{
	meta:
		description = "Trojan:Win32/DefenderTamperingCheck,SIGNATURE_TYPE_CMDHSTR_EXT,64 00 02 00 07 00 00 02 00 "
		
	strings :
		$a_00_0 = {44 00 69 00 73 00 61 00 62 00 6c 00 65 00 52 00 65 00 61 00 6c 00 74 00 69 00 6d 00 65 00 4d 00 6f 00 6e 00 69 00 74 00 6f 00 72 00 69 00 6e 00 67 00 20 00 24 00 74 00 72 00 75 00 65 00 } //01 00 
		$a_00_1 = {44 00 69 00 73 00 61 00 62 00 6c 00 65 00 49 00 6e 00 74 00 72 00 75 00 73 00 69 00 6f 00 6e 00 50 00 72 00 65 00 76 00 65 00 6e 00 74 00 69 00 6f 00 6e 00 53 00 79 00 73 00 74 00 65 00 6d 00 20 00 24 00 74 00 72 00 75 00 65 00 } //01 00 
		$a_00_2 = {44 00 69 00 73 00 61 00 62 00 6c 00 65 00 49 00 4f 00 41 00 56 00 50 00 72 00 6f 00 74 00 65 00 63 00 74 00 69 00 6f 00 6e 00 20 00 24 00 74 00 72 00 75 00 65 00 } //01 00 
		$a_00_3 = {44 00 69 00 73 00 61 00 62 00 6c 00 65 00 53 00 63 00 72 00 69 00 70 00 74 00 53 00 63 00 61 00 6e 00 6e 00 69 00 6e 00 67 00 20 00 24 00 74 00 72 00 75 00 65 00 } //02 00 
		$a_00_4 = {4d 00 41 00 50 00 53 00 52 00 65 00 70 00 6f 00 72 00 74 00 69 00 6e 00 67 00 20 00 44 00 69 00 73 00 61 00 62 00 6c 00 65 00 64 00 } //01 00 
		$a_00_5 = {53 00 75 00 62 00 6d 00 69 00 74 00 53 00 61 00 6d 00 70 00 6c 00 65 00 73 00 43 00 6f 00 6e 00 73 00 65 00 6e 00 74 00 20 00 4e 00 65 00 76 00 65 00 72 00 53 00 65 00 6e 00 64 00 } //01 00 
		$a_00_6 = {44 00 69 00 73 00 61 00 62 00 6c 00 65 00 42 00 65 00 68 00 61 00 76 00 69 00 6f 00 72 00 4d 00 6f 00 6e 00 69 00 74 00 6f 00 72 00 69 00 6e 00 67 00 20 00 24 00 74 00 72 00 75 00 65 00 } //00 00 
	condition:
		any of ($a_*)
 
}