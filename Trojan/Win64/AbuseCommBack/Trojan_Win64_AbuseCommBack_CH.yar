
rule Trojan_Win64_AbuseCommBack_CH{
	meta:
		description = "Trojan:Win64/AbuseCommBack.CH,SIGNATURE_TYPE_PEHSTR,01 00 01 00 03 00 00 01 00 "
		
	strings :
		$a_01_0 = {3c 00 70 00 3e 00 33 00 30 00 45 00 45 00 39 00 39 00 39 00 30 00 33 00 32 00 35 00 33 00 42 00 43 00 35 00 41 00 45 00 33 00 44 00 34 00 30 00 34 00 41 00 35 00 38 00 41 00 46 00 45 00 32 00 38 00 42 00 41 00 33 00 37 00 33 00 46 00 45 00 37 00 33 00 45 00 32 00 35 00 38 00 41 00 36 00 35 00 33 00 37 00 43 00 36 00 38 00 44 00 37 00 44 00 41 00 34 00 45 00 34 00 34 00 45 00 31 00 33 00 36 00 38 00 3c 00 2f 00 70 00 3e 00 } //01 00 
		$a_01_1 = {33 30 45 45 39 39 39 30 33 32 35 33 42 43 35 41 45 33 44 34 30 34 41 35 38 41 46 45 32 38 42 41 33 37 33 46 45 37 33 45 32 35 38 41 36 35 33 37 43 36 38 44 37 44 41 34 45 34 34 45 31 33 36 38 00 00 00 00 00 00 00 00 } //01 00 
		$a_01_2 = {74 61 62 6c 65 69 64 33 30 45 45 39 39 39 30 33 32 35 33 42 43 35 41 45 33 44 34 30 34 41 35 38 41 46 45 32 38 42 41 33 37 33 46 45 37 33 45 32 35 38 41 36 35 33 37 43 36 38 44 37 44 41 34 45 34 34 45 31 33 36 38 69 64 } //01 00 
	condition:
		any of ($a_*)
 
}