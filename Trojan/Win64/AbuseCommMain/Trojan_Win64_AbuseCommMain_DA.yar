
rule Trojan_Win64_AbuseCommMain_DA{
	meta:
		description = "Trojan:Win64/AbuseCommMain.DA,SIGNATURE_TYPE_PEHSTR_EXT,01 00 01 00 04 00 00 01 00 "
		
	strings :
		$a_00_0 = {74 00 6f 00 78 00 3a 00 44 00 38 00 45 00 32 00 39 00 46 00 32 00 32 00 42 00 39 00 35 00 38 00 32 00 46 00 31 00 45 00 37 00 41 00 31 00 38 00 30 00 41 00 32 00 38 00 46 00 30 00 44 00 44 00 39 00 30 00 36 00 32 00 37 00 41 00 31 00 32 00 32 00 30 00 44 00 44 00 37 00 45 00 39 00 30 00 35 00 35 00 39 00 34 00 35 00 30 00 42 00 39 00 41 00 41 00 45 00 41 00 36 00 34 00 36 00 36 00 39 00 44 00 30 00 44 00 } //01 00  tox:D8E29F22B9582F1E7A180A28F0DD90627A1220DD7E90559450B9AAEA64669D0D
		$a_02_1 = {44 38 45 32 39 46 32 32 42 39 35 38 32 46 31 45 37 41 31 38 30 41 32 38 46 30 44 44 39 30 36 32 37 41 31 32 32 30 44 44 37 45 39 30 35 35 39 34 35 30 42 39 41 41 45 41 36 34 36 36 39 44 30 44 90 01 0c 00 00 00 00 4c 00 00 00 00 00 00 00 90 00 } //01 00 
		$a_02_2 = {44 38 45 32 39 46 32 32 42 39 35 38 32 46 31 45 37 41 31 38 30 41 32 38 46 30 44 44 39 30 36 32 37 41 31 32 32 30 44 44 37 45 39 30 35 35 39 34 35 30 42 39 41 41 45 41 36 34 36 36 39 44 30 44 90 01 0c 4c 00 00 00 90 00 } //01 00 
		$a_00_3 = {5c 74 6f 78 5c 44 38 45 32 39 46 32 32 42 39 35 38 32 46 31 45 37 41 31 38 30 41 32 38 46 30 44 44 39 30 36 32 37 41 31 32 32 30 44 44 37 45 39 30 35 35 39 34 35 30 42 39 41 41 45 41 36 34 36 36 39 44 30 44 2e 68 73 74 72 } //00 00  \tox\D8E29F22B9582F1E7A180A28F0DD90627A1220DD7E90559450B9AAEA64669D0D.hstr
	condition:
		any of ($a_*)
 
}