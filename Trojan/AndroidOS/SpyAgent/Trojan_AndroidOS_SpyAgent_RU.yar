
rule Trojan_AndroidOS_SpyAgent_RU{
	meta:
		description = "Trojan:AndroidOS/SpyAgent.RU,SIGNATURE_TYPE_DEXHSTR_EXT,06 00 06 00 03 00 00 02 00 "
		
	strings :
		$a_01_0 = {50 6f 4d 5f 61 64 6d } //02 00  PoM_adm
		$a_01_1 = {53 6d 73 53 65 6e 64 53 65 72 76 69 63 65 31 } //02 00  SmsSendService1
		$a_01_2 = {61 70 70 2f 67 6f 52 30 30 74 } //00 00  app/goR00t
	condition:
		any of ($a_*)
 
}