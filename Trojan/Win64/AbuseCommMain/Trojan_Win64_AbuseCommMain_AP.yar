
rule Trojan_Win64_AbuseCommMain_AP{
	meta:
		description = "Trojan:Win64/AbuseCommMain.AP,SIGNATURE_TYPE_PEHSTR,01 00 01 00 04 00 00 01 00 "
		
	strings :
		$a_01_0 = {74 00 6f 00 78 00 3a 00 45 00 42 00 42 00 42 00 35 00 39 00 38 00 39 00 39 00 34 00 46 00 38 00 34 00 41 00 34 00 38 00 34 00 37 00 30 00 34 00 32 00 33 00 31 00 35 00 37 00 43 00 32 00 33 00 46 00 44 00 39 00 45 00 37 00 36 00 43 00 44 00 37 00 41 00 41 00 30 00 35 00 42 00 45 00 35 00 36 00 30 00 32 00 42 00 44 00 42 00 35 00 30 00 45 00 31 00 33 00 43 00 41 00 38 00 32 00 46 00 37 00 38 00 33 00 38 00 } //01 00 
		$a_01_1 = {45 42 42 42 35 39 38 39 39 34 46 38 34 41 34 38 34 37 30 34 32 33 31 35 37 43 32 33 46 44 39 45 37 36 43 44 37 41 41 30 35 42 45 35 36 30 32 42 44 42 35 30 45 31 33 43 41 38 32 46 37 38 33 38 90 01 0c 00 00 00 00 4c 00 00 00 00 00 00 00 } //01 00 
		$a_01_2 = {45 42 42 42 35 39 38 39 39 34 46 38 34 41 34 38 34 37 30 34 32 33 31 35 37 43 32 33 46 44 39 45 37 36 43 44 37 41 41 30 35 42 45 35 36 30 32 42 44 42 35 30 45 31 33 43 41 38 32 46 37 38 33 38 90 01 0c 4c 00 00 00 } //01 00 
		$a_01_3 = {5c 74 6f 78 5c 45 42 42 42 35 39 38 39 39 34 46 38 34 41 34 38 34 37 30 34 32 33 31 35 37 43 32 33 46 44 39 45 37 36 43 44 37 41 41 30 35 42 45 35 36 30 32 42 44 42 35 30 45 31 33 43 41 38 32 46 37 38 33 38 2e 68 73 74 72 } //00 00 
	condition:
		any of ($a_*)
 
}