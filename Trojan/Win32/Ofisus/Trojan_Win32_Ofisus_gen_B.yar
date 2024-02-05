
rule Trojan_Win32_Ofisus_gen_B{
	meta:
		description = "Trojan:Win32/Ofisus.gen!B,SIGNATURE_TYPE_CMDHSTR_EXT,07 00 07 00 07 00 00 01 00 "
		
	strings :
		$a_00_0 = {5c 00 63 00 6d 00 64 00 2e 00 65 00 78 00 65 00 } //01 00 
		$a_00_1 = {50 00 4f 00 77 00 45 00 72 00 73 00 48 00 65 00 6c 00 6c 00 } //01 00 
		$a_00_2 = {20 00 2d 00 57 00 } //01 00 
		$a_00_3 = {7b 00 31 00 7d 00 } //01 00 
		$a_00_4 = {2d 00 66 00 } //01 00 
		$a_00_5 = {29 00 2e 00 49 00 6e 00 76 00 6f 00 6b 00 65 00 28 00 } //01 00 
		$a_00_6 = {2e 00 47 00 45 00 54 00 46 00 49 00 45 00 } //00 00 
	condition:
		any of ($a_*)
 
}
rule Trojan_Win32_Ofisus_gen_B_2{
	meta:
		description = "Trojan:Win32/Ofisus.gen!B,SIGNATURE_TYPE_CMDHSTR_EXT,06 00 06 00 06 00 00 01 00 "
		
	strings :
		$a_00_0 = {5c 00 63 00 6d 00 64 00 2e 00 65 00 78 00 65 00 } //01 00 
		$a_00_1 = {50 00 6f 00 77 00 65 00 72 00 73 00 48 00 65 00 6c 00 6c 00 } //01 00 
		$a_00_2 = {2e 00 44 00 6f 00 77 00 6e 00 6c 00 6f 00 61 00 64 00 53 00 74 00 72 00 69 00 6e 00 67 00 28 00 27 00 68 00 74 00 74 00 70 00 3a 00 2f 00 2f 00 } //01 00 
		$a_00_3 = {49 00 45 00 58 00 } //01 00 
		$a_00_4 = {20 00 2d 00 77 00 69 00 4e 00 64 00 6f 00 57 00 73 00 20 00 48 00 69 00 44 00 64 00 45 00 4e 00 20 00 } //01 00 
		$a_00_5 = {20 00 2d 00 6e 00 6f 00 4e 00 49 00 } //00 00 
	condition:
		any of ($a_*)
 
}
rule Trojan_Win32_Ofisus_gen_B_3{
	meta:
		description = "Trojan:Win32/Ofisus.gen!B,SIGNATURE_TYPE_CMDHSTR_EXT,16 00 16 00 08 00 00 05 00 "
		
	strings :
		$a_00_0 = {70 00 6f 00 77 00 65 00 72 00 73 00 68 00 65 00 6c 00 6c 00 } //05 00 
		$a_00_1 = {2e 00 44 00 6f 00 77 00 6e 00 6c 00 6f 00 61 00 64 00 46 00 69 00 6c 00 65 00 28 00 } //05 00 
		$a_00_2 = {27 00 68 00 74 00 74 00 70 00 3a 00 2f 00 2f 00 } //05 00 
		$a_00_3 = {2e 00 65 00 78 00 65 00 27 00 } //01 00 
		$a_00_4 = {20 00 2d 00 77 00 20 00 31 00 20 00 } //01 00 
		$a_00_5 = {20 00 2d 00 57 00 69 00 6e 00 64 00 6f 00 77 00 53 00 74 00 79 00 6c 00 65 00 20 00 48 00 69 00 64 00 64 00 65 00 6e 00 20 00 } //01 00 
		$a_00_6 = {53 00 74 00 61 00 72 00 74 00 2d 00 50 00 72 00 6f 00 63 00 65 00 73 00 73 00 20 00 } //01 00 
		$a_00_7 = {2e 00 53 00 68 00 65 00 6c 00 6c 00 45 00 78 00 65 00 63 00 75 00 74 00 65 00 28 00 } //00 00 
	condition:
		any of ($a_*)
 
}
rule Trojan_Win32_Ofisus_gen_B_4{
	meta:
		description = "Trojan:Win32/Ofisus.gen!B,SIGNATURE_TYPE_CMDHSTR_EXT,06 00 06 00 06 00 00 05 00 "
		
	strings :
		$a_00_0 = {5c 00 70 00 6f 00 77 00 65 00 72 00 73 00 68 00 65 00 6c 00 6c 00 2e 00 65 00 78 00 65 00 } //01 00 
		$a_00_1 = {24 00 53 00 48 00 65 00 4c 00 4c 00 69 00 64 00 5b 00 31 00 5d 00 2b 00 24 00 53 00 68 00 65 00 6c 00 6c 00 49 00 64 00 5b 00 31 00 33 00 5d 00 2b 00 27 00 78 00 27 00 } //01 00 
		$a_00_2 = {29 00 5b 00 31 00 2c 00 33 00 5d 00 2b 00 27 00 58 00 27 00 2d 00 4a 00 6f 00 69 00 4e 00 27 00 27 00 } //01 00 
		$a_02_3 = {24 00 50 00 73 00 48 00 4f 00 6d 00 45 00 5b 00 90 02 04 5d 00 2b 00 24 00 70 00 53 00 48 00 6f 00 6d 00 65 00 5b 00 90 02 04 5d 00 2b 00 27 00 58 00 27 00 90 00 } //01 00 
		$a_02_4 = {24 00 45 00 6e 00 56 00 3a 00 63 00 6f 00 6d 00 53 00 50 00 65 00 43 00 5b 00 90 02 04 2c 00 90 02 04 2c 00 90 02 04 5d 00 2d 00 4a 00 4f 00 69 00 4e 00 27 00 27 00 90 00 } //01 00 
		$a_02_5 = {53 00 56 00 90 02 08 27 00 6f 00 46 00 73 00 27 00 90 02 08 27 00 90 02 08 27 00 29 00 90 00 } //00 00 
	condition:
		any of ($a_*)
 
}