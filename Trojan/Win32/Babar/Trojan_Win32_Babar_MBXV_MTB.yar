
rule Trojan_Win32_Babar_MBXV_MTB{
	meta:
		description = "Trojan:Win32/Babar.MBXV!MTB,SIGNATURE_TYPE_PEHSTR_EXT,01 00 01 00 01 00 00 "
		
	strings :
		$a_03_0 = {55 8b ec 6a ff 68 ?? c2 65 00 68 ?? 5f 65 00 64 a1 00 00 00 00 50 64 89 25 00 00 00 00 83 ec 58 53 56 57 89 65 e8 ff 15 ?? c2 65 00 33 d2 8a d4 89 15 } //1
	condition:
		((#a_03_0  & 1)*1) >=1
 
}