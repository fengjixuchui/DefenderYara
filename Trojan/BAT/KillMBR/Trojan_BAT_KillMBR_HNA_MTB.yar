
rule Trojan_BAT_KillMBR_HNA_MTB{
	meta:
		description = "Trojan:BAT/KillMBR.HNA!MTB,SIGNATURE_TYPE_PEHSTR_EXT,02 00 02 00 02 00 00 01 00 "
		
	strings :
		$a_01_0 = {5c 00 50 00 68 00 79 00 73 00 69 00 63 00 61 00 6c 00 44 00 72 00 69 00 76 00 65 } //01 00 
		$a_01_1 = {50 72 6f 67 72 61 6d 00 53 79 73 74 65 6d 00 6c 70 4e 75 6d 62 65 72 4f 66 42 79 74 65 73 57 72 69 74 74 65 6e 00 4d 61 69 6e 00 53 79 73 74 65 6d 2e 52 65 66 6c 65 63 74 69 6f 6e 00 64 77 43 72 65 61 74 69 6f 6e 44 69 73 70 6f 73 69 74 69 6f 6e 00 5a 65 72 6f 00 6c 70 42 75 66 66 65 72 } //00 00 
	condition:
		any of ($a_*)
 
}