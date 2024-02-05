
rule TrojanSpy_Win32_Zabdo_A{
	meta:
		description = "TrojanSpy:Win32/Zabdo.A,SIGNATURE_TYPE_PEHSTR,34 00 32 00 0d 00 00 0a 00 "
		
	strings :
		$a_01_0 = {46 3a 5c 4d 69 63 72 6f 73 6f 66 74 20 56 69 73 75 61 6c 20 53 74 75 64 69 6f 5c 56 42 39 38 5c 56 42 36 2e 4f 4c 42 } //05 00 
		$a_01_1 = {48 69 64 65 50 72 6f 63 65 73 73 } //05 00 
		$a_01_2 = {52 41 53 45 6e 74 72 69 65 73 4e 54 } //05 00 
		$a_01_3 = {2a 00 73 00 75 00 70 00 2a 00 44 00 61 00 6e 00 6c 00 6f 00 64 00 42 00 61 00 7a 00 61 00 72 00 2a 00 } //05 00 
		$a_01_4 = {59 00 4f 00 55 00 20 00 48 00 41 00 56 00 45 00 20 00 41 00 20 00 52 00 45 00 4d 00 4f 00 54 00 45 00 20 00 53 00 48 00 45 00 4c 00 4c 00 20 00 54 00 4f 00 20 00 } //05 00 
		$a_01_5 = {22 00 54 00 72 00 75 00 65 00 56 00 65 00 63 00 74 00 6f 00 72 00 20 00 49 00 6e 00 74 00 65 00 72 00 6e 00 65 00 74 00 20 00 4d 00 6f 00 6e 00 69 00 74 00 6f 00 72 00 22 00 } //05 00 
		$a_01_6 = {44 00 42 00 53 00 70 00 79 00 3a 00 20 00 44 00 61 00 74 00 61 00 20 00 66 00 72 00 6f 00 6d 00 20 00 49 00 50 00 20 00 } //05 00 
		$a_01_7 = {66 00 74 00 70 00 20 00 2d 00 73 00 3a 00 43 00 3a 00 5c 00 74 00 78 00 74 00 2e 00 74 00 78 00 74 00 } //05 00 
		$a_01_8 = {54 00 68 00 65 00 20 00 76 00 69 00 63 00 74 00 69 00 6d 00 27 00 73 00 20 00 44 00 69 00 61 00 6c 00 75 00 70 00 20 00 49 00 6e 00 66 00 6f 00 72 00 6d 00 61 00 74 00 69 00 6f 00 6e 00 20 00 69 00 73 00 3a 00 } //01 00 
		$a_01_9 = {74 00 61 00 73 00 6b 00 6b 00 69 00 6c 00 6c 00 20 00 2f 00 66 00 20 00 2f 00 69 00 6d 00 20 00 73 00 70 00 79 00 68 00 75 00 6e 00 74 00 65 00 72 00 2e 00 65 00 78 00 65 00 } //01 00 
		$a_01_10 = {74 00 61 00 73 00 6b 00 6b 00 69 00 6c 00 6c 00 20 00 2f 00 66 00 20 00 2f 00 69 00 6d 00 20 00 73 00 70 00 79 00 73 00 77 00 61 00 70 00 65 00 72 00 2e 00 65 00 78 00 65 00 } //01 00 
		$a_01_11 = {74 00 61 00 73 00 6b 00 6b 00 69 00 6c 00 6c 00 20 00 2f 00 66 00 20 00 2f 00 69 00 6d 00 20 00 47 00 49 00 41 00 4e 00 54 00 41 00 6e 00 74 00 69 00 53 00 70 00 79 00 57 00 61 00 72 00 65 00 4d 00 61 00 69 00 6e 00 2e 00 65 00 78 00 65 00 } //01 00 
		$a_01_12 = {74 00 61 00 73 00 6b 00 6b 00 69 00 6c 00 6c 00 20 00 2f 00 66 00 20 00 2f 00 69 00 6d 00 20 00 6e 00 6f 00 72 00 74 00 6f 00 6e 00 2e 00 65 00 78 00 65 00 } //00 00 
	condition:
		any of ($a_*)
 
}