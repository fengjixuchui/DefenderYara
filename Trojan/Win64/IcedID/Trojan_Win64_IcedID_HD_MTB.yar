
rule Trojan_Win64_IcedID_HD_MTB{
	meta:
		description = "Trojan:Win64/IcedID.HD!MTB,SIGNATURE_TYPE_PEHSTR_EXT,07 00 05 00 02 00 00 "
		
	strings :
		$a_03_0 = {0f b6 44 04 ?? 8b 4c 24 ?? 3a c9 0f 84 ?? ?? ?? ?? 33 c1 48 63 4c 24 ?? e9 ?? ?? ?? ?? 25 ?? ?? ?? ?? 2b c2 e9 ?? ?? ?? ?? 48 63 4c 24 ?? 0f b6 4c 0c ?? e9 ?? ?? ?? ?? 81 7c 24 ?? ?? ?? ?? ?? 0f 8d } //5
		$a_03_1 = {48 8b c1 e9 ?? ?? ?? ?? 48 ff c1 8b 54 24 ?? eb ?? 48 f7 f9 48 8b c2 eb } //2
	condition:
		((#a_03_0  & 1)*5+(#a_03_1  & 1)*2) >=5
 
}