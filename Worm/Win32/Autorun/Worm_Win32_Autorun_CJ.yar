
rule Worm_Win32_Autorun_CJ{
	meta:
		description = "Worm:Win32/Autorun.CJ,SIGNATURE_TYPE_PEHSTR,1b 00 1a 00 06 00 00 0a 00 "
		
	strings :
		$a_01_0 = {5c 00 44 00 6f 00 63 00 75 00 6d 00 65 00 6e 00 74 00 73 00 20 00 61 00 6e 00 64 00 20 00 53 00 65 00 74 00 74 00 69 00 6e 00 67 00 73 00 5c 00 54 00 41 00 53 00 44 00 41 00 2e 00 54 00 41 00 53 00 44 00 41 00 2d 00 42 00 32 00 30 00 46 00 34 00 33 00 42 00 41 00 45 00 5c 00 44 00 65 00 73 00 6b 00 74 00 6f 00 70 00 5c 00 30 00 30 00 37 00 5c 00 50 00 72 00 6f 00 6a 00 65 00 63 00 74 00 31 00 2e 00 76 00 62 00 70 00 } //05 00 
		$a_01_1 = {43 00 3a 00 5c 00 57 00 49 00 4e 00 44 00 4f 00 57 00 53 00 5c 00 73 00 79 00 73 00 74 00 65 00 6d 00 33 00 32 00 5c 00 64 00 6c 00 6c 00 63 00 61 00 63 00 68 00 65 00 5c 00 52 00 65 00 63 00 79 00 63 00 6c 00 65 00 72 00 2e 00 7b 00 36 00 34 00 35 00 46 00 46 00 30 00 34 00 30 00 2d 00 35 00 30 00 38 00 31 00 2d 00 31 00 30 00 31 00 42 00 2d 00 39 00 46 00 30 00 38 00 2d 00 30 00 30 00 41 00 41 00 30 00 30 00 32 00 46 00 39 00 35 00 34 00 45 00 7d 00 5c 00 73 00 76 00 63 00 68 00 6f 00 73 00 74 00 2e 00 65 00 78 00 65 00 } //05 00 
		$a_01_2 = {43 00 3a 00 5c 00 57 00 49 00 4e 00 44 00 4f 00 57 00 53 00 5c 00 73 00 79 00 73 00 74 00 65 00 6d 00 33 00 32 00 5c 00 64 00 6c 00 6c 00 63 00 61 00 63 00 68 00 65 00 5c 00 52 00 65 00 63 00 79 00 63 00 6c 00 65 00 72 00 2e 00 7b 00 36 00 34 00 35 00 46 00 46 00 30 00 34 00 30 00 2d 00 35 00 30 00 38 00 31 00 2d 00 31 00 30 00 31 00 42 00 2d 00 39 00 46 00 30 00 38 00 2d 00 30 00 30 00 41 00 41 00 30 00 30 00 32 00 46 00 39 00 35 00 34 00 45 00 7d 00 5c 00 47 00 6c 00 6f 00 62 00 61 00 6c 00 2e 00 65 00 78 00 65 00 } //05 00 
		$a_01_3 = {45 00 78 00 70 00 6c 00 6f 00 72 00 65 00 72 00 5c 00 41 00 64 00 76 00 61 00 6e 00 63 00 65 00 64 00 5c 00 46 00 6f 00 6c 00 64 00 65 00 72 00 5c 00 53 00 75 00 70 00 65 00 72 00 48 00 69 00 64 00 64 00 65 00 6e 00 } //01 00 
		$a_01_4 = {5b 00 61 00 75 00 74 00 6f 00 72 00 75 00 6e 00 5d 00 } //01 00 
		$a_01_5 = {53 00 68 00 65 00 6c 00 6c 00 65 00 78 00 65 00 63 00 75 00 74 00 65 00 3d 00 4d 00 53 00 2d 00 44 00 4f 00 53 00 2e 00 63 00 6f 00 6d 00 } //00 00 
	condition:
		any of ($a_*)
 
}