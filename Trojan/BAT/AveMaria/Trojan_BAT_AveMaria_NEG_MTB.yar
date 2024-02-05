
rule Trojan_BAT_AveMaria_NEG_MTB{
	meta:
		description = "Trojan:BAT/AveMaria.NEG!MTB,SIGNATURE_TYPE_PEHSTR_EXT,05 00 05 00 05 00 00 01 00 "
		
	strings :
		$a_01_0 = {24 37 43 31 38 41 37 42 33 2d 41 36 44 37 2d 34 34 41 35 2d 42 44 34 33 2d 43 38 39 32 46 37 32 46 42 32 30 34 } //01 00 
		$a_01_1 = {52 65 73 65 72 76 61 74 69 6f 6e 5f 61 67 65 6e 74 20 56 6f 6c 6b 73 77 61 67 65 6e } //01 00 
		$a_01_2 = {39 42 35 42 46 45 31 46 31 32 46 35 31 30 44 37 30 35 46 36 33 37 37 32 33 46 37 46 39 43 42 33 33 43 45 46 37 36 37 34 37 41 35 45 34 31 33 34 36 35 39 42 38 39 33 33 37 34 30 46 44 38 39 32 } //01 00 
		$a_01_3 = {75 6d 4c 6f 63 65 68 75 45 43 } //01 00 
		$a_01_4 = {24 24 6d 65 74 68 6f 64 30 78 36 30 30 30 33 31 37 2d 31 } //00 00 
	condition:
		any of ($a_*)
 
}