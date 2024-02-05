
rule Trojan_Win32_Startpage_XS{
	meta:
		description = "Trojan:Win32/Startpage.XS,SIGNATURE_TYPE_PEHSTR_EXT,06 00 06 00 06 00 00 01 00 "
		
	strings :
		$a_00_0 = {3a 00 5c 00 44 00 6f 00 63 00 75 00 6d 00 65 00 6e 00 74 00 73 00 20 00 61 00 6e 00 64 00 20 00 53 00 65 00 74 00 74 00 69 00 6e 00 67 00 73 00 5c 00 53 00 54 00 43 00 54 00 52 00 5c 00 44 00 65 00 73 00 6b 00 74 00 6f 00 70 00 5c 00 73 00 72 00 63 00 } //01 00 
		$a_00_1 = {5c 00 77 00 69 00 6e 00 64 00 6f 00 77 00 65 00 2e 00 65 00 78 00 65 00 } //01 00 
		$a_00_2 = {48 00 4b 00 43 00 55 00 5c 00 53 00 6f 00 66 00 74 00 77 00 61 00 72 00 65 00 5c 00 4d 00 69 00 63 00 72 00 6f 00 73 00 6f 00 66 00 74 00 5c 00 57 00 69 00 6e 00 64 00 6f 00 77 00 73 00 5c 00 43 00 75 00 72 00 72 00 65 00 6e 00 74 00 56 00 65 00 72 00 73 00 69 00 6f 00 6e 00 5c 00 50 00 6f 00 6c 00 69 00 63 00 69 00 65 00 73 00 5c 00 53 00 79 00 73 00 74 00 65 00 6d 00 5c 00 5c 00 44 00 69 00 73 00 61 00 62 00 6c 00 65 00 52 00 65 00 67 00 69 00 73 00 74 00 72 00 79 00 54 00 6f 00 6f 00 6c 00 73 00 } //01 00 
		$a_00_3 = {5c 00 43 00 75 00 72 00 72 00 65 00 6e 00 74 00 56 00 65 00 72 00 73 00 69 00 6f 00 6e 00 5c 00 52 00 75 00 6e 00 5c 00 57 00 69 00 6e 00 6c 00 6f 00 67 00 6f 00 6e 00 } //01 00 
		$a_00_4 = {75 00 73 00 65 00 72 00 5f 00 70 00 72 00 65 00 66 00 28 00 22 00 62 00 72 00 6f 00 77 00 73 00 65 00 72 00 2e 00 73 00 74 00 61 00 72 00 74 00 75 00 70 00 2e 00 68 00 6f 00 6d 00 65 00 70 00 61 00 67 00 65 00 22 00 2c 00 20 00 22 00 } //01 00 
		$a_02_5 = {5c 00 70 00 6f 00 6c 00 69 00 63 00 69 00 65 00 73 00 5c 00 73 00 79 00 73 00 74 00 65 00 6d 00 5c 00 5c 00 65 00 6e 00 61 00 62 00 6c 00 65 00 6c 00 75 00 61 00 90 02 08 30 00 30 00 30 00 30 00 30 00 30 00 30 00 30 00 90 02 08 52 00 45 00 47 00 5f 00 44 00 57 00 4f 00 52 00 44 00 90 02 08 72 00 65 00 67 00 77 00 72 00 69 00 74 00 65 00 90 00 } //00 00 
	condition:
		any of ($a_*)
 
}