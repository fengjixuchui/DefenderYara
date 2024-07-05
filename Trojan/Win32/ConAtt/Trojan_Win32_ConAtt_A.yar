
rule Trojan_Win32_ConAtt_A{
	meta:
		description = "Trojan:Win32/ConAtt.A,SIGNATURE_TYPE_CMDHSTR_EXT,0b 00 0b 00 03 00 00 0a 00 "
		
	strings :
		$a_02_0 = {63 00 6f 00 6e 00 68 00 6f 00 73 00 74 00 90 02 20 2d 00 2d 00 68 00 65 00 61 00 64 00 6c 00 65 00 73 00 73 00 90 02 20 70 00 6f 00 77 00 65 00 72 00 73 00 68 00 65 00 6c 00 6c 00 90 00 } //01 00 
		$a_02_1 = {2e 00 24 00 28 00 5b 00 63 00 68 00 61 00 72 00 5d 00 28 00 90 02 20 2b 00 27 00 65 00 78 00 27 00 29 00 90 00 } //01 00 
		$a_02_2 = {2e 00 24 00 28 00 5b 00 63 00 68 00 61 00 72 00 5d 00 28 00 90 02 20 2b 00 22 00 65 00 78 00 22 00 29 00 90 00 } //00 00 
	condition:
		any of ($a_*)
 
}