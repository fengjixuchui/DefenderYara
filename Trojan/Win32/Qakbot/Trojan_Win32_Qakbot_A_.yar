
rule Trojan_Win32_Qakbot_A_{
	meta:
		description = "Trojan:Win32/Qakbot.A!!Qakbot.A,SIGNATURE_TYPE_ARHSTR_EXT,16 00 16 00 07 00 00 01 00 "
		
	strings :
		$a_01_0 = {03 00 33 00 30 00 38 00 } //01 00 
		$a_01_1 = {03 00 33 00 31 00 31 00 } //01 00 
		$a_01_2 = {03 00 31 00 31 00 38 00 } //01 00 
		$a_01_3 = {03 00 35 00 32 00 34 00 } //0a 00 
		$a_03_4 = {01 23 45 67 c7 44 24 90 01 01 89 ab cd ef c7 44 24 90 01 01 fe dc ba 98 c7 44 24 90 00 } //0a 00 
		$a_03_5 = {03 ce 03 c1 33 d2 6a 90 01 01 5b f7 f3 90 01 09 46 90 00 } //0a 00 
		$a_03_6 = {48 f7 d8 1b c0 25 90 01 04 81 90 01 05 05 90 00 } //00 00 
	condition:
		any of ($a_*)
 
}