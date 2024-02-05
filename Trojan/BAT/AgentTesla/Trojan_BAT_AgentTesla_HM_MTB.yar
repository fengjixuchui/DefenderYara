
rule Trojan_BAT_AgentTesla_HM_MTB{
	meta:
		description = "Trojan:BAT/AgentTesla.HM!MTB,SIGNATURE_TYPE_PEHSTR_EXT,18 00 18 00 10 00 00 14 00 "
		
	strings :
		$a_00_0 = {24 63 65 39 35 33 37 66 33 2d 34 62 39 37 2d 34 30 38 35 2d 38 31 36 35 2d 38 65 64 32 62 32 37 34 65 30 30 65 } //14 00 
		$a_00_1 = {24 38 30 35 34 64 39 63 63 2d 66 38 33 63 2d 34 65 32 35 2d 39 30 38 33 2d 37 31 34 66 62 32 31 37 61 37 38 64 } //14 00 
		$a_00_2 = {24 62 30 33 61 35 65 37 65 2d 66 65 33 61 2d 34 30 34 31 2d 39 62 35 31 2d 30 31 35 32 35 37 64 39 32 34 66 35 } //14 00 
		$a_00_3 = {24 30 31 33 62 36 32 65 36 2d 30 66 35 34 2d 34 36 66 64 2d 39 63 31 65 2d 66 65 36 35 66 37 62 38 62 33 63 35 } //14 00 
		$a_00_4 = {24 38 37 63 62 61 30 63 30 2d 38 35 38 64 2d 34 38 62 30 2d 39 65 66 65 2d 34 33 38 34 37 62 38 31 31 35 32 36 } //14 00 
		$a_00_5 = {24 32 32 35 32 39 38 36 30 2d 32 66 63 32 2d 34 66 66 65 2d 39 34 63 65 2d 38 34 65 61 36 66 35 65 66 32 63 36 } //01 00 
		$a_81_6 = {44 65 62 75 67 67 65 72 4e 6f 6e 55 73 65 72 43 6f 64 65 41 74 74 72 69 62 75 74 65 } //01 00 
		$a_81_7 = {44 65 62 75 67 67 65 72 42 72 6f 77 73 61 62 6c 65 41 74 74 72 69 62 75 74 65 } //01 00 
		$a_81_8 = {44 65 62 75 67 67 65 72 53 74 65 70 54 68 72 6f 75 67 68 41 74 74 72 69 62 75 74 65 } //01 00 
		$a_81_9 = {44 65 62 75 67 67 65 72 42 72 6f 77 73 61 62 6c 65 53 74 61 74 65 } //01 00 
		$a_81_10 = {44 65 62 75 67 67 65 72 48 69 64 64 65 6e 41 74 74 72 69 62 75 74 65 } //01 00 
		$a_81_11 = {44 65 62 75 67 67 61 62 6c 65 41 74 74 72 69 62 75 74 65 } //01 00 
		$a_81_12 = {44 65 62 75 67 67 69 6e 67 4d 6f 64 65 73 } //01 00 
		$a_81_13 = {46 72 6f 6d 42 61 73 65 36 34 53 74 72 69 6e 67 } //01 00 
		$a_81_14 = {43 72 65 61 74 65 49 6e 73 74 61 6e 63 65 } //01 00 
		$a_81_15 = {41 63 74 69 76 61 74 6f 72 } //00 00 
	condition:
		any of ($a_*)
 
}