
rule Ransom_MSIL_Genasom_L{
	meta:
		description = "Ransom:MSIL/Genasom.L,SIGNATURE_TYPE_PEHSTR_EXT,06 00 06 00 07 00 00 01 00 "
		
	strings :
		$a_01_0 = {55 00 6e 00 6c 00 6f 00 63 00 6b 00 20 00 43 00 6f 00 64 00 65 00 3a 00 } //01 00 
		$a_01_1 = {59 00 6f 00 75 00 72 00 20 00 43 00 6f 00 6d 00 70 00 75 00 74 00 65 00 72 00 20 00 69 00 73 00 20 00 4c 00 6f 00 63 00 6b 00 65 00 64 00 } //01 00 
		$a_01_2 = {59 00 6f 00 75 00 20 00 6d 00 75 00 73 00 74 00 20 00 66 00 69 00 72 00 73 00 74 00 20 00 63 00 6f 00 6d 00 70 00 6c 00 65 00 74 00 65 00 20 00 74 00 68 00 65 00 20 00 73 00 75 00 72 00 76 00 65 00 79 00 20 00 69 00 6e 00 20 00 6f 00 72 00 64 00 65 00 72 00 20 00 74 00 6f 00 20 00 67 00 65 00 74 00 20 00 79 00 6f 00 75 00 72 00 20 00 75 00 6e 00 6c 00 6f 00 63 00 6b 00 20 00 70 00 61 00 73 00 73 00 77 00 6f 00 72 00 64 00 2e 00 } //01 00 
		$a_01_3 = {4b 00 69 00 6c 00 6c 00 20 00 47 00 65 00 6e 00 3a 00 } //01 00 
		$a_01_4 = {4b 00 69 00 6c 00 6c 00 20 00 44 00 65 00 66 00 3a 00 } //01 00 
		$a_01_5 = {53 00 74 00 61 00 72 00 74 00 2d 00 55 00 70 00 20 00 4e 00 61 00 6d 00 65 00 3a 00 } //01 00 
		$a_01_6 = {65 00 78 00 70 00 6c 00 6f 00 72 00 65 00 72 00 2e 00 65 00 78 00 65 00 20 00 2f 00 6e 00 20 00 2f 00 65 00 20 00 63 00 3a 00 } //00 00 
		$a_00_7 = {87 10 00 } //00 de 
	condition:
		any of ($a_*)
 
}