
rule Ransom_Win32_Dexcrypt{
	meta:
		description = "Ransom:Win32/Dexcrypt,SIGNATURE_TYPE_PEHSTR_EXT,04 00 04 00 02 00 00 02 00 "
		
	strings :
		$a_01_0 = {20 20 20 2e 2d 27 20 20 20 20 20 20 27 2d 2e 0d 0a 20 20 2f 20 20 20 20 20 20 20 20 20 20 20 20 5c 20 0d 0a 20 7c 20 20 20 20 20 20 20 20 20 20 20 20 20 20 7c 0d 0a 20 7c 2c 20 20 2e 2d 2e 20 20 2e 2d 2e 20 20 2c 7c 0d 0a 20 7c 20 29 28 5f 5f 2f 20 20 5c 5f 5f 29 28 20 7c 0d 0a 20 7c 2f 20 20 20 20 20 2f 5c 20 20 20 20 20 5c 7c 0d 0a 20 28 5f 20 20 20 20 20 5e 5e 20 20 20 20 20 5f 29 0d 0a 20 20 5c 5f 5f 7c 49 49 49 49 49 49 7c 5f 5f 2f 0d 0a 20 20 20 7c 20 5c 49 49 49 49 49 49 2f 20 7c 0d 0a 20 20 20 5c 20 20 20 20 20 20 20 20 20 20 2f 0d 0a 20 20 20 20 } //02 00 
		$a_01_1 = {79 61 6f 20 6d 69 20 6d 61 20 67 65 69 20 33 30 20 79 75 61 6e 20 6a 69 61 20 71 71 20 32 30 35 35 39 36 35 30 36 38 } //00 00 
	condition:
		any of ($a_*)
 
}