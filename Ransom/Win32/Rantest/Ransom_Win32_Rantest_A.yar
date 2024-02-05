
rule Ransom_Win32_Rantest_A{
	meta:
		description = "Ransom:Win32/Rantest.A,SIGNATURE_TYPE_PEHSTR_EXT,ffffffe9 03 ffffffe9 03 0c 00 00 fffffff4 01 "
		
	strings :
		$a_02_0 = {43 00 6f 00 6d 00 70 00 61 00 6e 00 79 00 4e 00 61 00 6d 00 65 00 90 02 06 4b 00 6e 00 6f 00 77 00 42 00 65 00 34 00 90 00 } //f4 01 
		$a_02_1 = {4c 00 65 00 67 00 61 00 6c 00 43 00 6f 00 70 00 79 00 72 00 69 00 67 00 68 00 74 00 90 02 06 43 00 6f 00 70 00 79 00 72 00 69 00 67 00 68 00 74 00 90 02 0a 4b 00 6e 00 6f 00 77 00 42 00 65 00 34 00 90 00 } //01 00 
		$a_02_2 = {4f 00 72 00 69 00 67 00 69 00 6e 00 61 00 6c 00 46 00 69 00 6c 00 65 00 6e 00 61 00 6d 00 65 00 90 02 06 49 00 6e 00 73 00 69 00 64 00 65 00 43 00 72 00 79 00 70 00 74 00 6f 00 72 00 2e 00 65 00 78 00 65 00 90 00 } //01 00 
		$a_02_3 = {4f 00 72 00 69 00 67 00 69 00 6e 00 61 00 6c 00 46 00 69 00 6c 00 65 00 6e 00 61 00 6d 00 65 00 90 02 06 4c 00 6f 00 63 00 6b 00 79 00 56 00 61 00 72 00 69 00 61 00 6e 00 74 00 2e 00 65 00 78 00 65 00 90 00 } //01 00 
		$a_03_4 = {4f 00 72 00 69 00 67 00 69 00 6e 00 61 00 6c 00 46 00 69 00 6c 00 65 00 6e 00 61 00 6d 00 65 00 90 02 06 00 00 4d 00 6f 00 76 00 65 00 72 00 2e 00 65 00 78 00 65 00 90 00 } //01 00 
		$a_02_5 = {4f 00 72 00 69 00 67 00 69 00 6e 00 61 00 6c 00 46 00 69 00 6c 00 65 00 6e 00 61 00 6d 00 65 00 90 02 06 52 00 65 00 70 00 6c 00 61 00 63 00 65 00 72 00 2e 00 65 00 78 00 65 00 90 00 } //01 00 
		$a_02_6 = {4f 00 72 00 69 00 67 00 69 00 6e 00 61 00 6c 00 46 00 69 00 6c 00 65 00 6e 00 61 00 6d 00 65 00 90 02 06 53 00 74 00 72 00 65 00 61 00 6d 00 65 00 72 00 2e 00 65 00 78 00 65 00 90 00 } //01 00 
		$a_02_7 = {4f 00 72 00 69 00 67 00 69 00 6e 00 61 00 6c 00 46 00 69 00 6c 00 65 00 6e 00 61 00 6d 00 65 00 90 02 06 53 00 74 00 72 00 6f 00 6e 00 67 00 43 00 72 00 79 00 70 00 74 00 6f 00 72 00 2e 00 65 00 78 00 65 00 90 00 } //01 00 
		$a_02_8 = {4f 00 72 00 69 00 67 00 69 00 6e 00 61 00 6c 00 46 00 69 00 6c 00 65 00 6e 00 61 00 6d 00 65 00 90 02 06 53 00 74 00 72 00 6f 00 6e 00 67 00 43 00 72 00 79 00 70 00 74 00 6f 00 72 00 46 00 61 00 73 00 74 00 2e 00 65 00 78 00 65 00 90 00 } //01 00 
		$a_02_9 = {4f 00 72 00 69 00 67 00 69 00 6e 00 61 00 6c 00 46 00 69 00 6c 00 65 00 6e 00 61 00 6d 00 65 00 90 02 06 53 00 74 00 72 00 6f 00 6e 00 67 00 43 00 72 00 79 00 70 00 74 00 6f 00 72 00 4e 00 65 00 74 00 2e 00 65 00 78 00 65 00 90 00 } //01 00 
		$a_02_10 = {4f 00 72 00 69 00 67 00 69 00 6e 00 61 00 6c 00 46 00 69 00 6c 00 65 00 6e 00 61 00 6d 00 65 00 90 02 06 54 00 68 00 6f 00 72 00 56 00 61 00 72 00 69 00 61 00 6e 00 74 00 2e 00 65 00 78 00 65 00 90 00 } //01 00 
		$a_02_11 = {4f 00 72 00 69 00 67 00 69 00 6e 00 61 00 6c 00 46 00 69 00 6c 00 65 00 6e 00 61 00 6d 00 65 00 90 02 06 57 00 65 00 61 00 6b 00 43 00 72 00 79 00 70 00 74 00 6f 00 72 00 2e 00 65 00 78 00 65 00 90 00 } //00 00 
	condition:
		any of ($a_*)
 
}