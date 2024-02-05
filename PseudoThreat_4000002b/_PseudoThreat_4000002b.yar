
rule _PseudoThreat_4000002b{
	meta:
		description = "!PseudoThreat_4000002b,SIGNATURE_TYPE_PEHSTR_EXT,03 00 03 00 03 00 00 01 00 "
		
	strings :
		$a_02_0 = {85 c0 75 14 68 2c 01 00 00 6a 08 ff 15 90 01 04 50 ff 15 90 01 04 56 8b 74 24 08 8a 16 84 d2 a3 90 01 04 8b c8 74 10 2b f0 32 54 24 0c 88 11 41 8a 14 0e 84 d2 75 f2 c6 01 00 5e c3 90 00 } //01 00 
		$a_01_1 = {46 69 6e 64 43 6c 6f 73 65 55 72 6c 43 61 63 68 65 00 00 00 46 69 6e 64 46 69 72 73 74 55 72 6c 43 61 63 68 65 45 6e 74 72 79 41 00 } //01 00 
		$a_01_2 = {47 65 74 46 69 6c 65 56 65 72 73 69 6f 6e 49 6e 66 6f 41 00 47 65 74 46 69 6c 65 56 65 72 73 69 6f 6e 49 6e 66 6f 53 69 7a 65 41 00 } //00 00 
	condition:
		any of ($a_*)
 
}