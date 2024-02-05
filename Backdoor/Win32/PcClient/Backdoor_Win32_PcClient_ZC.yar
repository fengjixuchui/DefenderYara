
rule Backdoor_Win32_PcClient_ZC{
	meta:
		description = "Backdoor:Win32/PcClient.ZC,SIGNATURE_TYPE_PEHSTR,03 00 03 00 03 00 00 01 00 "
		
	strings :
		$a_01_0 = {57 69 6e 6c 6f 67 6f 6e 00 00 00 00 43 61 70 74 75 72 65 00 55 50 4a 50 47 2e 41 53 50 3f 25 64 25 73 00 00 50 55 54 00 69 6e 64 65 78 2e 61 73 70 3f 25 64 25 73 00 00 47 45 54 00 4d 6f 7a 69 6c 6c 61 2f 34 2e 30 20 28 63 6f 6d 70 61 74 69 } //01 00 
		$a_01_1 = {62 6c 65 3b 20 4d 53 49 45 20 36 2e 30 3b 20 57 69 6e 64 6f 77 73 20 4e 54 20 35 2e 32 3b 20 53 56 31 3b 20 2e 4e 45 54 20 43 4c 52 20 31 2e 31 2e 34 33 32 32 29 00 00 25 73 25 73 00 } //01 00 
		$a_01_2 = {68 74 74 70 3a 2f 2f 25 73 3a 25 64 2f 25 73 25 64 25 73 00 69 6e 64 65 78 2e 61 73 70 3f 00 00 25 75 00 00 25 64 4f 45 4d 43 50 0d } //00 00 
	condition:
		any of ($a_*)
 
}