
rule Trojan_Win32_Emotet_EF{
	meta:
		description = "Trojan:Win32/Emotet.EF,SIGNATURE_TYPE_PEHSTR_EXT,03 00 03 00 03 00 00 01 00 "
		
	strings :
		$a_01_0 = {61 00 76 00 7a 00 49 00 4a 00 72 00 74 00 75 00 21 00 4f 00 40 00 } //01 00 
		$a_01_1 = {77 00 31 00 32 00 35 00 33 00 34 00 35 00 32 00 33 00 32 00 74 00 31 00 32 00 35 00 33 00 34 00 35 00 32 00 33 00 32 00 } //01 00 
		$a_01_2 = {74 00 31 00 32 00 35 00 33 00 34 00 35 00 32 00 33 00 32 00 74 00 31 00 32 00 35 00 33 00 34 00 35 00 32 00 33 00 32 00 77 00 31 00 32 00 35 00 33 00 34 00 35 00 32 00 33 00 32 00 } //00 00 
	condition:
		any of ($a_*)
 
}