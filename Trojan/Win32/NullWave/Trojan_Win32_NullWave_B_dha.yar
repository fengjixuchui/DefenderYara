
rule Trojan_Win32_NullWave_B_dha{
	meta:
		description = "Trojan:Win32/NullWave.B!dha,SIGNATURE_TYPE_PEHSTR_EXT,05 00 05 00 07 00 00 03 00 "
		
	strings :
		$a_01_0 = {53 63 72 65 65 6e 6c 69 6d 69 74 73 64 65 76 69 63 65 73 23 37 37 21 } //03 00 
		$a_03_1 = {54 68 65 20 66 6f 72 6d 61 74 20 6f 66 20 74 68 65 20 90 02 05 20 66 69 6c 65 20 69 6e 20 6e 6f 74 20 76 61 6c 69 64 2e 0d 0a 28 31 2c 32 29 3a 3a 45 72 72 6f 72 3a 20 69 6e 63 6f 72 72 65 63 74 20 64 6f 63 75 6d 65 6e 74 20 73 79 6e 74 61 78 90 00 } //01 00 
		$a_01_2 = {43 00 3a 00 5c 00 48 00 49 00 25 00 63 00 } //01 00 
		$a_01_3 = {25 00 73 00 5c 00 2a 00 2e 00 2a 00 } //01 00 
		$a_01_4 = {41 6c 6c 20 46 69 6c 65 73 20 28 2a 2e 2a 29 } //01 00 
		$a_01_5 = {25 73 5c 73 79 73 6e 61 74 69 76 65 5c } //01 00 
		$a_01_6 = {25 73 25 43 25 43 25 58 2d } //00 00 
	condition:
		any of ($a_*)
 
}