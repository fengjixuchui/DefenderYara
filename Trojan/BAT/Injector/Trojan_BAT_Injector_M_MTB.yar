
rule Trojan_BAT_Injector_M_MTB{
	meta:
		description = "Trojan:BAT/Injector.M!MTB,SIGNATURE_TYPE_PEHSTR,18 00 18 00 08 00 00 01 00 "
		
	strings :
		$a_01_0 = {53 00 6f 00 66 00 2e 00 74 00 77 00 61 00 72 00 65 00 5c 00 4d 00 69 00 63 00 72 00 2e 00 6f 00 73 00 6f 00 66 00 74 00 5c 00 57 00 69 00 6e 00 2e 00 64 00 6f 00 77 00 73 00 5c 00 43 00 75 00 72 00 72 00 2e 00 65 00 6e 00 74 00 56 00 65 00 72 00 2e 00 73 00 69 00 6f 00 6e 00 5c 00 2e 00 52 00 2e 00 75 00 2e 00 6e 00 5c 00 } //01 00 
		$a_01_1 = {25 00 55 00 53 00 2e 00 45 00 52 00 50 00 2e 00 52 00 4f 00 46 00 2e 00 49 00 4c 00 45 00 2e 00 25 00 5c 00 41 00 2e 00 70 00 70 00 44 00 2e 00 61 00 74 00 61 00 2e 00 5c 00 52 00 6f 00 2e 00 61 00 6d 00 2e 00 69 00 6e 00 2e 00 67 00 5c 00 2e 00 4d 00 69 00 2e 00 63 00 72 00 2e 00 6f 00 73 00 2e 00 6f 00 66 00 2e 00 74 00 5c 00 2e 00 57 00 69 00 6e 00 64 00 2e 00 6f 00 77 00 73 00 5c 00 2e 00 53 00 74 00 61 00 72 00 2e 00 74 00 2e 00 20 00 4d 00 65 00 2e 00 6e 00 75 00 5c 00 50 00 2e 00 72 00 6f 00 67 00 2e 00 72 00 61 00 6d 00 73 00 5c 00 } //01 00 
		$a_01_2 = {53 00 2e 00 6f 00 66 00 2e 00 74 00 77 00 2e 00 61 00 72 00 2e 00 65 00 5c 00 2e 00 4d 00 69 00 2e 00 63 00 72 00 2e 00 6f 00 73 00 2e 00 6f 00 66 00 2e 00 74 00 2e 00 5c 00 2e 00 57 00 2e 00 69 00 2e 00 6e 00 64 00 6f 00 77 00 2e 00 73 00 5c 00 43 00 75 00 72 00 2e 00 72 00 65 00 6e 00 74 00 56 00 2e 00 65 00 72 00 73 00 69 00 6f 00 2e 00 6e 00 5c 00 45 00 78 00 70 00 2e 00 6c 00 6f 00 72 00 65 00 72 00 2e 00 5c 00 55 00 73 00 65 00 72 00 2e 00 20 00 53 00 68 00 65 00 2e 00 6c 00 6c 00 20 00 2e 00 46 00 6f 00 6c 00 64 00 2e 00 65 00 2e 00 72 00 73 00 } //05 00 
		$a_01_3 = {53 00 65 00 6c 00 65 00 63 00 74 00 20 00 2a 00 20 00 66 00 72 00 6f 00 6d 00 20 00 57 00 69 00 6e 00 33 00 32 00 5f 00 43 00 6f 00 6d 00 70 00 75 00 74 00 65 00 72 00 53 00 79 00 73 00 74 00 65 00 6d 00 } //05 00 
		$a_01_4 = {53 00 62 00 69 00 65 00 44 00 6c 00 6c 00 2e 00 64 00 6c 00 6c 00 } //05 00 
		$a_01_5 = {41 00 76 00 61 00 73 00 74 00 55 00 49 00 } //05 00 
		$a_01_6 = {41 00 6d 00 2e 00 73 00 69 00 2e 00 53 00 63 00 2e 00 61 00 6e 00 2e 00 42 00 75 00 2e 00 66 00 66 00 2e 00 65 00 72 00 } //01 00 
		$a_01_7 = {43 00 72 00 65 00 61 00 74 00 65 00 4f 00 62 00 6a 00 65 00 63 00 74 00 28 00 22 00 57 00 53 00 63 00 72 00 69 00 70 00 74 00 2e 00 53 00 68 00 65 00 6c 00 6c 00 22 00 29 00 2e 00 52 00 75 00 6e 00 } //00 00 
		$a_01_8 = {00 5d 04 00 00 10 55 04 80 5c 27 00 00 11 55 04 80 00 00 01 } //00 08 
	condition:
		any of ($a_*)
 
}