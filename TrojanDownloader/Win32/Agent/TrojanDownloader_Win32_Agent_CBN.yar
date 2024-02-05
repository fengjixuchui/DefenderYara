
rule TrojanDownloader_Win32_Agent_CBN{
	meta:
		description = "TrojanDownloader:Win32/Agent.CBN,SIGNATURE_TYPE_PEHSTR,15 00 15 00 07 00 00 01 00 "
		
	strings :
		$a_01_0 = {46 69 6e 64 46 69 72 73 74 55 72 6c 43 61 63 68 65 45 6e 74 72 79 } //01 00 
		$a_01_1 = {43 00 6f 00 6e 00 74 00 65 00 6e 00 74 00 2d 00 54 00 79 00 70 00 65 00 3a 00 20 00 61 00 70 00 70 00 6c 00 69 00 63 00 61 00 74 00 69 00 6f 00 6e 00 2f 00 78 00 2d 00 77 00 77 00 77 00 2d 00 66 00 6f 00 72 00 6d 00 2d 00 75 00 72 00 6c 00 65 00 6e 00 63 00 6f 00 64 00 65 00 64 00 } //01 00 
		$a_01_2 = {49 00 6e 00 74 00 65 00 72 00 6e 00 65 00 74 00 45 00 78 00 70 00 6c 00 6f 00 72 00 65 00 72 00 2e 00 41 00 70 00 70 00 6c 00 69 00 63 00 61 00 74 00 69 00 6f 00 6e 00 } //01 00 
		$a_01_3 = {3c 00 73 00 63 00 72 00 69 00 70 00 74 00 20 00 44 00 45 00 46 00 45 00 52 00 20 00 6c 00 61 00 6e 00 67 00 75 00 61 00 67 00 65 00 3d 00 6a 00 61 00 76 00 61 00 73 00 63 00 72 00 69 00 70 00 74 00 3e 00 } //01 00 
		$a_01_4 = {53 6f 66 74 77 61 72 65 5c 4d 69 63 72 6f 73 6f 66 74 5c 57 69 6e 64 6f 77 73 5c 43 75 72 72 65 6e 74 56 65 72 73 69 6f 6e 5c 49 6e 74 65 72 6e 65 74 20 53 65 74 74 69 6e 67 73 5c 5a 6f 6e 65 73 } //08 00 
		$a_01_5 = {74 65 78 74 2f 68 74 6d 00 00 00 00 2a 2e 2a 00 5c 2a 2e 2a 00 00 00 00 4b 57 20 41 6e 61 6c 79 73 65 72 3a 20 74 6f 70 20 67 72 6f 75 70 3d 25 73 20 72 61 74 69 6e 67 3d 25 64 00 4b 57 20 41 6e 61 6c 79 73 65 72 3a 20 69 64 3d 25 73 20 20 72 61 74 69 6e 67 3d 25 64 20 28 74 6f 70 6b 77 3d 25 73 29 00 00 00 00 72 62 00 00 25 35 64 25 35 64 00 00 25 35 64 00 77 62 00 00 25 73 5c 25 73 00 00 00 } //08 00 
		$a_01_6 = {50 52 4f 58 59 00 00 00 4d 4f 44 45 4d 00 00 00 4c 41 4e 00 4e 41 00 00 25 64 2a 25 64 00 00 00 53 6f 66 74 77 61 72 65 5c 4d 69 63 72 6f 73 6f 66 74 5c 49 6e 74 65 72 6e 65 74 20 45 78 70 6c 6f 72 65 72 00 00 00 00 56 65 72 73 69 6f 6e 00 53 6f 66 74 77 61 72 65 5c 4d 6f 7a 69 6c 6c 61 5c 4d 6f 7a 69 6c 6c 61 20 46 69 72 65 66 6f 78 00 00 00 00 43 75 72 72 65 6e 74 56 65 72 73 69 6f 6e 00 00 2d 31 00 00 43 3a 5c 00 43 6f 6e 74 72 6f 6c 20 50 61 6e 65 6c 5c 49 6e 74 65 72 6e 61 74 69 6f 6e 61 6c 00 4c 6f 63 61 6c 65 00 00 } //00 00 
	condition:
		any of ($a_*)
 
}