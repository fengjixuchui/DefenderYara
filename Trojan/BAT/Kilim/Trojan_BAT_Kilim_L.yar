
rule Trojan_BAT_Kilim_L{
	meta:
		description = "Trojan:BAT/Kilim.L,SIGNATURE_TYPE_PEHSTR_EXT,02 00 02 00 02 00 00 01 00 "
		
	strings :
		$a_01_0 = {61 00 41 00 42 00 30 00 41 00 48 00 51 00 41 00 63 00 41 00 42 00 7a 00 41 00 44 00 6f 00 41 00 4c 00 77 00 41 00 76 00 41 00 47 00 73 00 41 00 62 00 77 00 42 00 74 00 41 00 47 00 55 00 41 00 62 00 67 00 42 00 6c 00 41 00 48 00 49 00 41 00 4c 00 67 00 42 00 6e 00 41 00 47 00 38 00 41 00 62 00 77 00 42 00 6e 00 41 00 47 00 77 00 41 00 5a 00 51 00 42 00 6a 00 41 00 47 00 38 00 41 00 5a 00 41 00 42 00 6c 00 } //01 00 
		$a_01_1 = {51 00 77 00 41 00 36 00 41 00 46 00 77 00 41 00 56 00 77 00 42 00 70 00 41 00 00 00 } //00 00 
	condition:
		any of ($a_*)
 
}