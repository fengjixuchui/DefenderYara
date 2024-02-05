
rule Trojan_Win32_Nymaim_VC_MTB{
	meta:
		description = "Trojan:Win32/Nymaim.VC!MTB,SIGNATURE_TYPE_PEHSTR_EXT,0a 00 0a 00 07 00 00 05 00 "
		
	strings :
		$a_01_0 = {50 5a 52 6a ff 5b 23 1f 8d 7f 04 83 eb 2e c1 cb 08 29 cb 4b 53 59 c1 c1 } //05 00 
		$a_01_1 = {46 58 5a 73 3d 47 06 55 40 5e 50 d7 8b b9 c1 f0 dc 29 02 45 7c b9 af } //01 00 
		$a_01_2 = {8b 74 24 04 55 e8 c8 05 00 00 58 50 ff d6 8b d8 e8 f0 05 00 00 5d 8b f5 b9 11 00 00 00 ad e8 cc 02 00 00 89 46 fc e2 f5 8b 45 2c 80 38 8b 75 } //01 00 
		$a_01_3 = {ad 50 83 e8 00 35 ac 32 41 95 2b c2 5a ab 83 e9 03 e2 db 61 c3 66 33 f6 66 ba 4d 5a } //01 00 
		$a_01_4 = {57 56 53 e8 10 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 e8 13 00 00 00 5b 5e 5f c3 } //01 00 
		$a_02_5 = {8a 1c 2f 81 e2 00 ff ff ff 0f b6 c1 09 c2 89 15 90 01 04 89 15 90 01 04 30 cb 03 54 24 18 c1 c2 08 88 1c 2f 90 00 } //01 00 
		$a_01_6 = {8b 4e 0c 8b 44 31 24 85 c0 74 02 89 07 8d 56 10 03 54 31 20 50 } //00 00 
		$a_00_7 = {7e } //15 00 
	condition:
		any of ($a_*)
 
}