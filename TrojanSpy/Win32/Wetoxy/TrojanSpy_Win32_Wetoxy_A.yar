
rule TrojanSpy_Win32_Wetoxy_A{
	meta:
		description = "TrojanSpy:Win32/Wetoxy.A,SIGNATURE_TYPE_PEHSTR_EXT,03 00 03 00 04 00 00 01 00 "
		
	strings :
		$a_03_0 = {aa ff 15 60 20 40 00 90 09 2e 00 54 c6 44 24 90 01 01 69 c6 44 24 90 01 01 74 c6 44 24 90 01 01 6c c6 44 24 90 01 01 65 c6 44 24 90 01 01 3a c6 44 24 90 01 01 5b c6 44 24 90 01 01 25 c6 44 24 90 01 01 73 c6 44 24 90 01 01 5d 90 00 } //01 00 
		$a_03_1 = {b0 37 51 68 90 01 04 c6 44 24 90 01 01 25 c6 44 24 90 01 01 73 c6 44 24 90 01 01 5c c6 44 24 90 01 01 62 90 00 } //01 00 
		$a_03_2 = {2e c6 44 24 90 01 01 6c c6 44 24 90 01 01 6f c6 44 24 90 01 01 67 88 5c 24 90 01 01 ff 15 90 00 } //01 00 
		$a_03_3 = {55 c6 44 24 90 01 01 73 c6 44 24 90 01 01 72 c6 44 24 90 01 01 33 c6 44 24 90 01 01 32 c6 44 24 90 01 01 2e c6 44 24 90 01 01 64 90 00 } //00 00 
	condition:
		any of ($a_*)
 
}