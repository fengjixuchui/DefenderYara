
rule Trojan_Win32_Ekstak_QMAA_MTB{
	meta:
		description = "Trojan:Win32/Ekstak.QMAA!MTB,SIGNATURE_TYPE_PEHSTR_EXT,05 00 05 00 01 00 00 "
		
	strings :
		$a_03_0 = {55 8b ec 6a ff 68 ?? 89 65 00 68 ?? 7b 65 00 64 a1 00 00 00 00 50 64 89 25 00 00 00 00 83 ec 68 53 56 57 89 65 e8 33 db 89 5d fc 6a 02 ff 15 } //5
	condition:
		((#a_03_0  & 1)*5) >=5
 
}