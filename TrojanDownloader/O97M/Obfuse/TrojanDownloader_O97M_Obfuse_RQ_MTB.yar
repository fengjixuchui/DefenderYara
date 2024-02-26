
rule TrojanDownloader_O97M_Obfuse_RQ_MTB{
	meta:
		description = "TrojanDownloader:O97M/Obfuse.RQ!MTB,SIGNATURE_TYPE_MACROHSTR_EXT,04 00 04 00 04 00 00 01 00 "
		
	strings :
		$a_03_0 = {41 70 70 6c 69 63 61 74 69 6f 6e 2e 53 74 61 72 74 75 70 50 61 74 68 20 26 20 90 02 08 28 22 20 49 5c 2e 2e 5c 2e 20 49 2e 22 20 26 20 22 20 49 5c 2e 2e 20 49 5c 2e 2e 20 49 5c 2e 20 49 2e 22 29 90 00 } //01 00 
		$a_03_1 = {22 20 49 65 20 49 78 20 49 70 6c 6f 20 49 72 65 20 49 72 2e 65 20 49 78 20 49 65 20 22 29 20 26 20 43 68 72 28 90 02 09 20 2b 20 31 29 20 26 20 90 02 09 20 26 20 43 68 72 28 90 1b 00 20 2b 20 31 29 90 00 } //01 00 
		$a_03_2 = {46 72 4b 6f 6e 65 72 74 20 26 20 22 5c 22 20 26 20 4d 65 2e 4e 61 6d 65 20 26 20 90 02 09 20 26 20 22 2e 90 02 08 2e 22 90 00 } //01 00 
		$a_03_3 = {52 65 70 6c 61 63 65 28 90 01 01 2c 20 22 20 49 22 2c 20 22 22 29 90 00 } //00 00 
	condition:
		any of ($a_*)
 
}