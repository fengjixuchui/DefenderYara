
rule Trojan_Win32_RiseProStealer_RHG_MTB{
	meta:
		description = "Trojan:Win32/RiseProStealer.RHG!MTB,SIGNATURE_TYPE_PEHSTR_EXT,08 00 08 00 04 00 00 02 00 "
		
	strings :
		$a_03_0 = {2e 76 6d 70 c2 b3 c2 a4 55 fd 1c 90 01 1d 2e 76 6d 70 90 00 } //02 00 
		$a_01_1 = {e8 a8 7e d7 ff b3 b0 84 77 50 f9 4e f0 21 62 64 ea } //02 00 
		$a_03_2 = {50 45 00 00 4c 01 0a 90 01 11 0b 01 0e 27 00 34 11 00 00 30 08 00 00 00 00 00 f3 11 92 90 00 } //02 00 
		$a_01_3 = {53 74 61 72 74 00 53 74 65 61 6c 65 72 43 6c 69 65 6e 74 2e 65 78 65 } //00 00 
	condition:
		any of ($a_*)
 
}