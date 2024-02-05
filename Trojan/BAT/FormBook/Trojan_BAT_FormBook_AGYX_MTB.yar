
rule Trojan_BAT_FormBook_AGYX_MTB{
	meta:
		description = "Trojan:BAT/FormBook.AGYX!MTB,SIGNATURE_TYPE_PEHSTR_EXT,04 00 04 00 03 00 00 02 00 "
		
	strings :
		$a_03_0 = {02 07 02 8e 69 5d 02 07 02 8e 69 5d 91 06 07 06 8e 69 5d 91 61 28 90 01 03 0a 02 07 17 58 02 8e 69 5d 91 28 90 01 03 0a 59 20 00 01 00 00 58 20 00 01 00 00 5d d2 9c 00 07 15 58 90 00 } //01 00 
		$a_01_1 = {45 00 63 00 6f 00 42 00 6f 00 6f 00 73 00 74 00 } //01 00 
		$a_01_2 = {37 00 34 00 35 00 34 00 34 00 35 00 42 00 4a 00 35 00 43 00 48 00 4f 00 38 00 39 00 38 00 30 00 46 00 47 00 47 00 41 00 5a 00 37 00 } //00 00 
	condition:
		any of ($a_*)
 
}