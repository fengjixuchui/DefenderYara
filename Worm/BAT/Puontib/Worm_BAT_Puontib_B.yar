
rule Worm_BAT_Puontib_B{
	meta:
		description = "Worm:BAT/Puontib.B,SIGNATURE_TYPE_PEHSTR_EXT,03 00 03 00 03 00 00 01 00 "
		
	strings :
		$a_03_0 = {70 11 05 11 05 72 90 01 02 00 70 6f 90 01 01 00 00 0a 6f 90 01 01 00 00 0a 72 90 01 02 00 70 7e 90 01 01 00 00 0a 6f 90 01 01 00 00 0a 72 90 01 02 00 70 28 90 01 01 00 00 0a 13 90 01 01 28 90 00 } //01 00 
		$a_03_1 = {28 37 00 00 0a 6f 38 00 00 0a 16 9a 0c 28 2e 00 00 0a 0b 72 90 01 02 00 70 72 90 01 02 00 70 28 39 00 00 0a 72 90 01 02 00 70 28 3a 00 00 0a 0a 06 1f 10 28 90 00 } //01 00 
		$a_03_2 = {1b 28 31 00 00 0a 72 90 01 02 00 70 28 32 00 00 0a 73 55 00 00 0a 0a 06 6f 56 00 00 0a 16 6a 18 6f 57 00 00 0a 26 06 72 90 00 } //00 00 
		$a_00_3 = {5d 04 } //00 00 
	condition:
		any of ($a_*)
 
}