
rule Trojan_Win32_DataCompress_V{
	meta:
		description = "Trojan:Win32/DataCompress.V,SIGNATURE_TYPE_CMDHSTR_EXT,01 00 01 00 0a 00 00 01 00 "
		
	strings :
		$a_02_0 = {70 00 6f 00 77 00 65 00 72 00 73 00 68 00 65 00 6c 00 6c 00 2e 00 65 00 78 00 65 00 90 02 10 2d 00 65 00 78 00 65 00 63 00 75 00 74 00 69 00 6f 00 6e 00 70 00 6f 00 6c 00 69 00 63 00 79 00 90 02 03 5c 00 62 00 79 00 70 00 61 00 73 00 73 00 90 02 02 2d 00 63 00 90 02 50 70 00 6f 00 77 00 65 00 72 00 73 00 68 00 65 00 6c 00 6c 00 90 02 02 69 00 6e 00 73 00 74 00 61 00 6c 00 6c 00 2d 00 6d 00 6f 00 64 00 75 00 6c 00 65 00 90 02 02 2d 00 6e 00 61 00 6d 00 65 00 90 02 02 5c 00 37 00 7a 00 69 00 70 00 34 00 70 00 6f 00 77 00 65 00 72 00 73 00 68 00 65 00 6c 00 6c 00 90 02 02 2d 00 76 00 65 00 72 00 62 00 6f 00 73 00 65 00 90 00 } //01 00 
		$a_02_1 = {70 00 6f 00 77 00 65 00 72 00 73 00 68 00 65 00 6c 00 6c 00 2e 00 65 00 78 00 65 00 90 02 10 69 00 6e 00 73 00 74 00 61 00 6c 00 6c 00 2d 00 6d 00 6f 00 64 00 75 00 6c 00 65 00 90 02 02 2d 00 6e 00 61 00 6d 00 65 00 90 02 02 37 00 7a 00 69 00 70 00 34 00 70 00 6f 00 77 00 65 00 72 00 73 00 68 00 65 00 6c 00 6c 00 90 02 02 2d 00 76 00 65 00 72 00 62 00 6f 00 73 00 65 00 90 00 } //01 00 
		$a_02_2 = {70 00 6f 00 77 00 65 00 72 00 73 00 68 00 65 00 6c 00 6c 00 2e 00 65 00 78 00 65 00 90 02 10 2d 00 65 00 78 00 65 00 63 00 75 00 74 00 69 00 6f 00 6e 00 70 00 6f 00 6c 00 69 00 63 00 79 00 90 02 03 5c 00 62 00 79 00 70 00 61 00 73 00 73 00 90 02 02 2d 00 63 00 90 02 50 5c 00 63 00 6f 00 6d 00 70 00 72 00 65 00 73 00 73 00 2d 00 37 00 7a 00 69 00 70 00 90 02 02 2d 00 70 00 61 00 74 00 68 00 90 02 02 24 00 65 00 6e 00 76 00 3a 00 90 02 10 2d 00 61 00 72 00 63 00 68 00 69 00 76 00 65 00 66 00 69 00 6c 00 65 00 6e 00 61 00 6d 00 65 00 90 00 } //01 00 
		$a_02_3 = {70 00 6f 00 77 00 65 00 72 00 73 00 68 00 65 00 6c 00 6c 00 2e 00 65 00 78 00 65 00 90 02 10 63 00 6f 00 6d 00 70 00 72 00 65 00 73 00 73 00 2d 00 61 00 72 00 63 00 68 00 69 00 76 00 65 00 90 02 10 2d 00 70 00 61 00 74 00 68 00 90 00 } //01 00 
		$a_02_4 = {70 00 6f 00 77 00 65 00 72 00 73 00 68 00 65 00 6c 00 6c 00 2e 00 65 00 78 00 65 00 90 02 10 63 00 6f 00 6d 00 70 00 72 00 65 00 73 00 73 00 2d 00 61 00 72 00 63 00 68 00 69 00 76 00 65 00 90 02 10 2d 00 6c 00 69 00 74 00 65 00 72 00 61 00 6c 00 70 00 61 00 74 00 68 00 90 00 } //01 00 
		$a_02_5 = {70 00 6f 00 77 00 65 00 72 00 73 00 68 00 65 00 6c 00 6c 00 2e 00 65 00 78 00 65 00 90 02 10 63 00 6f 00 6d 00 70 00 72 00 65 00 73 00 73 00 2d 00 37 00 7a 00 69 00 70 00 90 02 10 2d 00 70 00 61 00 74 00 68 00 90 00 } //01 00 
		$a_02_6 = {70 00 6f 00 77 00 65 00 72 00 73 00 68 00 65 00 6c 00 6c 00 2e 00 65 00 78 00 65 00 90 02 10 63 00 6f 00 6d 00 70 00 72 00 65 00 73 00 73 00 2d 00 37 00 7a 00 69 00 70 00 90 02 10 2d 00 61 00 72 00 63 00 68 00 69 00 76 00 65 00 66 00 69 00 6c 00 65 00 6e 00 61 00 6d 00 65 00 90 00 } //01 00 
		$a_02_7 = {70 00 6f 00 77 00 65 00 72 00 73 00 68 00 65 00 6c 00 6c 00 2e 00 65 00 78 00 65 00 90 02 02 61 00 64 00 64 00 2d 00 74 00 79 00 70 00 65 00 78 00 39 00 30 00 02 02 2d 00 61 00 73 00 73 00 65 00 6d 00 62 00 6c 00 79 00 6e 00 61 00 6d 00 65 00 90 02 02 73 00 79 00 73 00 74 00 65 00 6d 00 2e 00 69 00 6f 00 2e 00 63 00 6f 00 6d 00 70 00 72 00 65 00 73 00 73 00 69 00 6f 00 6e 00 2e 00 66 00 69 00 6c 00 65 00 73 00 79 00 73 00 74 00 65 00 6d 00 90 00 } //01 00 
		$a_02_8 = {70 00 6f 00 77 00 65 00 72 00 73 00 68 00 65 00 6c 00 6c 00 2e 00 65 00 78 00 65 00 90 02 02 69 00 6e 00 76 00 6f 00 6b 00 65 00 2d 00 63 00 69 00 6d 00 6d 00 65 00 74 00 68 00 6f 00 64 00 90 02 02 2d 00 71 00 75 00 65 00 72 00 79 00 90 02 02 24 00 71 00 75 00 65 00 72 00 79 00 90 02 02 2d 00 6d 00 65 00 74 00 68 00 6f 00 64 00 6e 00 61 00 6d 00 65 00 90 02 02 63 00 6f 00 6d 00 70 00 72 00 65 00 73 00 90 00 } //01 00 
		$a_02_9 = {70 00 6f 00 77 00 65 00 72 00 73 00 68 00 65 00 6c 00 6c 00 2e 00 65 00 78 00 65 00 90 02 02 67 00 65 00 74 00 2d 00 63 00 6f 00 6d 00 6d 00 61 00 6e 00 64 00 90 02 02 2d 00 6d 00 6f 00 64 00 75 00 6c 00 65 00 90 02 05 5c 00 37 00 7a 00 69 00 70 00 34 00 70 00 6f 00 77 00 65 00 72 00 73 00 68 00 65 00 6c 00 6c 00 90 00 } //00 00 
	condition:
		any of ($a_*)
 
}