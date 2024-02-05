
rule Trojan_BAT_RedLine_MBHG_MTB{
	meta:
		description = "Trojan:BAT/RedLine.MBHG!MTB,SIGNATURE_TYPE_PEHSTR_EXT,05 00 05 00 05 00 00 01 00 "
		
	strings :
		$a_01_0 = {57 ff a2 3f 09 0e 00 00 00 fa 25 33 00 16 00 00 01 00 00 00 fe 00 00 00 ee 00 00 00 e5 02 00 00 29 05 00 00 c0 04 00 00 0b 00 00 00 90 02 00 00 74 00 00 00 4c 02 00 00 11 00 00 00 01 00 00 00 26 } //01 00 
		$a_01_1 = {26 00 06 00 36 00 3f 00 06 00 51 00 62 00 06 00 69 00 62 00 06 00 73 00 62 00 06 00 7a 00 81 00 06 00 8b 00 62 00 06 00 92 00 99 00 0a 00 b4 00 bf 00 06 00 df 00 62 } //01 00 
		$a_01_2 = {43 6f 6e 66 75 73 65 64 42 79 41 74 74 72 69 62 75 74 65 00 e2 80 8d e2 80 8c e2 80 aa e2 80 8e e2 81 ab e2 80 ab e2 } //01 00 
		$a_01_3 = {61 00 6c 00 61 00 6e 00 67 00 2e 00 65 00 78 00 65 00 00 00 00 00 72 00 27 00 01 00 4c 00 65 00 67 00 61 00 6c 00 43 00 6f 00 70 00 79 00 72 00 69 00 67 00 68 00 74 00 00 00 4e 00 69 00 72 } //01 00 
		$a_01_4 = {4c 61 6c 61 6e 67 2e 65 78 65 } //00 00 
	condition:
		any of ($a_*)
 
}