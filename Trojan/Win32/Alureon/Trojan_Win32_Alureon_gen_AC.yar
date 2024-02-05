
rule Trojan_Win32_Alureon_gen_AC{
	meta:
		description = "Trojan:Win32/Alureon.gen!AC,SIGNATURE_TYPE_PEHSTR_EXT,03 00 03 00 03 00 00 02 00 "
		
	strings :
		$a_01_0 = {43 72 65 61 74 65 52 65 63 74 52 67 6e 49 6e 64 69 72 65 63 74 00 00 00 50 74 49 6e 52 65 67 69 6f 6e 00 } //01 00 
		$a_03_1 = {85 c0 0f 84 90 01 04 68 90 01 04 ff 35 90 01 04 c6 45 90 01 01 22 c6 45 90 01 01 53 ff 55 90 01 01 68 90 01 04 ff 35 90 1b 02 8b 90 01 01 ff 55 90 1b 05 6a 90 00 } //01 00 
		$a_03_2 = {85 c0 0f 84 90 01 04 68 90 01 04 ff 35 90 01 04 c6 45 90 01 01 53 c6 45 90 01 01 22 ff 55 90 01 01 68 90 01 04 ff 35 90 1b 02 8b 90 01 01 ff 55 90 1b 05 6a 90 00 } //00 00 
	condition:
		any of ($a_*)
 
}