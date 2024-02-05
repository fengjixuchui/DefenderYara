
rule Trojan_Win32_Boupke_gen_A{
	meta:
		description = "Trojan:Win32/Boupke.gen!A,SIGNATURE_TYPE_PEHSTR_EXT,04 00 03 00 06 00 00 04 00 "
		
	strings :
		$a_03_0 = {8b 45 08 8b 75 0c 68 e8 03 00 00 68 c8 08 00 00 8d 54 24 10 52 68 00 08 00 00 68 90 01 02 00 10 b9 ac 01 00 00 8d bc 24 34 02 00 00 90 00 } //01 00 
		$a_01_1 = {4b 00 65 00 72 00 6e 00 65 00 6c 00 53 00 65 00 74 00 74 00 69 00 6e 00 67 00 00 00 } //01 00 
		$a_01_2 = {49 00 73 00 53 00 79 00 6e 00 46 00 6c 00 6f 00 6f 00 64 00 00 00 } //01 00 
		$a_01_3 = {53 00 63 00 72 00 69 00 70 00 74 00 46 00 6c 00 6f 00 6f 00 64 00 55 00 72 00 6c 00 00 00 } //01 00 
		$a_01_4 = {4b 00 65 00 72 00 6e 00 65 00 6c 00 43 00 68 00 65 00 63 00 6b 00 2e 00 65 00 78 00 65 00 00 00 } //01 00 
		$a_01_5 = {5c 4b 65 72 6e 65 6c 42 6f 74 } //00 00 
	condition:
		any of ($a_*)
 
}