
rule TrojanDownloader_BAT_AgentTesla_NHS_MTB{
	meta:
		description = "TrojanDownloader:BAT/AgentTesla.NHS!MTB,SIGNATURE_TYPE_PEHSTR_EXT,3d 00 3d 00 0a 00 00 01 00 "
		
	strings :
		$a_02_0 = {75 00 70 00 6c 00 6f 00 6f 00 64 00 65 00 72 00 2e 00 6e 00 65 00 74 00 2f 00 69 00 6d 00 67 00 2f 00 69 00 6d 00 61 00 67 00 65 00 2f 00 90 02 70 2e 00 70 00 6e 00 67 00 90 00 } //01 00 
		$a_02_1 = {75 70 6c 6f 6f 64 65 72 2e 6e 65 74 2f 69 6d 67 2f 69 6d 61 67 65 2f 90 02 70 2e 70 6e 67 90 00 } //01 00 
		$a_02_2 = {75 00 70 00 6c 00 6f 00 6f 00 64 00 65 00 72 00 2e 00 6e 00 65 00 74 00 2f 00 69 00 6d 00 67 00 2f 00 69 00 6d 00 61 00 67 00 65 00 2f 00 90 02 70 2e 00 6a 00 70 00 67 00 90 00 } //01 00 
		$a_02_3 = {75 70 6c 6f 6f 64 65 72 2e 6e 65 74 2f 69 6d 67 2f 69 6d 61 67 65 2f 90 02 70 2e 6a 70 67 90 00 } //0a 00 
		$a_03_4 = {44 00 6f 00 77 00 90 01 08 6e 00 6c 00 90 01 08 6f 00 61 00 64 00 44 00 90 01 08 61 00 74 00 61 00 90 00 } //0a 00 
		$a_01_5 = {47 65 74 4d 65 74 68 6f 64 } //0a 00 
		$a_01_6 = {52 65 70 6c 61 63 65 } //0a 00 
		$a_01_7 = {49 6e 76 6f 6b 65 } //0a 00 
		$a_01_8 = {57 65 62 43 6c 69 65 6e 74 } //0a 00 
		$a_01_9 = {47 65 74 54 79 70 65 } //00 00 
	condition:
		any of ($a_*)
 
}