
rule Ransom_MSIL_Crypute_C{
	meta:
		description = "Ransom:MSIL/Crypute.C,SIGNATURE_TYPE_PEHSTR_EXT,02 00 02 00 03 00 00 01 00 "
		
	strings :
		$a_02_0 = {72 61 6e 73 6f 6d 77 61 72 65 2e 90 02 20 2e 72 65 73 6f 75 72 63 65 73 90 00 } //01 00 
		$a_03_1 = {41 00 42 00 43 00 44 00 45 00 46 00 47 00 48 00 49 00 4a 00 4b 00 4c 00 4d 00 4e 00 4f 00 50 00 51 00 52 00 53 00 54 00 55 00 56 00 57 00 58 00 59 00 5a 00 61 00 62 00 63 00 64 00 65 00 66 00 67 00 68 00 69 00 6a 00 6b 00 6c 00 6d 00 6e 00 6f 00 70 00 71 00 72 00 73 00 74 00 75 00 76 00 77 00 78 00 79 00 7a 00 31 00 32 00 33 00 34 00 35 00 36 00 37 00 38 00 39 00 30 00 7e 00 3d 00 21 00 40 00 23 00 24 00 25 00 5e 00 26 00 2a 00 28 00 29 00 90 02 20 2e 00 70 00 6e 00 67 00 90 00 } //01 00 
		$a_00_2 = {48 69 74 6c 65 72 52 61 6e 73 6f 6d 77 61 72 65 5f 4c 6f 61 64 } //00 00 
		$a_00_3 = {7e } //15 00 
	condition:
		any of ($a_*)
 
}