
rule _PseudoThreat_c0000c2d{
	meta:
		description = "!PseudoThreat_c0000c2d,SIGNATURE_TYPE_PEHSTR_EXT,06 00 05 00 08 00 00 "
		
	strings :
		$a_00_0 = {20 69 73 20 69 6e 66 65 63 74 65 64 } //1  is infected
		$a_02_1 = {55 8b ec 81 c4 18 fe ff ff [0-03] e8 ?? ?? ?? ?? 83 f8 00 0f 85 ?? 00 00 00 } //1
		$a_02_2 = {30 fe ff ff 00 8d 85 18 fe ff ff 50 6a 01 e8 ?? ?? ?? ?? [0-04] 0b c0 75 00 } //1
		$a_00_3 = {6a 06 6a 00 6a 00 6a 00 6a 00 6a ff ff 75 08 e8 } //1
		$a_02_4 = {75 1e 6a 64 ff 35 ?? ?? ?? ?? e8 ?? ?? ?? ?? a3 ?? ?? ?? ?? c7 05 ?? ?? ?? ?? 01 00 00 00 eb 1c 6a 66 ff 35 ?? ?? ?? ?? e8 ?? ?? ?? ?? a3 ?? ?? ?? ?? c7 05 ?? ?? ?? ?? 00 00 00 00 68 ?? ?? ?? ?? 6a 01 e8 ?? ?? ?? ?? c9 c2 10 00 } //1
		$a_02_5 = {68 e0 93 04 00 68 ?? ?? ?? ?? ff 75 08 e8 ?? ?? ?? ?? e9 ?? 00 00 00 81 7d 14 03 02 00 00 74 ?? 81 7d 14 04 02 00 00 74 ?? 81 7d 14 01 02 00 00 74 ?? 81 7d 14 05 04 00 00 } //1
		$a_02_6 = {55 8b ec 81 c4 00 fe ff ff 51 56 57 68 ff 00 00 00 8d ?? 01 ff ff ff ?? e8 ?? ?? ?? ?? 8d 85 02 fe ff ff 50 6a 00 68 ?? ?? ?? ?? 8d 85 01 ff ff ff 50 e8 ?? ?? ?? ?? 8d 85 02 fe ff ff 50 e8 ?? ?? ?? ?? 8d 85 02 fe ff ff 50 ff 15 ?? ?? ?? ?? 83 c4 04 b9 03 00 00 00 2b c1 8d bd 02 fe ff ff } //1
		$a_02_7 = {8d 85 02 fe ff ff 50 ff 75 08 e8 ?? ?? ?? ?? 83 f8 01 75 30 } //1
	condition:
		((#a_00_0  & 1)*1+(#a_02_1  & 1)*1+(#a_02_2  & 1)*1+(#a_00_3  & 1)*1+(#a_02_4  & 1)*1+(#a_02_5  & 1)*1+(#a_02_6  & 1)*1+(#a_02_7  & 1)*1) >=5
 
}