
rule Trojan_BAT_CryptInject_RHO_MTB{
	meta:
		description = "Trojan:BAT/CryptInject.RHO!MTB,SIGNATURE_TYPE_PEHSTR_EXT,07 00 07 00 05 00 00 "
		
	strings :
		$a_03_0 = {50 45 00 00 4c 01 03 ?? ?? ?? ?? ?? ?? ?? ?? ?? ?? ?? ?? ?? ?? ?? ?? ?? 0b 01 30 00 00 6c 1e 00 00 08 00 00 00 00 00 00 4e 8a 1e } //2
		$a_01_1 = {53 53 45 4e 31 62 39 76 32 64 4d 5a 42 44 6d 43 6c 4e 67 48 } //2 SSEN1b9v2dMZBDmClNgH
		$a_00_2 = {57 00 69 00 6e 00 64 00 6f 00 77 00 73 00 5c 00 43 00 75 00 72 00 72 00 65 00 6e 00 74 00 56 00 65 00 72 00 73 00 69 00 6f 00 6e 00 5c 00 52 00 75 00 6e 00 } //1 Windows\CurrentVersion\Run
		$a_01_3 = {6a 00 73 00 00 1d 2f 00 43 00 20 00 63 00 6f 00 70 00 79 00 20 00 2a 00 2e 00 6a 00 73 } //1
		$a_00_4 = {53 00 79 00 73 00 74 00 65 00 6d 00 2e 00 44 00 61 00 74 00 61 00 2e 00 4c 00 69 00 6e 00 71 00 2e 00 64 00 6c 00 6c 00 } //1 System.Data.Linq.dll
	condition:
		((#a_03_0  & 1)*2+(#a_01_1  & 1)*2+(#a_00_2  & 1)*1+(#a_01_3  & 1)*1+(#a_00_4  & 1)*1) >=7
 
}