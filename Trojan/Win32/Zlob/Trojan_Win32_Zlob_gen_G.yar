
rule Trojan_Win32_Zlob_gen_G{
	meta:
		description = "Trojan:Win32/Zlob.gen!G,SIGNATURE_TYPE_PEHSTR,ffffff91 06 ffffff91 06 19 00 00 01 00 "
		
	strings :
		$a_01_0 = {65 00 6e 00 71 00 76 00 77 00 6b 00 70 00 54 00 4f 00 4f 00 4c 00 42 00 41 00 52 00 } //01 00 
		$a_01_1 = {65 00 6d 00 6c 00 6b 00 64 00 76 00 6f 00 54 00 4f 00 4f 00 4c 00 42 00 41 00 52 00 } //01 00 
		$a_01_2 = {65 00 64 00 66 00 71 00 76 00 72 00 77 00 54 00 4f 00 4f 00 4c 00 42 00 41 00 52 00 } //01 00 
		$a_01_3 = {6a 00 6f 00 6b 00 77 00 6d 00 70 00 54 00 4f 00 4f 00 4c 00 42 00 41 00 52 00 } //01 00 
		$a_01_4 = {6c 00 65 00 6f 00 73 00 72 00 76 00 54 00 4f 00 4f 00 4c 00 42 00 41 00 52 00 } //01 00 
		$a_01_5 = {73 00 64 00 72 00 6d 00 6f 00 64 00 54 00 4f 00 4f 00 4c 00 42 00 41 00 52 00 } //01 00 
		$a_01_6 = {65 00 6c 00 66 00 77 00 67 00 70 00 73 00 54 00 4f 00 4f 00 4c 00 42 00 41 00 52 00 } //01 00 
		$a_01_7 = {62 00 6f 00 6e 00 73 00 77 00 73 00 54 00 4f 00 4f 00 4c 00 42 00 41 00 52 00 } //0a 00 
		$a_01_8 = {54 00 6f 00 6f 00 6c 00 62 00 61 00 72 00 57 00 69 00 6e 00 64 00 6f 00 77 00 33 00 32 00 } //0a 00 
		$a_01_9 = {4d 4f 54 4c 45 59 46 4f 4f 4c 4c 69 62 } //0a 00 
		$a_01_10 = {41 00 54 00 4c 00 3a 00 25 00 70 00 } //32 00 
		$a_01_11 = {43 6c 61 73 73 20 48 69 65 72 61 72 63 68 79 20 44 65 73 63 72 69 70 74 6f 72 } //32 00 
		$a_01_12 = {52 65 67 51 75 65 72 79 49 6e 66 6f 4b 65 79 57 } //32 00 
		$a_01_13 = {43 00 6f 00 6d 00 70 00 6f 00 6e 00 65 00 6e 00 74 00 20 00 43 00 61 00 74 00 65 00 67 00 6f 00 72 00 69 00 65 00 73 00 } //32 00 
		$a_01_14 = {43 00 4c 00 53 00 49 00 44 00 } //32 00 
		$a_01_15 = {46 00 6f 00 72 00 63 00 65 00 52 00 65 00 6d 00 6f 00 76 00 65 00 } //32 00 
		$a_01_16 = {48 00 4b 00 45 00 59 00 5f 00 43 00 4c 00 41 00 53 00 53 00 45 00 53 00 5f 00 52 00 4f 00 4f 00 54 00 } //32 00 
		$a_01_17 = {48 00 4b 00 45 00 59 00 5f 00 43 00 55 00 52 00 52 00 45 00 4e 00 54 00 5f 00 55 00 53 00 45 00 52 00 } //32 00 
		$a_01_18 = {48 00 4b 00 45 00 59 00 5f 00 4c 00 4f 00 43 00 41 00 4c 00 5f 00 4d 00 41 00 43 00 48 00 49 00 4e 00 45 00 } //32 00 
		$a_01_19 = {48 00 4b 00 45 00 59 00 5f 00 55 00 53 00 45 00 52 00 53 00 } //32 00 
		$a_01_20 = {48 00 4b 00 45 00 59 00 5f 00 50 00 45 00 52 00 46 00 4f 00 52 00 4d 00 41 00 4e 00 43 00 45 00 5f 00 44 00 41 00 54 00 41 00 } //32 00 
		$a_01_21 = {48 00 4b 00 45 00 59 00 5f 00 44 00 59 00 4e 00 5f 00 44 00 41 00 54 00 41 00 } //32 00 
		$a_01_22 = {48 00 4b 00 45 00 59 00 5f 00 43 00 55 00 52 00 52 00 45 00 4e 00 54 00 5f 00 43 00 4f 00 4e 00 46 00 49 00 47 00 } //32 00 
		$a_01_23 = {5c 00 49 00 6d 00 70 00 6c 00 65 00 6d 00 65 00 6e 00 74 00 65 00 64 00 20 00 43 00 61 00 74 00 65 00 67 00 6f 00 72 00 69 00 65 00 73 00 } //e8 03 
		$a_01_24 = {45 6e 63 6f 64 65 50 6f 69 6e 74 65 72 00 00 00 4b 45 52 4e 45 4c 33 32 2e 44 4c 4c 00 00 00 00 44 65 63 6f 64 65 50 6f 69 6e 74 65 72 00 00 00 46 6c 73 46 72 65 65 00 46 6c 73 53 65 74 56 61 6c 75 65 00 46 6c 73 47 65 74 56 61 6c 75 65 00 46 6c 73 41 6c 6c 6f 63 00 00 } //00 00 
	condition:
		any of ($a_*)
 
}