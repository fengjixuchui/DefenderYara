
rule Trojan_Win32_Agent_AHA{
	meta:
		description = "Trojan:Win32/Agent.AHA,SIGNATURE_TYPE_PEHSTR,29 00 29 00 08 00 00 0a 00 "
		
	strings :
		$a_01_0 = {48 00 41 00 43 00 4b 00 45 00 44 00 21 00 } //0a 00 
		$a_01_1 = {59 00 6f 00 75 00 72 00 20 00 50 00 43 00 20 00 69 00 73 00 20 00 73 00 6f 00 6f 00 6e 00 20 00 64 00 79 00 69 00 6e 00 67 00 2e 00 20 00 53 00 6f 00 72 00 72 00 79 00 21 00 } //0a 00 
		$a_01_2 = {66 00 6f 00 72 00 6d 00 61 00 74 00 20 00 64 00 3a 00 20 00 2f 00 61 00 75 00 74 00 6f 00 74 00 65 00 73 00 74 00 20 00 2f 00 71 00 20 00 2f 00 75 00 } //0a 00 
		$a_01_3 = {64 00 65 00 6c 00 20 00 63 00 3a 00 5c 00 77 00 69 00 6e 00 64 00 6f 00 77 00 73 00 5c 00 73 00 79 00 73 00 74 00 65 00 6d 00 33 00 32 00 5c 00 68 00 61 00 6c 00 2e 00 64 00 6c 00 6c 00 } //01 00 
		$a_01_4 = {75 00 67 00 6c 00 79 00 2e 00 52 00 65 00 73 00 6f 00 75 00 72 00 63 00 65 00 73 00 } //01 00 
		$a_01_5 = {48 00 65 00 75 00 72 00 69 00 73 00 74 00 69 00 63 00 20 00 41 00 6e 00 74 00 69 00 2d 00 56 00 69 00 72 00 75 00 73 00 20 00 53 00 63 00 61 00 6e 00 6e 00 65 00 72 00 20 00 50 00 52 00 4f 00 } //01 00 
		$a_01_6 = {73 00 68 00 75 00 74 00 64 00 6f 00 77 00 6e 00 20 00 2d 00 72 00 20 00 2d 00 63 00 20 00 22 00 57 00 69 00 6e 00 64 00 6f 00 77 00 73 00 20 00 68 00 61 00 73 00 20 00 65 00 78 00 70 00 69 00 72 00 65 00 64 00 } //01 00 
		$a_01_7 = {49 00 6e 00 63 00 6f 00 6d 00 70 00 61 00 74 00 69 00 62 00 6c 00 65 00 20 00 61 00 6e 00 74 00 69 00 76 00 69 00 72 00 75 00 73 00 20 00 69 00 6e 00 73 00 74 00 61 00 6c 00 6c 00 65 00 64 00 2e 00 20 00 50 00 6c 00 65 00 61 00 73 00 65 00 20 00 72 00 65 00 6d 00 6f 00 76 00 65 00 20 00 6f 00 72 00 20 00 74 00 75 00 72 00 6e 00 20 00 69 00 74 00 20 00 6f 00 66 00 66 00 2e 00 } //00 00 
	condition:
		any of ($a_*)
 
}