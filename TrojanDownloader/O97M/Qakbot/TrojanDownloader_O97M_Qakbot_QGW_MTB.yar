
rule TrojanDownloader_O97M_Qakbot_QGW_MTB{
	meta:
		description = "TrojanDownloader:O97M/Qakbot.QGW!MTB,SIGNATURE_TYPE_MACROHSTR_EXT,03 00 03 00 03 00 00 01 00 "
		
	strings :
		$a_03_0 = {5c 49 45 55 44 4c 4b 2e 43 4a 46 90 02 04 67 69 66 90 02 04 72 75 6e 90 02 04 64 6c 6c 33 90 00 } //01 00 
		$a_01_1 = {44 6c 6c 52 } //01 00 
		$a_01_2 = {65 72 53 65 72 76 65 72 } //00 00 
	condition:
		any of ($a_*)
 
}