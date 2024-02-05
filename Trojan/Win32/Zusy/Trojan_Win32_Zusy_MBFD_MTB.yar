
rule Trojan_Win32_Zusy_MBFD_MTB{
	meta:
		description = "Trojan:Win32/Zusy.MBFD!MTB,SIGNATURE_TYPE_PEHSTR_EXT,02 00 02 00 02 00 00 01 00 "
		
	strings :
		$a_01_0 = {00 34 1f 40 00 10 f0 70 00 00 ff ff ff 08 00 00 00 01 00 00 00 08 00 00 00 e9 00 00 00 70 21 40 00 b4 11 40 00 a8 10 40 00 78 } //01 00 
		$a_01_1 = {5a 00 44 00 58 00 42 00 57 00 44 00 50 00 50 00 58 00 54 00 55 00 41 00 59 00 41 00 46 00 52 00 45 00 56 00 52 00 42 00 44 00 5a 00 48 00 4e 00 46 00 59 00 59 00 58 00 51 00 56 00 42 00 55 00 } //00 00 
	condition:
		any of ($a_*)
 
}