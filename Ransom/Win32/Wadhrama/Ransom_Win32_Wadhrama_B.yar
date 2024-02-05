
rule Ransom_Win32_Wadhrama_B{
	meta:
		description = "Ransom:Win32/Wadhrama.B,SIGNATURE_TYPE_PEHSTR_EXT,0e 00 0e 00 13 00 00 0a 00 "
		
	strings :
		$a_80_0 = {61 61 61 5f 54 6f 75 63 68 4d 65 4e 6f 74 5f 2e 74 78 74 } //aaa_TouchMeNot_.txt  02 00 
		$a_00_1 = {40 00 57 00 61 00 6e 00 6e 00 61 00 44 00 65 00 63 00 72 00 79 00 70 00 74 00 6f 00 72 00 40 00 } //02 00 
		$a_00_2 = {72 00 65 00 61 00 64 00 6d 00 65 00 77 00 62 00 2e 00 74 00 78 00 74 00 } //02 00 
		$a_00_3 = {64 00 65 00 73 00 6b 00 74 00 6f 00 70 00 57 00 43 00 2e 00 4a 00 50 00 47 00 } //02 00 
		$a_00_4 = {2e 00 5b 00 74 00 77 00 69 00 73 00 74 00 40 00 61 00 69 00 72 00 6d 00 61 00 69 00 6c 00 2e 00 63 00 63 00 5d 00 2e 00 74 00 77 00 69 00 73 00 74 00 } //02 00 
		$a_00_5 = {49 66 20 79 6f 75 20 77 61 6e 74 20 72 65 73 74 6f 72 65 20 79 6f 75 72 20 66 69 6c 65 73 20 77 72 69 74 65 20 6f 6e 20 65 6d 61 69 6c 20 2d 20 74 77 69 73 74 40 61 69 72 6d 61 69 6c 2e 63 63 } //02 00 
		$a_00_6 = {48 00 6f 00 77 00 5f 00 44 00 65 00 63 00 72 00 79 00 70 00 74 00 5f 00 46 00 69 00 6c 00 65 00 73 00 2e 00 74 00 78 00 74 00 } //02 00 
		$a_00_7 = {52 00 45 00 41 00 44 00 20 00 4d 00 45 00 20 00 46 00 4f 00 52 00 20 00 44 00 45 00 43 00 52 00 59 00 50 00 54 00 2e 00 74 00 78 00 74 00 } //02 00 
		$a_00_8 = {42 6c 61 63 6b 53 74 61 72 4d 61 66 69 61 40 71 71 2e 63 6f 6d } //02 00 
		$a_00_9 = {41 6c 6c 20 79 6f 75 72 20 66 69 6c 65 73 20 69 73 20 65 6e 63 72 79 70 74 65 64 20 75 73 69 6e 67 20 61 6e 20 75 6e 6b 6e 6f 77 6e 20 61 6c 67 6f 72 69 74 68 6d 21 } //02 00 
		$a_00_10 = {2e 00 5b 00 61 00 69 00 64 00 61 00 63 00 6c 00 61 00 72 00 6b 00 32 00 40 00 61 00 6f 00 6c 00 2e 00 63 00 6f 00 6d 00 5d 00 2e 00 61 00 72 00 72 00 6f 00 77 00 } //02 00 
		$a_00_11 = {43 3a 5c 63 72 79 73 69 73 5c 52 65 6c 65 61 73 65 5c 50 44 42 5c 70 61 79 6c 6f 61 64 2e 70 64 62 } //02 00 
		$a_00_12 = {2e 00 5b 00 7a 00 61 00 68 00 72 00 61 00 5f 00 62 00 6c 00 6f 00 6f 00 6d 00 40 00 61 00 6f 00 6c 00 2e 00 63 00 6f 00 6d 00 5d 00 2e 00 61 00 72 00 72 00 6f 00 77 00 } //02 00 
		$a_00_13 = {2e 00 5b 00 62 00 69 00 74 00 63 00 6f 00 69 00 6e 00 38 00 38 00 38 00 40 00 63 00 6f 00 63 00 6b 00 2e 00 6c 00 69 00 5d 00 2e 00 61 00 72 00 72 00 6f 00 77 00 } //02 00 
		$a_00_14 = {2e 00 5b 00 65 00 6c 00 65 00 6d 00 65 00 6e 00 74 00 74 00 72 00 75 00 6d 00 70 00 61 00 40 00 74 00 75 00 74 00 61 00 6e 00 6f 00 74 00 61 00 2e 00 63 00 6f 00 6d 00 5d 00 2e 00 61 00 72 00 72 00 6f 00 77 00 } //02 00 
		$a_00_15 = {44 3a 5c 23 5f 73 72 63 5c 70 72 6f 6a 65 63 74 73 5c 52 61 6e 73 6f 6d 77 61 72 65 54 65 73 74 5c 44 65 62 75 67 5c 52 61 6e 73 6f 6d 77 61 72 65 54 65 73 74 2e 70 64 62 } //02 00 
		$a_00_16 = {25 00 64 00 20 00 66 00 69 00 6c 00 65 00 73 00 20 00 77 00 61 00 73 00 20 00 65 00 6e 00 63 00 72 00 79 00 70 00 74 00 65 00 64 00 2e 00 20 00 70 00 72 00 65 00 73 00 73 00 20 00 61 00 6e 00 79 00 20 00 6b 00 65 00 79 00 } //02 00 
		$a_00_17 = {5f 00 48 00 45 00 4c 00 50 00 5f 00 49 00 4e 00 53 00 54 00 52 00 55 00 43 00 54 00 49 00 4f 00 4e 00 53 00 5f 00 2e 00 54 00 58 00 54 00 } //02 00 
		$a_80_18 = {42 30 34 30 41 33 45 44 32 37 43 31 36 36 43 42 43 34 45 38 44 30 45 31 32 38 36 33 34 37 46 33 2e 4d 4f 4c 45 36 36 } //B040A3ED27C166CBC4E8D0E1286347F3.MOLE66  00 00 
	condition:
		any of ($a_*)
 
}