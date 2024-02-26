
rule Trojan_BAT_AsyncRat_CCGI_MTB{
	meta:
		description = "Trojan:BAT/AsyncRat.CCGI!MTB,SIGNATURE_TYPE_PEHSTR_EXT,07 00 07 00 07 00 00 01 00 "
		
	strings :
		$a_01_0 = {50 00 61 00 79 00 6c 00 6f 00 61 00 64 00 20 00 65 00 78 00 65 00 63 00 75 00 74 00 65 00 64 00 20 00 73 00 75 00 63 00 63 00 65 00 73 00 73 00 66 00 75 00 6c 00 6c 00 79 00 20 00 69 00 6e 00 20 00 70 00 72 00 6f 00 63 00 65 00 73 00 73 00 20 00 7b 00 30 00 7d 00 20 00 77 00 69 00 74 00 68 00 20 00 6e 00 65 00 77 00 20 00 69 00 6d 00 61 00 67 00 65 00 20 00 62 00 61 00 73 00 65 00 3a 00 20 00 30 00 78 00 7b 00 31 00 3a 00 58 00 7d 00 } //01 00  Payload executed successfully in process {0} with new image base: 0x{1:X}
		$a_01_1 = {53 00 74 00 61 00 72 00 74 00 42 00 61 00 73 00 65 00 3a 00 } //01 00  StartBase:
		$a_01_2 = {3a 00 45 00 6e 00 64 00 42 00 61 00 73 00 65 00 } //01 00  :EndBase
		$a_01_3 = {52 00 6f 00 61 00 6d 00 69 00 6e 00 67 00 5c 00 64 00 72 00 6f 00 70 00 70 00 65 00 64 00 2e 00 65 00 78 00 65 00 } //01 00  Roaming\dropped.exe
		$a_01_4 = {73 00 79 00 73 00 74 00 65 00 6d 00 33 00 32 00 5c 00 6e 00 6f 00 74 00 65 00 70 00 61 00 64 00 2e 00 65 00 78 00 65 00 } //01 00  system32\notepad.exe
		$a_01_5 = {70 61 79 6c 6f 61 64 } //01 00  payload
		$a_01_6 = {46 72 6f 6d 42 61 73 65 36 34 53 74 72 69 6e 67 } //00 00  FromBase64String
	condition:
		any of ($a_*)
 
}