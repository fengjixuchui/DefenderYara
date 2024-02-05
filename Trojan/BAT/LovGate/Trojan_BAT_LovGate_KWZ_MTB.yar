
rule Trojan_BAT_LovGate_KWZ_MTB{
	meta:
		description = "Trojan:BAT/LovGate.KWZ!MTB,SIGNATURE_TYPE_PEHSTR_EXT,0b 00 0b 00 0b 00 00 01 00 "
		
	strings :
		$a_01_0 = {4a 00 47 00 4a 00 6c 00 63 00 33 00 51 00 32 00 4e 00 47 00 4e 00 76 00 5a 00 47 00 55 00 67 00 50 00 53 00 41 00 69 00 53 00 7a 00 42 00 42 00 59 00 6e 00 70 00 4f 00 57 00 45 00 78 00 6e 00 52 00 58 00 70 00 4f 00 4d 00 45 00 46 00 55 00 54 00 57 00 64 00 52 00 62 00 6d 00 4e 00 32 00 51 00 6c 00 68 00 4d 00 5a 00 30 00 46 00 71 00 54 00 48 00 63 00 } //01 00 
		$a_01_1 = {64 00 6d 00 39 00 72 00 5a 00 53 00 31 00 46 00 65 00 48 00 42 00 79 00 5a 00 58 00 4e 00 7a 00 61 00 57 00 39 00 75 00 49 00 43 00 52 00 4d 00 62 00 32 00 46 00 6b 00 51 00 32 00 39 00 6b 00 5a 00 51 00 3d 00 3d 00 } //01 00 
		$a_01_2 = {56 00 4f 00 51 00 6d 00 52 00 75 00 56 00 45 00 49 00 78 00 52 00 56 00 4a 00 43 00 51 00 6c 00 52 00 52 00 4d 00 7a 00 46 00 56 00 55 00 55 00 70 00 6b 00 56 00 56 00 46 00 34 00 52 00 56 00 56 00 52 00 59 00 55 00 5a 00 56 00 56 00 6b 00 56 00 47 00 } //01 00 
		$a_81_3 = {73 70 7a 7a 63 69 66 79 20 74 68 7a 7a 20 2d 7a 7a 78 74 72 61 63 74 } //01 00 
		$a_81_4 = {2d 77 68 61 74 74 } //01 00 
		$a_81_5 = {2d 65 78 74 64 75 6d 6d 74 } //01 00 
		$a_81_6 = {6f 75 74 2d 73 74 72 69 6e 67 } //01 00 
		$a_81_7 = {43 52 45 44 55 49 5f 49 4e 46 4f } //01 00 
		$a_81_8 = {53 45 52 56 45 52 5f 43 52 45 44 45 4e 54 49 41 4c } //01 00 
		$a_81_9 = {55 53 45 52 4e 41 4d 45 5f 54 41 52 47 45 54 5f 43 52 45 44 45 4e 54 49 41 4c 53 } //01 00 
		$a_81_10 = {50 6f 77 65 72 53 68 65 6c 6c } //00 00 
	condition:
		any of ($a_*)
 
}