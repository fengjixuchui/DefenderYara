
rule Backdoor_BAT_WebShell_AL_MTB{
	meta:
		description = "Backdoor:BAT/WebShell.AL!MTB,SIGNATURE_TYPE_PEHSTR_EXT,05 00 05 00 04 00 00 02 00 "
		
	strings :
		$a_03_0 = {0a 0d 08 09 6f 90 01 01 00 00 0a 26 08 07 6f 90 01 01 00 00 0a 26 08 6f 90 01 01 00 00 0a 26 09 6f 90 01 01 00 00 0a 13 90 01 01 09 6f 90 01 01 00 00 0a 00 02 6f 90 00 } //02 00 
		$a_01_1 = {7b 00 70 00 61 00 79 00 6c 00 6f 00 61 00 64 00 53 00 74 00 6f 00 72 00 65 00 4e 00 61 00 6d 00 65 00 7d 00 } //01 00  {payloadStoreName}
		$a_01_2 = {33 00 63 00 36 00 65 00 30 00 62 00 38 00 61 00 39 00 63 00 31 00 35 00 32 00 32 00 34 00 61 00 } //01 00  3c6e0b8a9c15224a
		$a_01_3 = {33 00 30 00 65 00 37 00 32 00 34 00 63 00 66 00 63 00 31 00 62 00 37 00 62 00 32 00 38 00 63 00 } //00 00  30e724cfc1b7b28c
	condition:
		any of ($a_*)
 
}