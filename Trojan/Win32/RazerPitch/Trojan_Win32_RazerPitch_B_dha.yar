
rule Trojan_Win32_RazerPitch_B_dha{
	meta:
		description = "Trojan:Win32/RazerPitch.B!dha,SIGNATURE_TYPE_PEHSTR_EXT,05 00 05 00 0c 00 00 05 00 "
		
	strings :
		$a_01_0 = {8d 42 fe 48 83 c1 06 83 e0 07 42 0f b6 04 00 30 41 f9 8d 42 ff 83 e0 07 42 0f b6 04 00 30 41 fa 48 8b c2 83 e0 07 42 0f b6 04 00 30 41 fb 8d 42 01 83 e0 07 42 0f b6 04 00 30 41 fc 8d 42 02 83 e0 07 42 0f b6 04 00 30 41 fd 8d 42 03 83 c2 06 83 e0 07 42 0f b6 04 00 30 41 fe 48 ff cf 75 a0 } //05 00 
		$a_01_1 = {48 89 84 24 88 00 00 00 48 85 f6 0f 84 c3 00 00 00 66 66 66 66 0f 1f 84 00 00 00 00 00 48 8b 45 00 48 8d 4c 24 20 48 8d 1c 07 48 8b d3 48 8b 03 48 89 84 24 90 00 00 00 48 8b 43 08 48 89 84 24 98 00 00 00 e8 44 fd ff ff 48 8b c3 48 f7 d8 b9 04 00 00 00 } //01 00 
		$a_01_2 = {31 32 33 34 35 36 37 38 39 30 41 42 43 44 45 46 31 32 33 34 35 36 37 38 39 30 41 42 43 44 45 46 } //01 00 
		$a_01_3 = {51 00 32 00 39 00 75 00 70 00 4c 00 6b 00 45 00 73 00 59 00 65 00 55 00 39 00 65 00 71 00 79 00 38 00 53 00 66 00 6f 00 } //01 00 
		$a_01_4 = {48 63 49 31 4e 4a 4e 55 71 67 5a 39 50 69 34 55 36 47 76 6d 2e 5a 6d 4b 74 76 65 5a 64 64 75 6f 31 58 52 56 58 58 52 31 4a } //01 00 
		$a_01_5 = {45 00 62 00 63 00 66 00 46 00 54 00 73 00 47 00 00 00 } //01 00 
		$a_01_6 = {45 00 78 00 6e 00 41 00 6e 00 71 00 59 00 72 00 46 00 35 00 53 00 43 00 66 00 79 00 79 00 47 00 64 00 63 00 66 00 38 00 65 00 51 00 3d 00 3d 00 } //01 00 
		$a_01_7 = {51 00 45 00 53 00 30 00 41 00 4e 00 56 00 77 00 49 00 77 00 6a 00 4c 00 53 00 2b 00 47 00 58 00 4c 00 65 00 2f 00 39 00 54 00 77 00 3d 00 3d 00 } //01 00 
		$a_01_8 = {47 00 4b 00 56 00 78 00 2b 00 64 00 42 00 6e 00 79 00 38 00 5a 00 4d 00 54 00 78 00 53 00 2b 00 53 00 50 00 69 00 71 00 77 00 46 00 43 00 45 00 66 00 4e 00 58 00 73 00 78 00 64 00 48 00 62 00 66 00 42 00 49 00 61 00 5a 00 75 00 75 00 39 00 52 00 5a 00 65 00 78 00 53 00 5a 00 7a 00 78 00 74 00 33 00 72 00 63 00 35 00 70 00 67 00 76 00 73 00 36 00 6d 00 74 00 63 00 38 00 34 00 75 00 68 00 6e 00 79 00 69 00 75 00 59 00 39 00 48 00 71 00 75 00 32 00 52 00 30 00 6e 00 30 00 64 00 67 00 4a 00 66 00 62 00 41 00 67 00 3d 00 3d 00 } //01 00 
		$a_01_9 = {52 00 54 00 72 00 38 00 75 00 51 00 35 00 6b 00 6e 00 76 00 6d 00 4e 00 54 00 2b 00 58 00 79 00 64 00 79 00 59 00 30 00 4f 00 41 00 3d 00 3d 00 } //01 00 
		$a_01_10 = {46 00 58 00 6f 00 71 00 6f 00 46 00 70 00 74 00 6b 00 6b 00 36 00 66 00 54 00 32 00 55 00 57 00 74 00 34 00 42 00 77 00 51 00 50 00 76 00 31 00 78 00 47 00 61 00 38 00 69 00 33 00 61 00 51 00 5a 00 31 00 71 00 63 00 49 00 74 00 38 00 56 00 30 00 45 00 61 00 61 00 77 00 7a 00 36 00 33 00 69 00 68 00 76 00 71 00 4a 00 56 00 70 00 50 00 71 00 79 00 53 00 48 00 66 00 39 00 64 00 31 00 } //01 00 
		$a_01_11 = {32 00 62 00 72 00 41 00 50 00 39 00 4f 00 70 00 70 00 57 00 76 00 70 00 63 00 43 00 50 00 79 00 74 00 48 00 74 00 67 00 35 00 64 00 36 00 71 00 59 00 34 00 59 00 61 00 70 00 74 00 4e 00 42 00 79 00 65 00 59 00 55 00 4b 00 43 00 67 00 45 00 6b 00 64 00 41 00 3d 00 } //00 00 
	condition:
		any of ($a_*)
 
}