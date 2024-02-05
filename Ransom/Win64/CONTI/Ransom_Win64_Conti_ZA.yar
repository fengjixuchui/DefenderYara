
rule Ransom_Win64_Conti_ZA{
	meta:
		description = "Ransom:Win64/Conti.ZA,SIGNATURE_TYPE_PEHSTR_EXT,0b 00 0b 00 02 00 00 01 00 "
		
	strings :
		$a_01_0 = {f1 d5 00 fa 4c 62 cc f4 0f 0b } //0a 00 
		$a_01_1 = {43 69 04 81 51 2d 9e cc c1 c0 0f 69 c8 93 35 87 1b 33 f9 c1 c7 0d 81 c7 14 af dd fa 8d 3c bf 49 83 c0 01 75 db } //00 00 
		$a_00_2 = {5d 04 00 00 23 0d 05 80 5c 2e } //00 00 
	condition:
		any of ($a_*)
 
}