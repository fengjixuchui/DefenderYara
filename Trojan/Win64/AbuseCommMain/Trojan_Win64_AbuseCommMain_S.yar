
rule Trojan_Win64_AbuseCommMain_S{
	meta:
		description = "Trojan:Win64/AbuseCommMain.S,SIGNATURE_TYPE_PEHSTR_EXT,01 00 01 00 04 00 00 01 00 "
		
	strings :
		$a_00_0 = {74 00 6f 00 78 00 3a 00 36 00 37 00 31 00 32 00 36 00 33 00 45 00 37 00 42 00 43 00 30 00 36 00 31 00 30 00 33 00 43 00 37 00 37 00 31 00 34 00 36 00 41 00 35 00 41 00 42 00 42 00 38 00 30 00 32 00 41 00 36 00 33 00 46 00 35 00 33 00 41 00 34 00 32 00 42 00 34 00 43 00 34 00 37 00 36 00 36 00 33 00 32 00 39 00 41 00 35 00 46 00 30 00 34 00 44 00 32 00 36 00 36 00 30 00 43 00 39 00 39 00 41 00 33 00 36 00 } //01 00 
		$a_02_1 = {36 37 31 32 36 33 45 37 42 43 30 36 31 30 33 43 37 37 31 34 36 41 35 41 42 42 38 30 32 41 36 33 46 35 33 41 34 32 42 34 43 34 37 36 36 33 32 39 41 35 46 30 34 44 32 36 36 30 43 39 39 41 33 36 90 01 0c 00 00 00 00 4c 00 00 00 00 00 00 00 90 00 } //01 00 
		$a_02_2 = {36 37 31 32 36 33 45 37 42 43 30 36 31 30 33 43 37 37 31 34 36 41 35 41 42 42 38 30 32 41 36 33 46 35 33 41 34 32 42 34 43 34 37 36 36 33 32 39 41 35 46 30 34 44 32 36 36 30 43 39 39 41 33 36 90 01 0c 4c 00 00 00 90 00 } //01 00 
		$a_00_3 = {5c 74 6f 78 5c 36 37 31 32 36 33 45 37 42 43 30 36 31 30 33 43 37 37 31 34 36 41 35 41 42 42 38 30 32 41 36 33 46 35 33 41 34 32 42 34 43 34 37 36 36 33 32 39 41 35 46 30 34 44 32 36 36 30 43 39 39 41 33 36 2e 68 73 74 72 } //00 00 
	condition:
		any of ($a_*)
 
}