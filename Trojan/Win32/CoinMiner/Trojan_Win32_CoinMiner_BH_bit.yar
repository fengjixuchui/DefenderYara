
rule Trojan_Win32_CoinMiner_BH_bit{
	meta:
		description = "Trojan:Win32/CoinMiner.BH!bit,SIGNATURE_TYPE_PEHSTR_EXT,04 00 04 00 05 00 00 01 00 "
		
	strings :
		$a_01_0 = {78 70 74 53 65 72 76 65 72 5f 72 65 63 65 69 76 65 44 61 74 61 28 29 3a 20 50 61 63 6b 65 74 20 65 78 63 65 65 64 73 20 32 6d 62 20 73 69 7a 65 } //01 00 
		$a_01_1 = {4d 00 69 00 6e 00 65 00 72 00 54 00 68 00 72 00 65 00 61 00 64 00 00 00 4d 00 69 00 6e 00 65 00 72 00 50 00 6f 00 72 00 74 00 00 00 4d 00 69 00 6e 00 65 00 72 00 48 00 6f 00 73 00 74 00 00 00 53 00 74 00 6f 00 70 00 } //01 00 
		$a_01_2 = {77 00 69 00 6e 00 73 00 74 00 61 00 30 00 5c 00 64 00 65 00 66 00 61 00 75 00 6c 00 74 00 00 00 77 00 69 00 6e 00 6c 00 6f 00 67 00 6f 00 6e 00 2e 00 65 00 78 00 65 00 } //01 00 
		$a_01_3 = {72 00 75 00 6e 00 64 00 6c 00 6c 00 33 00 32 00 20 00 22 00 25 00 73 00 22 00 2c 00 52 00 75 00 6e 00 44 00 6c 00 6c 00 20 00 25 00 73 00 } //01 00 
		$a_01_4 = {4d 00 6f 00 7a 00 69 00 6c 00 6c 00 61 00 2f 00 34 00 2e 00 30 00 20 00 28 00 63 00 6f 00 6d 00 70 00 61 00 74 00 69 00 62 00 6c 00 65 00 29 00 } //00 00 
	condition:
		any of ($a_*)
 
}