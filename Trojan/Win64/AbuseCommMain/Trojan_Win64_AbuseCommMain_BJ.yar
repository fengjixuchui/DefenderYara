
rule Trojan_Win64_AbuseCommMain_BJ{
	meta:
		description = "Trojan:Win64/AbuseCommMain.BJ,SIGNATURE_TYPE_PEHSTR_EXT,01 00 01 00 04 00 00 01 00 "
		
	strings :
		$a_00_0 = {74 00 6f 00 78 00 3a 00 38 00 34 00 30 00 33 00 32 00 42 00 39 00 32 00 44 00 33 00 37 00 43 00 38 00 38 00 38 00 46 00 44 00 33 00 35 00 37 00 32 00 39 00 30 00 39 00 30 00 35 00 39 00 42 00 44 00 36 00 46 00 41 00 37 00 37 00 36 00 31 00 32 00 44 00 44 00 34 00 46 00 45 00 36 00 32 00 42 00 34 00 35 00 38 00 37 00 41 00 34 00 38 00 44 00 45 00 33 00 33 00 33 00 32 00 32 00 41 00 42 00 36 00 37 00 45 00 } //01 00 
		$a_02_1 = {38 34 30 33 32 42 39 32 44 33 37 43 38 38 38 46 44 33 35 37 32 39 30 39 30 35 39 42 44 36 46 41 37 37 36 31 32 44 44 34 46 45 36 32 42 34 35 38 37 41 34 38 44 45 33 33 33 32 32 41 42 36 37 45 90 01 0c 00 00 00 00 4c 00 00 00 00 00 00 00 90 00 } //01 00 
		$a_02_2 = {38 34 30 33 32 42 39 32 44 33 37 43 38 38 38 46 44 33 35 37 32 39 30 39 30 35 39 42 44 36 46 41 37 37 36 31 32 44 44 34 46 45 36 32 42 34 35 38 37 41 34 38 44 45 33 33 33 32 32 41 42 36 37 45 90 01 0c 4c 00 00 00 90 00 } //01 00 
		$a_00_3 = {5c 74 6f 78 5c 38 34 30 33 32 42 39 32 44 33 37 43 38 38 38 46 44 33 35 37 32 39 30 39 30 35 39 42 44 36 46 41 37 37 36 31 32 44 44 34 46 45 36 32 42 34 35 38 37 41 34 38 44 45 33 33 33 32 32 41 42 36 37 45 2e 68 73 74 72 } //00 00 
	condition:
		any of ($a_*)
 
}