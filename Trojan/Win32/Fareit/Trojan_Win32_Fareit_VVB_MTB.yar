
rule Trojan_Win32_Fareit_VVB_MTB{
	meta:
		description = "Trojan:Win32/Fareit.VVB!MTB,SIGNATURE_TYPE_PEHSTR_EXT,04 00 04 00 03 00 00 02 00 "
		
	strings :
		$a_00_0 = {4d 53 56 42 56 4d 36 30 2e 44 4c 4c } //01 00 
		$a_01_1 = {56 00 4c 00 50 00 53 00 65 00 31 00 4c 00 62 00 62 00 51 00 42 00 34 00 44 00 72 00 64 00 39 00 4f 00 56 00 56 00 52 00 72 00 30 00 35 00 33 00 } //01 00 
		$a_01_2 = {47 00 46 00 5a 00 46 00 69 00 6d 00 78 00 70 00 6a 00 58 00 62 00 6e 00 51 00 6c 00 6b 00 69 00 66 00 4d 00 64 00 64 00 33 00 33 00 31 00 32 00 32 00 } //00 00 
	condition:
		any of ($a_*)
 
}
rule Trojan_Win32_Fareit_VVB_MTB_2{
	meta:
		description = "Trojan:Win32/Fareit.VVB!MTB,SIGNATURE_TYPE_PEHSTR_EXT,04 00 04 00 03 00 00 02 00 "
		
	strings :
		$a_00_0 = {4d 53 56 42 56 4d 36 30 2e 44 4c 4c } //01 00 
		$a_01_1 = {4a 00 50 00 39 00 4d 00 4c 00 64 00 50 00 74 00 4d 00 33 00 50 00 61 00 55 00 6c 00 64 00 75 00 4d 00 71 00 32 00 33 00 36 00 42 00 73 00 69 00 64 00 31 00 30 00 6c 00 63 00 55 00 64 00 31 00 38 00 33 00 } //01 00 
		$a_01_2 = {77 00 46 00 69 00 43 00 47 00 6e 00 50 00 64 00 75 00 70 00 46 00 64 00 65 00 62 00 79 00 61 00 50 00 66 00 57 00 75 00 7a 00 37 00 6c 00 78 00 5a 00 72 00 51 00 4f 00 38 00 70 00 5a 00 75 00 30 00 6c 00 33 00 } //00 00 
	condition:
		any of ($a_*)
 
}
rule Trojan_Win32_Fareit_VVB_MTB_3{
	meta:
		description = "Trojan:Win32/Fareit.VVB!MTB,SIGNATURE_TYPE_PEHSTR_EXT,04 00 04 00 03 00 00 02 00 "
		
	strings :
		$a_00_0 = {4d 53 56 42 56 4d 36 30 2e 44 4c 4c } //01 00 
		$a_01_1 = {4e 00 38 00 34 00 34 00 45 00 70 00 34 00 56 00 51 00 50 00 37 00 62 00 33 00 6f 00 59 00 61 00 48 00 30 00 4c 00 33 00 75 00 78 00 4c 00 44 00 70 00 36 00 6c 00 64 00 4f 00 48 00 6f 00 52 00 4f 00 31 00 44 00 50 00 5a 00 75 00 33 00 39 00 } //01 00 
		$a_01_2 = {56 00 77 00 32 00 49 00 72 00 49 00 76 00 72 00 61 00 31 00 6d 00 56 00 51 00 4f 00 47 00 57 00 5a 00 39 00 4c 00 4f 00 6f 00 36 00 41 00 76 00 5a 00 78 00 54 00 59 00 4a 00 34 00 62 00 48 00 30 00 64 00 63 00 79 00 5a 00 36 00 35 00 } //00 00 
	condition:
		any of ($a_*)
 
}
rule Trojan_Win32_Fareit_VVB_MTB_4{
	meta:
		description = "Trojan:Win32/Fareit.VVB!MTB,SIGNATURE_TYPE_PEHSTR_EXT,07 00 07 00 06 00 00 02 00 "
		
	strings :
		$a_00_0 = {4d 53 56 42 56 4d 36 30 2e 44 4c 4c } //01 00 
		$a_01_1 = {67 00 34 00 56 00 4b 00 42 00 4c 00 31 00 39 00 73 00 65 00 4f 00 76 00 76 00 59 00 34 00 75 00 77 00 6b 00 38 00 62 00 32 00 38 00 4b 00 6f 00 76 00 4b 00 65 00 64 00 6f 00 35 00 30 00 } //01 00 
		$a_01_2 = {4c 00 74 00 4f 00 79 00 79 00 78 00 77 00 30 00 48 00 4f 00 4b 00 69 00 32 00 6e 00 46 00 33 00 79 00 4b 00 57 00 68 00 58 00 72 00 6f 00 7a 00 6f 00 41 00 56 00 69 00 72 00 57 00 43 00 69 00 33 00 32 00 } //01 00 
		$a_01_3 = {51 00 75 00 38 00 55 00 37 00 4f 00 53 00 49 00 4f 00 43 00 38 00 63 00 51 00 6f 00 74 00 76 00 68 00 69 00 74 00 44 00 4a 00 4b 00 56 00 37 00 36 00 6e 00 30 00 36 00 77 00 31 00 37 00 32 00 } //01 00 
		$a_01_4 = {46 00 6c 00 73 00 46 00 43 00 70 00 4c 00 72 00 71 00 4f 00 32 00 33 00 34 00 } //01 00 
		$a_01_5 = {58 00 30 00 58 00 7a 00 65 00 32 00 34 00 30 00 } //00 00 
	condition:
		any of ($a_*)
 
}
rule Trojan_Win32_Fareit_VVB_MTB_5{
	meta:
		description = "Trojan:Win32/Fareit.VVB!MTB,SIGNATURE_TYPE_PEHSTR_EXT,0a 00 0a 00 13 00 00 02 00 "
		
	strings :
		$a_00_0 = {4d 53 56 42 56 4d 36 30 2e 44 4c 4c } //01 00 
		$a_01_1 = {4f 00 4c 00 49 00 34 00 6b 00 4f 00 33 00 52 00 51 00 54 00 62 00 4b 00 46 00 39 00 6d 00 72 00 31 00 30 00 67 00 43 00 63 00 45 00 31 00 39 00 33 00 } //01 00 
		$a_01_2 = {76 00 64 00 77 00 4f 00 5a 00 65 00 72 00 74 00 36 00 58 00 69 00 56 00 4e 00 51 00 55 00 45 00 69 00 42 00 34 00 57 00 63 00 49 00 77 00 77 00 31 00 59 00 55 00 61 00 51 00 70 00 62 00 54 00 69 00 71 00 39 00 34 00 4c 00 66 00 69 00 33 00 4f 00 73 00 54 00 51 00 55 00 58 00 69 00 64 00 6e 00 31 00 39 00 30 00 } //01 00 
		$a_01_3 = {44 00 48 00 6a 00 30 00 77 00 46 00 52 00 6e 00 45 00 49 00 79 00 54 00 76 00 6a 00 45 00 61 00 31 00 30 00 30 00 } //01 00 
		$a_01_4 = {61 00 49 00 55 00 73 00 6a 00 6e 00 4e 00 6e 00 37 00 44 00 66 00 77 00 6a 00 6b 00 41 00 42 00 63 00 44 00 32 00 6d 00 4b 00 46 00 37 00 54 00 31 00 34 00 37 00 } //01 00 
		$a_01_5 = {6f 00 70 00 67 00 70 00 76 00 79 00 42 00 6a 00 68 00 31 00 32 00 4e 00 4c 00 31 00 58 00 73 00 4b 00 31 00 34 00 } //01 00 
		$a_01_6 = {74 00 63 00 6c 00 54 00 70 00 4e 00 7a 00 75 00 62 00 37 00 56 00 46 00 62 00 4f 00 33 00 4e 00 6c 00 50 00 48 00 33 00 69 00 62 00 6c 00 66 00 7a 00 5a 00 64 00 32 00 6a 00 4a 00 72 00 68 00 5a 00 4a 00 41 00 47 00 31 00 30 00 31 00 } //01 00 
		$a_01_7 = {44 00 6d 00 33 00 43 00 75 00 4d 00 33 00 30 00 68 00 4f 00 34 00 59 00 46 00 5a 00 4b 00 76 00 78 00 66 00 43 00 61 00 59 00 54 00 36 00 49 00 79 00 4c 00 5a 00 54 00 50 00 49 00 30 00 78 00 39 00 6a 00 4c 00 52 00 44 00 4d 00 53 00 36 00 70 00 66 00 6d 00 68 00 63 00 37 00 67 00 6b 00 33 00 38 00 36 00 } //01 00 
		$a_01_8 = {4c 00 69 00 6b 00 78 00 6c 00 69 00 69 00 30 00 67 00 59 00 6b 00 30 00 39 00 55 00 55 00 66 00 46 00 4a 00 41 00 39 00 77 00 55 00 61 00 38 00 39 00 } //01 00 
		$a_01_9 = {42 00 50 00 36 00 4d 00 54 00 31 00 74 00 38 00 4b 00 57 00 77 00 50 00 6f 00 64 00 70 00 65 00 62 00 30 00 4c 00 69 00 55 00 6c 00 76 00 31 00 37 00 4f 00 59 00 64 00 57 00 70 00 65 00 78 00 58 00 49 00 43 00 31 00 30 00 37 00 } //01 00 
		$a_01_10 = {68 00 37 00 71 00 75 00 38 00 7a 00 69 00 75 00 74 00 4c 00 6d 00 46 00 38 00 76 00 65 00 56 00 56 00 44 00 76 00 6d 00 38 00 45 00 4b 00 31 00 63 00 41 00 54 00 56 00 32 00 30 00 38 00 } //01 00 
		$a_01_11 = {75 00 34 00 32 00 4d 00 79 00 6d 00 53 00 63 00 7a 00 49 00 30 00 41 00 70 00 72 00 62 00 37 00 4c 00 45 00 30 00 46 00 72 00 59 00 6b 00 37 00 31 00 46 00 38 00 61 00 4d 00 32 00 31 00 31 00 33 00 } //01 00 
		$a_01_12 = {78 00 33 00 62 00 64 00 79 00 64 00 6e 00 57 00 4c 00 46 00 31 00 64 00 42 00 72 00 39 00 4a 00 78 00 70 00 61 00 37 00 68 00 4a 00 47 00 6f 00 68 00 75 00 77 00 51 00 6a 00 78 00 39 00 55 00 7a 00 48 00 61 00 78 00 4b 00 37 00 65 00 47 00 42 00 55 00 31 00 33 00 7a 00 31 00 39 00 } //01 00 
		$a_01_13 = {6c 00 77 00 33 00 62 00 53 00 55 00 64 00 34 00 6e 00 65 00 5a 00 4a 00 45 00 55 00 48 00 77 00 48 00 49 00 46 00 52 00 6d 00 5a 00 6b 00 42 00 34 00 65 00 50 00 4b 00 59 00 4e 00 42 00 66 00 65 00 58 00 70 00 62 00 32 00 34 00 32 00 } //01 00 
		$a_01_14 = {52 00 36 00 39 00 55 00 6c 00 78 00 6c 00 59 00 71 00 4b 00 47 00 69 00 47 00 74 00 65 00 49 00 74 00 67 00 46 00 69 00 6e 00 56 00 52 00 72 00 59 00 65 00 50 00 64 00 56 00 51 00 4f 00 55 00 37 00 43 00 49 00 54 00 6a 00 31 00 36 00 37 00 } //01 00 
		$a_01_15 = {44 00 62 00 79 00 36 00 75 00 6b 00 38 00 76 00 32 00 47 00 6f 00 30 00 51 00 7a 00 39 00 4b 00 4f 00 68 00 6d 00 72 00 38 00 6e 00 36 00 6b 00 6c 00 69 00 54 00 72 00 4c 00 61 00 65 00 57 00 32 00 30 00 31 00 } //01 00 
		$a_01_16 = {57 00 74 00 4c 00 38 00 77 00 69 00 53 00 6a 00 43 00 6c 00 57 00 4b 00 4c 00 52 00 50 00 35 00 33 00 6a 00 44 00 6b 00 77 00 75 00 43 00 31 00 45 00 48 00 72 00 7a 00 68 00 69 00 78 00 56 00 41 00 74 00 53 00 74 00 77 00 68 00 56 00 39 00 68 00 52 00 4f 00 52 00 66 00 59 00 4f 00 39 00 30 00 } //01 00 
		$a_01_17 = {73 00 75 00 6c 00 41 00 69 00 30 00 4f 00 69 00 34 00 67 00 44 00 6e 00 7a 00 53 00 4b 00 76 00 32 00 64 00 4f 00 68 00 59 00 4c 00 64 00 31 00 31 00 39 00 } //01 00 
		$a_01_18 = {55 00 35 00 69 00 6c 00 6c 00 6f 00 50 00 49 00 43 00 49 00 47 00 57 00 52 00 74 00 62 00 6b 00 65 00 31 00 51 00 4a 00 64 00 48 00 32 00 32 00 37 00 } //00 00 
	condition:
		any of ($a_*)
 
}