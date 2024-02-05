
rule Ransom_MSIL_Crypton_B_MSR{
	meta:
		description = "Ransom:MSIL/Crypton.B!MSR,SIGNATURE_TYPE_PEHSTR_EXT,07 00 07 00 05 00 00 02 00 "
		
	strings :
		$a_01_0 = {43 00 72 00 79 00 2e 00 4b 00 65 00 79 00 } //02 00 
		$a_02_1 = {59 00 6f 00 75 00 72 00 20 00 70 00 72 00 69 00 76 00 61 00 63 00 79 00 20 00 66 00 69 00 6c 00 65 00 73 00 20 00 61 00 6e 00 64 00 20 00 64 00 6f 00 63 00 75 00 6d 00 65 00 6e 00 74 00 73 00 20 00 90 02 20 65 00 6e 00 63 00 72 00 79 00 70 00 74 00 65 00 64 90 00 } //02 00 
		$a_01_2 = {5c 00 52 00 45 00 41 00 44 00 4d 00 45 00 2e 00 54 00 58 00 54 00 } //01 00 
		$a_02_3 = {55 00 73 00 65 00 20 00 74 00 68 00 69 00 73 00 20 00 65 00 2d 00 6d 00 61 00 69 00 6c 00 20 00 74 00 6f 00 20 00 73 00 65 00 6e 00 64 00 20 00 61 00 20 00 90 02 08 20 00 67 00 75 00 69 00 74 00 61 00 72 00 20 00 74 00 6f 90 00 } //01 00 
		$a_01_4 = {5c 52 65 70 6f 72 74 47 65 6e 65 72 61 74 6f 72 5c 6f 62 6a 5c 44 65 62 75 67 5c 43 72 79 70 74 6f 6e 2e 70 64 62 } //00 00 
	condition:
		any of ($a_*)
 
}