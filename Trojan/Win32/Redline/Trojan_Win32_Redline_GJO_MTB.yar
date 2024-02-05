
rule Trojan_Win32_Redline_GJO_MTB{
	meta:
		description = "Trojan:Win32/Redline.GJO!MTB,SIGNATURE_TYPE_PEHSTR_EXT,0b 00 0b 00 03 00 00 0a 00 "
		
	strings :
		$a_03_0 = {89 c1 83 e1 03 8a 89 90 01 04 30 0c 07 40 3b c2 72 90 00 } //0a 00 
		$a_03_1 = {8b c8 83 e1 03 8a 89 90 01 04 30 0c 07 40 3b c2 72 90 00 } //01 00 
		$a_03_2 = {5c 00 4d 00 69 00 63 00 72 00 6f 00 73 00 6f 00 66 00 74 00 2e 00 4e 00 45 00 54 00 5c 00 46 00 72 00 61 00 6d 00 65 00 77 00 6f 00 72 00 6b 00 5c 00 90 02 20 5c 00 52 00 65 00 67 00 53 00 76 00 63 00 73 00 2e 00 65 00 78 00 65 00 90 00 } //00 00 
	condition:
		any of ($a_*)
 
}