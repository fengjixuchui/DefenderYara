
rule Adware_BAT_Dotdoads{
	meta:
		description = "Adware:BAT/Dotdoads,SIGNATURE_TYPE_PEHSTR,02 00 02 00 02 00 00 01 00 "
		
	strings :
		$a_01_0 = {64 00 6f 00 63 00 75 00 6d 00 65 00 6e 00 74 00 2e 00 77 00 72 00 69 00 74 00 65 00 28 00 20 00 75 00 6e 00 65 00 73 00 63 00 61 00 70 00 65 00 28 00 20 00 27 00 25 00 33 00 43 00 25 00 37 00 33 00 25 00 36 00 33 00 25 00 37 00 32 00 25 00 36 00 39 00 25 00 37 00 30 00 25 00 37 00 34 00 25 00 32 00 30 00 25 00 36 00 43 00 25 00 36 00 31 00 25 00 36 00 45 00 25 00 36 00 37 00 25 00 37 00 35 00 25 00 36 00 31 00 25 00 36 00 37 00 25 00 36 00 35 00 25 00 33 00 44 00 25 00 32 00 37 00 25 00 34 00 41 00 25 00 36 00 31 00 25 00 37 00 36 00 25 00 36 00 31 00 25 00 35 00 33 00 25 00 36 00 33 00 25 00 37 00 32 00 25 00 36 00 39 00 25 00 37 00 30 00 25 00 37 00 34 00 25 00 32 00 37 00 25 00 32 00 30 00 } //01 00 
		$a_01_1 = {25 00 36 00 38 00 25 00 37 00 34 00 25 00 37 00 34 00 25 00 37 00 30 00 25 00 33 00 41 00 25 00 32 00 46 00 25 00 32 00 46 00 25 00 36 00 31 00 25 00 36 00 31 00 25 00 32 00 45 00 25 00 36 00 34 00 25 00 36 00 46 00 25 00 37 00 34 00 25 00 36 00 34 00 25 00 36 00 46 00 25 00 32 00 45 00 25 00 36 00 45 00 25 00 36 00 35 00 25 00 37 00 34 00 25 00 32 00 46 00 25 00 36 00 31 00 25 00 36 00 34 00 25 00 37 00 33 00 25 00 37 00 33 00 } //00 00 
	condition:
		any of ($a_*)
 
}