
rule Ransom_MSIL_GhostHacker_YAA_MTB{
	meta:
		description = "Ransom:MSIL/GhostHacker.YAA!MTB,SIGNATURE_TYPE_PEHSTR_EXT,0b 00 0b 00 0b 00 00 01 00 "
		
	strings :
		$a_01_0 = {77 61 79 20 74 6f 20 72 65 63 6f 76 65 72 20 79 6f 75 72 20 66 69 6c 65 73 } //01 00  way to recover your files
		$a_01_1 = {77 69 74 68 6f 75 74 20 6f 75 72 20 64 65 63 72 79 70 74 69 6f 6e 20 73 65 72 76 69 63 65 } //01 00  without our decryption service
		$a_01_2 = {46 69 6c 65 73 20 41 72 65 20 45 6e 63 72 79 70 74 65 64 20 2c 4e 6f 43 72 79 } //01 00  Files Are Encrypted ,NoCry
		$a_01_3 = {4e 6f 43 72 79 2e 4d 79 2e 52 65 73 6f 75 72 63 65 73 } //01 00  NoCry.My.Resources
		$a_01_4 = {67 65 74 5f 62 69 74 63 6f 69 6e } //01 00  get_bitcoin
		$a_01_5 = {56 00 49 00 52 00 54 00 55 00 41 00 4c 00 } //01 00  VIRTUAL
		$a_01_6 = {76 00 6d 00 77 00 61 00 72 00 65 00 } //01 00  vmware
		$a_01_7 = {56 00 69 00 72 00 74 00 75 00 61 00 6c 00 42 00 6f 00 78 00 } //01 00  VirtualBox
		$a_01_8 = {44 00 65 00 63 00 72 00 79 00 70 00 74 00 69 00 6f 00 6e 00 20 00 4b 00 65 00 79 00 } //01 00  Decryption Key
		$a_01_9 = {43 00 6f 00 6e 00 74 00 61 00 63 00 74 00 20 00 4d 00 65 00 20 00 4f 00 6e 00 20 00 4d 00 79 00 20 00 45 00 6d 00 61 00 69 00 6c 00 } //01 00  Contact Me On My Email
		$a_01_10 = {47 00 68 00 6f 00 73 00 74 00 48 00 61 00 63 00 6b 00 65 00 72 00 5f 00 52 00 65 00 61 00 64 00 4d 00 65 00 2e 00 68 00 74 00 6d 00 6c 00 } //00 00  GhostHacker_ReadMe.html
	condition:
		any of ($a_*)
 
}