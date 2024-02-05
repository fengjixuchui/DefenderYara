
rule Trojan_Win32_Strysx_B{
	meta:
		description = "Trojan:Win32/Strysx.B,SIGNATURE_TYPE_PEHSTR_EXT,03 00 03 00 04 00 00 02 00 "
		
	strings :
		$a_02_0 = {83 65 fc 00 8d 4d e0 c6 45 fc 01 e8 90 01 04 6a 19 68 90 01 02 02 10 8d 4d e0 e8 90 01 04 83 65 fc 00 8d 4d e0 e8 90 01 04 8d 75 e0 e8 90 01 04 b0 01 eb 18 90 00 } //01 00 
		$a_01_1 = {c3 6a 09 58 c3 } //01 00 
		$a_01_2 = {6d 6f 64 5f 65 6d 61 69 6c 73 2e 64 6c 6c 00 5f 43 72 65 61 74 65 4d 6f 64 75 6c 65 40 30 00 5f 47 65 74 4d 6f 64 75 6c 65 49 64 40 30 00 } //01 00 
		$a_03_3 = {73 41 73 55 73 65 72 00 5c 5c 2e 5c 50 69 70 65 5c 90 02 20 00 53 4d 54 50 20 53 65 72 76 65 72 00 50 4f 50 33 20 53 65 72 76 65 72 00 90 00 } //00 00 
	condition:
		any of ($a_*)
 
}