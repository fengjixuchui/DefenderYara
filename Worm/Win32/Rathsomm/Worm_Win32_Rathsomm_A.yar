
rule Worm_Win32_Rathsomm_A{
	meta:
		description = "Worm:Win32/Rathsomm.A,SIGNATURE_TYPE_PEHSTR_EXT,06 00 05 00 09 00 00 02 00 "
		
	strings :
		$a_01_0 = {89 85 78 ff ff ff 83 bd 78 ff ff ff 6e 74 0e 83 bd 78 ff ff ff 15 74 05 e9 } //02 00 
		$a_03_1 = {7d 7d 8b 45 80 89 04 24 e8 90 01 04 83 ec 04 83 f8 02 75 57 90 00 } //02 00 
		$a_01_2 = {66 85 c0 74 31 83 bd e4 fb ff ff 00 79 28 83 bd e0 f6 ff ff 40 7e 1f 83 bd e0 f6 ff ff 5a 7f 16 } //01 00 
		$a_01_3 = {2e 70 68 70 3f 6e 61 6d 65 3d 25 4e 41 4d 45 25 26 67 75 69 64 3d 25 47 55 49 44 25 26 6c 6f 67 3d 25 4c 4f 47 25 } //01 00 
		$a_01_4 = {5b 53 74 65 61 6d 5d 20 55 73 65 72 6e 61 6d 65 3d } //01 00 
		$a_01_5 = {5b 53 4e 49 46 46 5d 20 54 59 50 45 3d } //01 00 
		$a_01_6 = {5b 4b 45 59 4c 4f 47 5d 20 57 4e 44 3d } //01 00 
		$a_01_7 = {5b 48 54 54 50 5d 20 52 41 57 3d } //01 00 
		$a_01_8 = {25 73 61 75 74 6f 72 75 6e 2e 69 6e 66 } //00 00 
	condition:
		any of ($a_*)
 
}