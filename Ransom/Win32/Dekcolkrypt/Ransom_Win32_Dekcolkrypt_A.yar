
rule Ransom_Win32_Dekcolkrypt_A{
	meta:
		description = "Ransom:Win32/Dekcolkrypt.A,SIGNATURE_TYPE_PEHSTR_EXT,0c 00 0c 00 0f 00 00 02 00 "
		
	strings :
		$a_01_0 = {43 00 3a 00 5c 00 57 00 69 00 6e 00 64 00 6f 00 77 00 73 00 5c 00 42 00 61 00 63 00 6b 00 2e 00 6a 00 70 00 67 00 } //02 00 
		$a_01_1 = {64 00 65 00 63 00 72 00 79 00 70 00 74 00 6f 00 72 00 2e 00 65 00 78 00 65 00 } //02 00 
		$a_01_2 = {50 00 61 00 79 00 62 00 69 00 74 00 } //02 00 
		$a_01_3 = {63 00 6f 00 6e 00 66 00 2e 00 74 00 78 00 74 00 } //02 00 
		$a_80_4 = {2e 4c 43 4b 44 } //.LCKD  02 00 
		$a_01_5 = {42 00 4b 00 2e 00 6a 00 70 00 67 00 } //02 00 
		$a_01_6 = {59 00 6f 00 75 00 72 00 20 00 69 00 6d 00 70 00 6f 00 72 00 74 00 61 00 6e 00 74 00 20 00 66 00 69 00 6c 00 65 00 73 00 20 00 61 00 72 00 65 00 20 00 65 00 6e 00 63 00 72 00 79 00 70 00 74 00 65 00 64 00 2e 00 } //02 00 
		$a_01_7 = {49 00 66 00 20 00 79 00 6f 00 75 00 20 00 73 00 61 00 76 00 65 00 20 00 79 00 6f 00 75 00 72 00 20 00 66 00 69 00 6c 00 65 00 73 00 2c 00 20 00 52 00 75 00 6e 00 20 00 61 00 6e 00 64 00 20 00 66 00 6f 00 6c 00 6c 00 6f 00 77 00 20 00 74 00 68 00 65 00 20 00 69 00 6e 00 73 00 74 00 72 00 75 00 63 00 74 00 69 00 6f 00 6e 00 73 00 21 00 } //02 00 
		$a_00_8 = {42 75 74 20 69 66 20 79 6f 75 20 77 61 6e 74 20 74 6f 20 64 65 63 72 79 70 74 20 61 6c 6c 20 79 6f 75 72 20 66 69 6c 65 73 2c 20 79 6f 75 20 6e 65 65 64 20 74 6f 20 70 61 79 2e } //02 00 
		$a_01_9 = {31 00 4c 00 58 00 68 00 70 00 69 00 6e 00 59 00 57 00 7a 00 46 00 37 00 33 00 68 00 55 00 79 00 44 00 76 00 78 00 41 00 70 00 6b 00 43 00 68 00 71 00 32 00 51 00 66 00 5a 00 68 00 6d 00 36 00 47 00 41 00 } //02 00 
		$a_00_10 = {50 41 59 4d 45 4e 54 20 57 49 4c 4c 20 42 45 20 52 41 49 53 45 44 20 4f 4e 3a } //02 00 
		$a_00_11 = {59 4f 55 52 20 46 49 4c 45 53 20 57 49 4c 4c 20 42 45 20 4c 4f 53 54 20 4f 4e 3a } //02 00 
		$a_00_12 = {64 65 63 72 79 70 74 6f 72 73 6f 6f 6e 33 30 31 40 61 6f 6c 2e 63 6f 6d } //02 00 
		$a_00_13 = {49 00 66 00 20 00 79 00 6f 00 75 00 20 00 66 00 61 00 69 00 6c 00 20 00 74 00 68 00 69 00 73 00 20 00 74 00 69 00 6d 00 65 00 20 00 2c 00 20 00 79 00 6f 00 75 00 20 00 63 00 61 00 6e 00 20 00 6c 00 6f 00 73 00 65 00 20 00 79 00 6f 00 75 00 72 00 20 00 65 00 6e 00 63 00 72 00 79 00 70 00 74 00 65 00 64 00 20 00 66 00 69 00 6c 00 65 00 73 00 } //02 00 
		$a_00_14 = {45 00 6e 00 74 00 65 00 72 00 20 00 43 00 6f 00 72 00 72 00 65 00 63 00 74 00 20 00 4b 00 65 00 79 00 20 00 74 00 6f 00 20 00 64 00 65 00 63 00 72 00 79 00 70 00 74 00 20 00 79 00 6f 00 75 00 72 00 20 00 66 00 69 00 6c 00 65 00 73 00 } //00 00 
	condition:
		any of ($a_*)
 
}