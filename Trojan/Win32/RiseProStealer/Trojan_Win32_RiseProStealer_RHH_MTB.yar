
rule Trojan_Win32_RiseProStealer_RHH_MTB{
	meta:
		description = "Trojan:Win32/RiseProStealer.RHH!MTB,SIGNATURE_TYPE_PEHSTR_EXT,07 00 07 00 04 00 00 02 00 "
		
	strings :
		$a_03_0 = {2e 76 6d 70 90 01 24 2e 76 6d 70 90 00 } //02 00 
		$a_03_1 = {50 45 00 00 4c 01 08 90 01 11 0b 01 0e 27 00 34 11 00 00 34 08 90 00 } //02 00 
		$a_01_2 = {53 74 61 72 74 00 53 74 65 61 6c 65 72 43 6c 69 65 6e 74 2e 65 78 65 } //01 00 
		$a_02_3 = {50 00 72 00 6f 00 64 00 75 00 63 00 74 00 4e 00 61 00 6d 00 65 00 90 01 04 47 00 6c 00 61 00 72 00 79 00 20 00 55 00 74 00 69 00 6c 00 69 00 74 00 69 00 65 00 73 00 90 00 } //00 00 
	condition:
		any of ($a_*)
 
}