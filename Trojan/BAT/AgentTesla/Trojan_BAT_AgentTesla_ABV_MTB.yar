
rule Trojan_BAT_AgentTesla_ABV_MTB{
	meta:
		description = "Trojan:BAT/AgentTesla.ABV!MTB,SIGNATURE_TYPE_PEHSTR_EXT,02 00 02 00 01 00 00 02 00 "
		
	strings :
		$a_01_0 = {20 7e 0f 00 00 95 2e 03 17 2b 01 16 58 7e 2d 00 00 04 17 9a 7e 2d 00 00 04 19 9a 20 7c 04 00 00 95 e0 95 7e 2d 00 00 04 19 9a 20 5f 09 00 00 95 61 7e 2d 00 00 04 } //00 00 
	condition:
		any of ($a_*)
 
}
rule Trojan_BAT_AgentTesla_ABV_MTB_2{
	meta:
		description = "Trojan:BAT/AgentTesla.ABV!MTB,SIGNATURE_TYPE_PEHSTR_EXT,07 00 07 00 07 00 00 01 00 "
		
	strings :
		$a_01_0 = {37 00 41 00 37 00 39 00 37 00 32 00 36 00 35 00 34 00 32 00 34 00 37 00 00 0d 36 00 31 00 36 00 31 00 36 00 31 00 00 29 70 00 61 00 6c 00 2e 00 45 00 76 00 65 00 6e 00 74 00 4c 00 6f 00 67 00 41 00 6e 00 61 00 6c 00 79 00 7a 00 65 00 72 } //01 00 
		$a_01_1 = {43 72 65 61 74 65 49 6e 73 74 61 6e 63 65 } //01 00 
		$a_01_2 = {43 72 65 61 74 65 44 65 63 72 79 70 74 6f 72 } //01 00 
		$a_01_3 = {38 35 48 4e 71 48 49 65 51 64 52 5a 73 75 53 62 6b 77 2e 4b 6c 4e 6f 62 54 73 55 69 53 6b 58 57 37 57 58 48 39 } //01 00 
		$a_01_4 = {24 30 32 62 65 64 66 62 39 2d 63 31 37 33 2d 34 32 33 61 2d 62 30 61 34 2d 64 65 66 35 36 36 38 62 62 64 34 64 } //01 00 
		$a_01_5 = {59 00 61 00 59 00 62 00 59 00 63 00 59 00 64 00 59 00 65 00 59 00 66 00 59 00 67 00 59 00 68 00 59 00 6b 00 6a 00 6c 00 6a 00 6e 00 6d 00 6f 00 6d 00 70 00 6d 00 71 00 6d 00 72 00 6d 00 73 00 6d 00 74 00 6d 00 } //01 00 
		$a_01_6 = {4a 00 4f 00 4e 00 36 00 6e 00 5a 00 47 00 59 00 78 00 56 00 35 00 36 00 47 00 76 00 64 00 74 00 6f 00 36 00 2e 00 46 00 68 00 68 00 58 00 42 00 67 00 64 00 46 00 53 00 30 00 41 00 76 00 73 00 74 00 48 00 6a 00 33 00 63 00 } //00 00 
	condition:
		any of ($a_*)
 
}