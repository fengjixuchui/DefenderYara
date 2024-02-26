
rule Trojan_BAT_RaspberryRobin_MBEZ_MTB{
	meta:
		description = "Trojan:BAT/RaspberryRobin.MBEZ!MTB,SIGNATURE_TYPE_PEHSTR_EXT,01 00 01 00 05 00 00 01 00 "
		
	strings :
		$a_01_0 = {74 76 6d 63 6f 73 78 66 74 49 34 30 36 2e 64 6c 6c 00 6d 73 63 6f 72 6c 69 62 00 6d 73 6b 65 79 72 } //01 00 
		$a_01_1 = {43 49 4d 57 73 6f 66 74 65 41 70 69 74 61 6c 78 00 6e 65 74 62 74 73 67 55 49 47 58 61 6d 6c 4a 50 } //01 00 
		$a_01_2 = {73 6b 64 6c 6c 32 45 6e 73 76 63 00 4b 42 44 56 64 65 77 65 72 56 50 53 52 45 53 00 6d } //01 00 
		$a_01_3 = {61 74 69 74 6d 47 57 79 62 45 45 78 66 70 6c 77 66 00 6c 6d 68 73 6e 54 57 73 72 32 63 } //01 00 
		$a_01_4 = {61 76 69 66 73 6f 66 74 59 50 6f 77 47 57 4a 00 64 6e 73 6d 6b 57 69 6e 64 6f 77 54 44 49 } //00 00  癡晩潳瑦偙睯均J湤浳坫湩潤呷䥄
	condition:
		any of ($a_*)
 
}