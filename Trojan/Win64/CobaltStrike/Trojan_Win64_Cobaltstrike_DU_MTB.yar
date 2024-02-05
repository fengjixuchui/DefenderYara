
rule Trojan_Win64_Cobaltstrike_DU_MTB{
	meta:
		description = "Trojan:Win64/Cobaltstrike.DU!MTB,SIGNATURE_TYPE_PEHSTR_EXT,05 00 05 00 01 00 00 05 00 "
		
	strings :
		$a_01_0 = {41 fe c2 48 8d 5b 01 45 0f b6 d2 4f 8d 04 93 45 8b 48 08 41 02 c1 0f b6 c0 41 8b 54 83 08 41 89 50 08 41 02 d1 45 89 4c 83 08 0f b6 ca 41 0f b6 54 8b 08 30 53 ff 48 ff cf 75 } //00 00 
	condition:
		any of ($a_*)
 
}
rule Trojan_Win64_Cobaltstrike_DU_MTB_2{
	meta:
		description = "Trojan:Win64/Cobaltstrike.DU!MTB,SIGNATURE_TYPE_PEHSTR_EXT,01 00 01 00 02 00 00 01 00 "
		
	strings :
		$a_03_0 = {48 8b 44 24 58 49 2b d7 46 0f b6 04 1a 49 03 c2 42 0f b6 0c 18 b8 90 01 04 44 03 c1 48 8b 8c 24 90 01 04 41 f7 e8 c1 fa 0a 8b c2 c1 e8 1f 03 d0 69 d2 90 01 04 44 2b c2 49 63 c0 48 2b c6 48 03 c5 42 0f b6 04 18 30 04 0b 90 00 } //01 00 
		$a_81_1 = {61 62 62 33 6c 5f 73 34 57 79 3e 25 52 73 21 6b 5e 5a 21 3f 28 72 5f 55 32 42 65 29 56 37 23 52 59 26 55 38 6b 54 62 34 25 28 63 4b 36 72 26 33 32 39 37 57 59 5a 49 4a 75 6a 50 79 4b 34 7a 25 56 76 43 45 5e 58 72 29 49 79 34 61 53 77 24 72 47 58 57 4f 72 48 65 71 6d 77 26 73 28 32 21 4c 62 55 2a 65 39 4b 6d 43 64 4d 77 75 5a 48 26 77 } //00 00 
	condition:
		any of ($a_*)
 
}