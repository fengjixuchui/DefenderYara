
rule Trojan_Win32_Marte_CCAL_MTB{
	meta:
		description = "Trojan:Win32/Marte.CCAL!MTB,SIGNATURE_TYPE_PEHSTR_EXT,05 00 05 00 05 00 00 01 00 "
		
	strings :
		$a_01_0 = {59 00 38 00 32 00 39 00 4b 00 50 00 73 00 73 00 46 00 56 00 74 00 70 00 64 00 51 00 36 00 71 00 75 00 41 00 4f 00 } //01 00 
		$a_01_1 = {52 00 79 00 36 00 6b 00 70 00 5a 00 7a 00 59 00 65 00 39 00 39 00 39 00 35 00 50 00 63 00 48 00 31 00 39 00 4f 00 31 00 67 00 51 00 69 00 51 00 70 00 } //01 00 
		$a_01_2 = {33 00 74 00 50 00 70 00 59 00 34 00 73 00 32 00 78 00 72 00 52 00 4a 00 76 00 71 00 33 00 34 00 6b 00 32 00 69 00 71 00 4a 00 4d 00 4d 00 } //01 00 
		$a_01_3 = {56 00 66 00 37 00 79 00 4c 00 5a 00 37 00 64 00 77 00 77 00 39 00 61 00 71 00 50 00 35 00 5a 00 32 00 37 00 79 00 } //01 00 
		$a_01_4 = {37 00 74 00 53 00 6a 00 50 00 32 00 71 00 31 00 4e 00 5a 00 7a 00 69 00 37 00 79 00 75 00 53 00 } //00 00 
	condition:
		any of ($a_*)
 
}