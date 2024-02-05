
rule Trojan_Win32_Killav_FB{
	meta:
		description = "Trojan:Win32/Killav.FB,SIGNATURE_TYPE_PEHSTR_EXT,76 00 73 00 17 00 00 01 00 "
		
	strings :
		$a_02_0 = {63 6f 70 79 20 22 90 02 0f 2e 65 78 65 22 20 22 25 50 72 6f 67 72 61 6d 46 69 6c 65 73 25 5c 4d 6f 72 70 68 65 75 73 5c 4d 79 20 53 68 61 72 65 64 20 46 6f 6c 64 65 72 5c 90 02 0f 2e 65 78 65 22 90 00 } //01 00 
		$a_02_1 = {63 6f 70 79 20 22 90 02 0f 2e 65 78 65 22 20 22 25 50 72 6f 67 72 61 6d 46 69 6c 65 73 25 5c 4b 4d 44 5c 4d 79 20 53 68 61 72 65 64 20 46 6f 6c 64 65 72 5c 90 02 0f 2e 65 78 65 22 90 00 } //01 00 
		$a_02_2 = {63 6f 70 79 20 22 90 02 0f 2e 65 78 65 22 20 22 25 50 72 6f 67 72 61 6d 46 69 6c 65 73 25 5c 4b 61 7a 61 61 20 4c 69 74 65 5c 4d 79 20 53 68 61 72 65 64 20 46 6f 6c 64 65 72 5c 90 02 0f 2e 65 78 65 22 90 00 } //01 00 
		$a_02_3 = {63 6f 70 79 20 22 90 02 0f 2e 65 78 65 22 20 22 25 50 72 6f 67 72 61 6d 46 69 6c 65 73 25 5c 42 65 61 72 53 68 61 72 65 5c 53 68 61 72 65 64 5c 90 02 0f 2e 65 78 65 22 90 00 } //01 00 
		$a_02_4 = {63 6f 70 79 20 22 90 02 0f 2e 65 78 65 22 20 22 25 50 72 6f 67 72 61 6d 46 69 6c 65 73 25 5c 45 64 6f 6e 6b 65 79 32 30 30 30 5c 49 6e 63 6f 6d 69 6e 67 5c 90 02 0f 2e 65 78 65 22 90 00 } //01 00 
		$a_02_5 = {63 6f 70 79 20 22 90 02 0f 2e 65 78 65 22 20 22 25 50 72 6f 67 72 61 6d 46 69 6c 65 73 25 5c 6d 49 52 43 5c 44 6f 77 6e 6c 6f 61 64 5c 90 02 0f 2e 65 78 65 22 90 00 } //01 00 
		$a_02_6 = {63 6f 70 79 20 22 90 02 0f 2e 65 78 65 22 20 22 25 50 72 6f 67 72 61 6d 46 69 6c 65 73 25 5c 58 6f 6c 6f 58 5c 44 6f 77 6e 6c 6f 61 64 73 5c 90 02 0f 2e 65 78 65 22 90 00 } //01 00 
		$a_02_7 = {63 6f 70 79 20 22 90 02 0f 2e 65 78 65 22 20 22 25 50 72 6f 67 72 61 6d 46 69 6c 65 73 25 5c 53 68 61 72 65 61 7a 61 5c 44 6f 77 6e 6c 6f 61 64 73 5c 90 02 0f 2e 65 78 65 22 90 00 } //01 00 
		$a_02_8 = {63 6f 70 79 20 22 90 02 0f 2e 65 78 65 22 20 22 25 50 72 6f 67 72 61 6d 46 69 6c 65 73 25 5c 47 72 6f 6b 73 74 65 72 5c 4d 79 20 47 72 6f 6b 73 74 65 72 5c 90 02 0f 2e 65 78 65 22 90 00 } //01 00 
		$a_02_9 = {63 6f 70 79 20 22 90 02 0f 2e 65 78 65 22 20 22 25 50 72 6f 67 72 61 6d 46 69 6c 65 73 25 5c 4f 76 65 72 6e 65 74 5c 49 6e 63 6f 6d 69 6e 67 5c 90 02 0f 2e 65 78 65 22 90 00 } //01 00 
		$a_02_10 = {63 6f 70 79 20 22 90 02 0f 2e 65 78 65 22 20 22 25 50 72 6f 67 72 61 6d 46 69 6c 65 73 25 5c 54 65 73 6c 61 5c 46 69 6c 65 73 5c 90 02 0f 2e 65 78 65 22 90 00 } //01 00 
		$a_02_11 = {63 6f 70 79 20 22 90 02 0f 2e 65 78 65 22 20 22 25 50 72 6f 67 72 61 6d 46 69 6c 65 73 25 5c 52 61 70 69 67 61 74 6f 72 5c 53 68 61 72 65 5c 90 02 0f 2e 65 78 65 22 90 00 } //64 00 
		$a_00_12 = {48 4b 4c 4d 5c 53 4f 46 54 57 41 52 45 5c 4d 69 63 72 6f 73 6f 66 74 5c 57 69 6e 64 6f 77 73 5c 43 75 72 72 65 6e 74 56 65 72 73 69 6f 6e 5c 52 75 6e } //01 00 
		$a_00_13 = {74 73 6b 69 6c 6c 20 22 5f 41 56 50 } //01 00 
		$a_00_14 = {74 73 6b 69 6c 6c 20 22 41 56 50 } //01 00 
		$a_00_15 = {74 73 6b 69 6c 6c 20 22 42 4c 41 43 4b 49 43 45 22 } //01 00 
		$a_00_16 = {74 73 6b 69 6c 6c 20 22 45 53 41 46 45 22 } //01 00 
		$a_00_17 = {74 73 6b 69 6c 6c 20 22 46 2d 50 52 4f 54 } //01 00 
		$a_00_18 = {74 73 6b 69 6c 6c 20 22 50 41 56 43 4c 22 } //01 00 
		$a_00_19 = {74 73 6b 69 6c 6c 20 22 52 41 56 37 } //01 00 
		$a_00_20 = {74 73 6b 69 6c 6c 20 22 52 45 47 45 44 49 54 2e 45 58 45 } //01 00 
		$a_00_21 = {74 73 6b 69 6c 6c 20 22 53 43 41 4e 33 32 22 } //01 00 
		$a_00_22 = {74 73 6b 69 6c 6c 20 22 5a 4f 4e 45 41 4c 41 52 4d 22 } //00 00 
	condition:
		any of ($a_*)
 
}