
rule VirTool_BAT_Injector_DV_bit{
	meta:
		description = "VirTool:BAT/Injector.DV!bit,SIGNATURE_TYPE_PEHSTR_EXT,0b 00 0b 00 03 00 00 0a 00 "
		
	strings :
		$a_03_0 = {02 20 20 a7 00 00 59 7e 90 01 01 00 00 04 16 6f 90 01 01 00 00 0a 20 20 a7 00 00 59 61 d1 2a 90 00 } //01 00 
		$a_01_1 = {46 72 6f 6d 42 61 73 65 36 34 53 74 72 69 6e 67 00 4c 6f 61 64 00 67 65 74 5f 45 6e 74 72 79 50 6f 69 6e 74 00 49 6e 76 6f 6b 65 00 53 75 62 73 74 72 69 6e 67 } //01 00 
		$a_01_2 = {42 61 73 65 36 34 53 74 72 69 6e 67 00 42 79 74 65 00 41 73 73 65 6d 62 6c 79 00 4c 6f 61 64 00 67 65 74 5f 45 6e 74 72 79 50 6f 69 6e 74 } //00 00 
	condition:
		any of ($a_*)
 
}