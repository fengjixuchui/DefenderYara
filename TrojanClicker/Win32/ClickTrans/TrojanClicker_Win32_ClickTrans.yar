
rule TrojanClicker_Win32_ClickTrans{
	meta:
		description = "TrojanClicker:Win32/ClickTrans,SIGNATURE_TYPE_PEHSTR_EXT,05 00 05 00 05 00 00 01 00 "
		
	strings :
		$a_00_0 = {73 00 6f 00 66 00 74 00 77 00 61 00 72 00 65 00 5c 00 6d 00 79 00 74 00 72 00 61 00 6e 00 73 00 69 00 74 00 67 00 75 00 69 00 64 00 65 00 } //01 00 
		$a_02_1 = {68 00 74 00 74 00 70 00 3a 00 2f 00 2f 00 6d 00 79 00 2e 00 70 00 63 00 6d 00 61 00 70 00 73 00 2e 00 6e 00 65 00 74 00 2f 00 61 00 70 00 69 00 2f 00 72 00 65 00 70 00 6f 00 72 00 74 00 3f 00 74 00 79 00 70 00 65 00 3d 00 90 02 04 26 00 63 00 6f 00 64 00 65 00 3d 00 4d 00 79 00 54 00 72 00 61 00 6e 00 73 00 69 00 74 00 47 00 75 00 69 00 64 00 65 00 90 00 } //01 00 
		$a_02_2 = {64 00 6f 00 63 00 75 00 6d 00 65 00 6e 00 74 00 2e 00 67 00 65 00 74 00 45 00 6c 00 65 00 6d 00 65 00 6e 00 74 00 42 00 79 00 49 00 64 00 28 00 27 00 90 02 ff 27 00 29 00 2e 00 63 00 6c 00 69 00 63 00 6b 00 28 00 29 00 3b 00 90 00 } //01 00 
		$a_00_3 = {53 00 74 00 61 00 72 00 74 00 20 00 43 00 6c 00 69 00 63 00 6b 00 20 00 61 00 64 00 73 00 21 00 } //01 00 
		$a_00_4 = {43 00 6c 00 69 00 63 00 6b 00 20 00 78 00 20 00 3d 00 20 00 25 00 64 00 2c 00 79 00 20 00 3d 00 20 00 25 00 64 00 } //00 00 
		$a_00_5 = {5d 04 00 } //00 55 
	condition:
		any of ($a_*)
 
}