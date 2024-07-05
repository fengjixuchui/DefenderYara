
rule Trojan_Win32_Doina_HNA_MTB{
	meta:
		description = "Trojan:Win32/Doina.HNA!MTB,SIGNATURE_TYPE_PEHSTR_EXT,03 00 03 00 05 00 00 01 00 "
		
	strings :
		$a_01_0 = {2f 63 20 6e 65 74 73 68 20 61 64 76 66 69 72 65 77 61 6c 6c 20 66 69 72 65 77 61 6c 6c 20 61 64 64 20 72 75 6c 65 20 6e 61 6d 65 3d 22 } //01 00  /c netsh advfirewall firewall add rule name="
		$a_01_1 = {2e 62 61 74 00 00 00 00 3a 52 65 70 65 61 74 0d 0a 64 65 6c 20 22 25 73 22 0d 0a 69 66 20 65 78 69 73 74 20 22 25 73 22 20 67 6f 74 6f 20 52 65 70 65 61 74 0d 0a 64 65 6c 20 22 25 73 22 } //01 00 
		$a_01_2 = {c6 45 f7 2e c6 45 f8 65 c6 45 f9 78 c6 45 fa 65 c6 45 fb 00 e8 } //01 00 
		$a_03_3 = {41 44 56 41 50 49 33 32 2e 64 6c 6c 90 02 05 53 68 65 6c 6c 45 78 65 63 75 74 65 41 00 53 48 45 4c 4c 33 32 2e 64 6c 6c 00 90 00 } //01 00 
		$a_03_4 = {55 52 4c 44 6f 77 6e 6c 6f 61 64 54 6f 46 69 6c 65 41 00 00 75 72 6c 6d 6f 6e 2e 64 6c 6c 90 02 05 44 65 6c 65 74 65 55 72 6c 43 61 63 68 65 45 6e 74 72 79 41 00 00 57 49 4e 49 4e 45 54 2e 64 6c 6c 90 00 } //00 00 
	condition:
		any of ($a_*)
 
}