
rule Trojan_WinNT_Seedna_A{
	meta:
		description = "Trojan:WinNT/Seedna.A,SIGNATURE_TYPE_PEHSTR_EXT,06 00 06 00 03 00 00 02 00 "
		
	strings :
		$a_01_0 = {5c 00 44 00 6f 00 73 00 44 00 65 00 76 00 69 00 63 00 65 00 73 00 5c 00 7b 00 45 00 30 00 37 00 44 00 42 00 30 00 32 00 43 00 2d 00 33 00 38 00 37 00 45 00 2d 00 34 00 33 00 62 00 32 00 2d 00 41 00 36 00 46 00 32 00 2d 00 43 00 35 00 39 00 42 00 34 00 39 00 33 00 34 00 42 00 37 00 44 00 36 00 } //02 00 
		$a_01_1 = {53 45 45 44 2e 53 59 53 00 49 6f 70 51 75 65 72 79 49 6e 74 65 72 66 61 63 65 00 49 6f 70 52 65 67 69 73 74 65 72 49 6e 74 65 72 66 61 63 65 } //02 00 
		$a_01_2 = {57 68 44 52 56 4d 50 6a 01 } //00 00 
		$a_00_3 = {5d 04 00 00 } //ad 13 
	condition:
		any of ($a_*)
 
}