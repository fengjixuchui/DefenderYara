
rule TrojanDownloader_Win32_Satacom_ASG_MTB{
	meta:
		description = "TrojanDownloader:Win32/Satacom.ASG!MTB,SIGNATURE_TYPE_PEHSTR_EXT,04 00 04 00 10 00 00 01 00 "
		
	strings :
		$a_01_0 = {73 00 42 00 78 00 72 00 32 00 79 00 54 00 39 00 49 00 4f 00 55 00 32 00 63 00 54 00 34 00 67 00 39 00 6e 00 46 00 48 00 5a 00 4c 00 39 00 55 00 42 00 50 00 73 00 37 00 } //01 00 
		$a_01_1 = {59 00 57 00 36 00 57 00 6d 00 46 00 34 00 41 00 4a 00 42 00 4d 00 35 00 59 00 35 00 68 00 65 00 6a 00 51 00 72 00 47 00 34 00 75 00 6d 00 51 00 61 00 48 00 34 00 74 00 } //01 00 
		$a_01_2 = {72 00 67 00 6f 00 64 00 6f 00 61 00 36 00 58 00 56 00 6c 00 52 00 6e 00 4c 00 68 00 31 00 6e 00 64 00 62 00 31 00 37 00 6a 00 71 00 33 00 74 00 4e 00 53 00 33 00 31 00 } //01 00 
		$a_01_3 = {50 00 55 00 6e 00 58 00 43 00 6a 00 75 00 6d 00 66 00 50 00 4b 00 70 00 70 00 34 00 6e 00 39 00 35 00 4c 00 58 00 32 00 38 00 73 00 39 00 49 00 78 00 4d 00 50 00 } //01 00 
		$a_01_4 = {73 00 62 00 7a 00 73 00 79 00 68 00 75 00 69 00 6f 00 4a 00 4b 00 32 00 41 00 61 00 37 00 4b 00 6d 00 69 00 62 00 66 00 4e 00 6c 00 35 00 4e 00 61 00 59 00 4a 00 } //01 00 
		$a_01_5 = {73 00 6a 00 6e 00 6a 00 73 00 53 00 6b 00 4b 00 77 00 63 00 31 00 31 00 75 00 57 00 32 00 61 00 63 00 46 00 47 00 4e 00 51 00 6a 00 6a 00 6d 00 34 00 5a 00 39 00 62 00 33 00 34 00 } //01 00 
		$a_01_6 = {73 00 38 00 75 00 45 00 5a 00 66 00 44 00 33 00 4a 00 69 00 4e 00 32 00 67 00 74 00 54 00 35 00 6e 00 47 00 47 00 54 00 5a 00 38 00 4e 00 4d 00 7a 00 51 00 35 00 } //01 00 
		$a_01_7 = {73 00 4e 00 31 00 71 00 36 00 37 00 39 00 61 00 32 00 6e 00 33 00 69 00 68 00 6b 00 70 00 6b 00 47 00 41 00 43 00 4c 00 54 00 73 00 5a 00 55 00 42 00 73 00 45 00 50 00 62 00 6a 00 } //01 00 
		$a_01_8 = {33 00 46 00 6a 00 55 00 76 00 6e 00 57 00 53 00 4d 00 4a 00 57 00 52 00 57 00 6c 00 61 00 39 00 35 00 53 00 44 00 52 00 32 00 6b 00 33 00 32 00 57 00 6c 00 35 00 41 00 } //01 00 
		$a_01_9 = {35 00 6c 00 64 00 4e 00 31 00 4c 00 33 00 6e 00 36 00 32 00 62 00 70 00 38 00 44 00 33 00 47 00 79 00 76 00 36 00 4f 00 4b 00 44 00 72 00 54 00 64 00 65 00 } //01 00 
		$a_01_10 = {34 00 4e 00 6f 00 67 00 4b 00 37 00 77 00 32 00 33 00 36 00 47 00 79 00 77 00 41 00 44 00 52 00 50 00 67 00 6c 00 53 00 35 00 39 00 5a 00 35 00 4e 00 69 00 51 00 34 00 36 00 } //01 00 
		$a_01_11 = {48 00 50 00 6c 00 48 00 6b 00 4b 00 4d 00 50 00 34 00 38 00 64 00 4f 00 46 00 31 00 71 00 79 00 64 00 42 00 45 00 68 00 53 00 38 00 4b 00 53 00 68 00 67 00 76 00 } //01 00 
		$a_01_12 = {6a 00 6e 00 6a 00 73 00 53 00 6b 00 4b 00 77 00 63 00 31 00 31 00 75 00 57 00 32 00 61 00 63 00 46 00 47 00 4e 00 51 00 6a 00 6a 00 6d 00 34 00 5a 00 39 00 62 00 33 00 34 00 } //01 00 
		$a_01_13 = {38 00 75 00 45 00 5a 00 66 00 44 00 33 00 4a 00 69 00 4e 00 32 00 67 00 74 00 54 00 35 00 6e 00 47 00 47 00 54 00 5a 00 38 00 4e 00 4d 00 7a 00 51 00 35 00 } //01 00 
		$a_01_14 = {43 00 38 00 34 00 65 00 55 00 58 00 78 00 4c 00 33 00 39 00 6a 00 48 00 68 00 4a 00 52 00 4c 00 7a 00 34 00 52 00 57 00 57 00 38 00 35 00 35 00 53 00 36 00 } //01 00 
		$a_01_15 = {78 00 56 00 6a 00 6d 00 62 00 65 00 4e 00 74 00 35 00 34 00 5a 00 4f 00 39 00 44 00 67 00 51 00 4c 00 65 00 33 00 45 00 71 00 61 00 76 00 55 00 33 00 56 00 6c 00 } //00 00 
	condition:
		any of ($a_*)
 
}