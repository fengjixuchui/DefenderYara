
rule Trojan_Win32_Zenpak_SHZC_MTB{
	meta:
		description = "Trojan:Win32/Zenpak.SHZC!MTB,SIGNATURE_TYPE_PEHSTR_EXT,03 00 03 00 01 00 00 "
		
	strings :
		$a_03_0 = {89 e5 8a 45 0c 8a 4d 08 c7 05 ?? ?? ?? ?? ?? ?? ?? ?? 88 0d ?? ?? ?? ?? a2 ?? ?? ?? ?? 30 c8 a2 ?? ?? ?? ?? 0f b6 c0 5d } //3
	condition:
		((#a_03_0  & 1)*3) >=3
 
}