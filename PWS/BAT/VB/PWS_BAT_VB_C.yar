
rule PWS_BAT_VB_C{
	meta:
		description = "PWS:BAT/VB.C,SIGNATURE_TYPE_PEHSTR,04 00 03 00 04 00 00 01 00 "
		
	strings :
		$a_01_0 = {65 00 7a 00 4d 00 30 00 4e 00 6a 00 4d 00 78 00 5a 00 44 00 49 00 7a 00 4c 00 57 00 45 00 33 00 4e 00 6a 00 51 00 74 00 4e 00 44 00 49 00 35 00 59 00 69 00 31 00 69 00 4f 00 54 00 52 00 69 00 4c 00 57 00 4d 00 31 00 4d 00 57 00 52 00 6b 00 59 00 54 00 6b 00 34 00 4e 00 44 00 6b 00 77 00 59 00 6e 00 30 00 73 00 49 00 45 00 4e 00 31 00 62 00 48 00 52 00 31 00 63 00 6d 00 55 00 39 00 62 00 6d 00 56 00 31 00 64 00 48 00 4a 00 68 00 62 00 43 00 77 00 67 00 55 00 48 00 56 00 69 00 62 00 47 00 6c 00 6a 00 53 00 32 00 56 00 35 00 56 00 47 00 39 00 72 00 5a 00 57 00 34 00 39 00 4d 00 32 00 55 00 31 00 4e 00 6a 00 4d 00 31 00 4d 00 44 00 59 00 35 00 4d 00 32 00 59 00 33 00 4d 00 7a 00 55 00 31 00 5a 00 51 00 3d 00 3d 00 } //01 00 
		$a_01_1 = {7b 00 37 00 34 00 34 00 33 00 36 00 34 00 30 00 34 00 2d 00 36 00 42 00 38 00 31 00 2d 00 34 00 46 00 43 00 43 00 2d 00 39 00 38 00 33 00 44 00 2d 00 32 00 45 00 34 00 42 00 36 00 31 00 45 00 36 00 30 00 32 00 46 00 45 00 7d 00 } //01 00 
		$a_01_2 = {4d 79 46 69 6c 65 2e 65 78 65 } //01 00 
		$a_01_3 = {53 6d 74 70 43 6c 69 65 6e 74 } //00 00 
	condition:
		any of ($a_*)
 
}