
rule Worm_Win32_Vobfus_CF{
	meta:
		description = "Worm:Win32/Vobfus.CF,SIGNATURE_TYPE_PEHSTR_EXT,06 00 06 00 04 00 00 01 00 "
		
	strings :
		$a_03_0 = {50 ff 92 00 01 00 00 db e2 89 45 90 01 01 83 7d 90 01 01 00 7d 20 68 00 01 00 00 68 90 01 03 00 8b 4d 90 01 01 51 8b 55 90 01 01 52 ff 15 90 01 02 40 00 89 85 90 01 01 ff ff ff eb 0a c7 85 90 01 01 ff ff ff 00 00 00 00 8b 45 90 01 01 89 45 90 01 01 8d 4d 90 01 01 ff 15 90 01 02 40 00 c7 45 fc 05 00 00 00 8b 55 90 01 01 8d 4d 90 01 01 ff 15 90 01 02 40 00 90 00 } //05 00 
		$a_03_1 = {2b 48 14 c1 e1 04 8b 85 90 01 01 ff ff ff 8b 40 0c 03 c8 ff 15 90 01 02 40 00 8d 8d 90 01 02 ff ff 51 8b 15 90 01 03 00 52 a1 90 01 03 00 50 e8 90 01 04 89 85 90 01 02 ff ff 8d 8d 90 01 02 ff ff 51 6a 00 ff 15 90 01 02 40 00 90 00 } //01 00 
		$a_03_2 = {ff ff 02 00 00 00 8d 95 90 01 02 ff ff 8b 8d 90 01 02 ff ff b8 06 00 00 00 2b 41 14 c1 e0 04 8b 8d 90 01 02 ff ff 8b 49 0c 03 c8 ff 15 90 01 02 40 00 8d 95 90 01 02 ff ff 52 ff 15 90 01 02 40 00 90 00 } //01 00 
		$a_03_3 = {ff ff 02 00 00 00 8d 95 90 01 02 ff ff 8b 4d 90 01 01 b8 06 00 00 00 2b 41 14 c1 e0 04 8b 4d 90 01 01 8b 49 0c 03 c8 ff 15 90 01 02 40 00 8d 55 90 01 01 52 ff 15 90 01 02 40 00 90 00 } //00 00 
	condition:
		any of ($a_*)
 
}