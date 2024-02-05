
rule TrojanSpy_Win32_Keylogger_BW{
	meta:
		description = "TrojanSpy:Win32/Keylogger.BW,SIGNATURE_TYPE_PEHSTR_EXT,1d 00 1c 00 0b 00 00 05 00 "
		
	strings :
		$a_01_0 = {4b 65 79 62 6f 61 72 64 43 61 6c 6c 62 61 63 6b 00 } //05 00 
		$a_01_1 = {55 6e 68 4b 65 79 62 6f 61 72 64 00 } //05 00 
		$a_01_2 = {5b 00 2f 00 43 00 54 00 52 00 4c 00 5d 00 } //05 00 
		$a_01_3 = {5b 00 2f 00 41 00 4c 00 54 00 5d 00 } //05 00 
		$a_01_4 = {5b 00 2f 00 53 00 48 00 46 00 54 00 5d 00 } //01 00 
		$a_01_5 = {6d 00 61 00 69 00 6e 00 66 00 72 00 6d 00 } //01 00 
		$a_01_6 = {5c 00 6e 00 65 00 77 00 74 00 6d 00 70 00 5c 00 } //01 00 
		$a_01_7 = {26 00 25 00 23 00 40 00 3f 00 2c 00 3a 00 2a 00 } //01 00 
		$a_01_8 = {5f 00 75 00 6e 00 69 00 6e 00 73 00 65 00 70 00 2e 00 62 00 61 00 74 00 } //01 00 
		$a_01_9 = {69 00 66 00 20 00 65 00 78 00 69 00 73 00 74 00 20 00 22 00 7b 00 65 00 78 00 65 00 63 00 75 00 74 00 61 00 62 00 6c 00 65 00 7d 00 22 00 20 00 67 00 6f 00 74 00 6f 00 20 00 52 00 65 00 70 00 65 00 61 00 74 00 } //01 00 
		$a_01_10 = {5c 00 53 00 74 00 61 00 72 00 74 00 20 00 4d 00 65 00 6e 00 75 00 5c 00 50 00 72 00 6f 00 67 00 72 00 61 00 6d 00 73 00 5c 00 53 00 74 00 61 00 72 00 74 00 75 00 70 00 5c 00 } //00 00 
	condition:
		any of ($a_*)
 
}