
rule Trojan_Win32_CoinMiner_BI_bit{
	meta:
		description = "Trojan:Win32/CoinMiner.BI!bit,SIGNATURE_TYPE_PEHSTR_EXT,04 00 04 00 04 00 00 01 00 "
		
	strings :
		$a_03_0 = {25 00 73 00 5c 00 54 00 61 00 73 00 6b 00 2e 00 4d 00 61 00 6e 00 61 00 67 00 65 00 72 00 5c 00 90 02 20 2e 00 65 00 78 00 65 00 90 00 } //01 00 
		$a_01_1 = {53 00 6f 00 66 00 74 00 77 00 61 00 72 00 65 00 5c 00 4d 00 69 00 63 00 72 00 6f 00 73 00 6f 00 66 00 74 00 5c 00 57 00 69 00 6e 00 64 00 6f 00 77 00 73 00 5c 00 43 00 75 00 72 00 72 00 65 00 6e 00 74 00 56 00 65 00 72 00 73 00 69 00 6f 00 6e 00 5c 00 52 00 75 00 6e 00 } //01 00 
		$a_01_2 = {54 61 73 6b 20 4d 61 6e 61 67 65 72 2e 65 78 65 } //01 00 
		$a_01_3 = {67 6f 6f 67 6c 65 31 32 33 2e 74 78 74 } //00 00 
	condition:
		any of ($a_*)
 
}