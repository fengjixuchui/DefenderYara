
rule Ransom_Win32_Gremcrypt_A_{
	meta:
		description = "Ransom:Win32/Gremcrypt.A!!Gremcrypt.gen!A,SIGNATURE_TYPE_ARHSTR_EXT,04 00 04 00 04 00 00 02 00 "
		
	strings :
		$a_00_0 = {5c 00 43 00 72 00 79 00 70 00 74 00 6f 00 72 00 5c 00 74 00 72 00 75 00 6e 00 6b 00 5c 00 4c 00 69 00 62 00 73 00 5c 00 53 00 79 00 6e 00 6f 00 70 00 73 00 65 00 5c 00 53 00 79 00 6e 00 43 00 72 00 79 00 70 00 74 00 6f 00 2e 00 70 00 61 00 73 00 } //01 00 
		$a_00_1 = {46 00 6f 00 72 00 20 00 6f 00 62 00 74 00 61 00 69 00 6e 00 69 00 6e 00 67 00 20 00 64 00 65 00 63 00 72 00 79 00 70 00 74 00 69 00 6f 00 6e 00 20 00 73 00 6f 00 66 00 74 00 77 00 61 00 72 00 65 00 2c 00 20 00 70 00 6c 00 65 00 61 00 73 00 65 00 2c 00 20 00 63 00 6f 00 6e 00 74 00 61 00 63 00 74 00 3a 00 20 00 25 00 73 00 } //01 00 
		$a_00_2 = {65 00 6e 00 63 00 72 00 79 00 70 00 74 00 65 00 64 00 5f 00 72 00 65 00 61 00 64 00 6d 00 65 00 2e 00 74 00 78 00 74 00 } //01 00 
		$a_00_3 = {65 00 6e 00 63 00 72 00 79 00 70 00 74 00 65 00 64 00 5f 00 6c 00 69 00 73 00 74 00 2e 00 74 00 78 00 74 00 } //05 00 
	condition:
		any of ($a_*)
 
}