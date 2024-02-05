
rule Trojan_Win32_IRCBot_RW_MTB{
	meta:
		description = "Trojan:Win32/IRCBot.RW!MTB,SIGNATURE_TYPE_PEHSTR_EXT,01 00 01 00 0d 00 00 01 00 "
		
	strings :
		$a_03_0 = {81 e9 7c 9b f5 d2 e8 90 01 04 09 c9 40 31 1f 41 81 e9 8d b9 a6 f5 47 b9 9d 57 57 3d 40 39 d7 75 90 00 } //01 00 
		$a_03_1 = {bf ce 17 4b 8b e8 90 01 04 49 b9 17 fb 59 81 51 59 31 16 29 ff 83 ec 04 c7 04 24 1a a7 75 97 8b 0c 24 83 90 00 } //01 00 
		$a_03_2 = {43 29 d3 e8 90 01 04 81 c2 ce 71 a1 f8 01 d2 31 07 42 09 d2 47 29 db 81 ea 12 5c 29 ed 4b 39 90 00 } //01 00 
		$a_03_3 = {81 ee ee f2 15 a4 49 e8 90 01 04 89 ce 31 17 81 e9 44 91 f5 86 09 f6 81 c7 01 00 00 00 81 ee 1a e6 06 04 39 90 00 } //01 00 
		$a_03_4 = {b8 7b c6 09 39 09 c1 e8 90 01 04 29 c0 49 31 3a 01 c0 81 c1 36 31 84 12 42 89 c1 81 c1 fc 97 57 43 39 90 00 } //01 00 
		$a_03_5 = {81 ea bb a5 4e ca 81 c0 01 00 00 00 01 c0 e8 90 01 04 81 ea 52 ff 19 14 09 c0 81 ea 1a e3 77 33 31 31 09 c2 42 41 90 00 } //01 00 
		$a_03_6 = {81 c7 8d cd 17 18 89 f6 89 f6 e8 90 01 04 56 5f 09 f6 4e 31 0a 68 90 01 04 5e 4f 81 ee f0 e7 e7 f1 90 00 } //01 00 
		$a_03_7 = {b8 ca 9f 4c 00 01 f6 e8 90 01 04 89 ce 31 02 81 ee 90 01 04 42 21 ce 29 ce 39 da 75 90 00 } //01 00 
		$a_03_8 = {09 f6 46 46 e8 90 01 04 21 f2 42 21 d2 31 38 81 c2 90 01 04 40 42 81 ea 90 01 04 42 39 d8 90 00 } //01 00 
		$a_03_9 = {ba 64 8b 5d 00 29 ff 4f e8 90 01 04 81 c1 6f 15 f2 a3 89 cf 31 13 09 cf 09 c9 81 c3 02 90 00 } //01 00 
		$a_03_10 = {81 e8 d6 45 1e 3c e8 90 01 04 4e 21 c0 81 e8 01 00 00 00 31 11 83 ec 04 c7 04 24 76 d9 9b 98 8b 04 24 83 c4 04 90 00 } //01 00 
		$a_03_11 = {4a 89 d6 e8 90 01 04 81 c6 01 00 00 00 81 c2 80 0f 3e 56 81 c6 24 cd 37 5c 31 3b 21 f6 46 89 d6 90 00 } //01 00 
		$a_03_12 = {bf 2d c9 4e 00 29 c2 e8 90 01 04 81 c0 51 99 d1 f6 31 3e 48 81 c6 01 00 00 00 81 c2 01 00 00 00 40 ba 21 4e e4 e8 90 00 } //00 00 
	condition:
		any of ($a_*)
 
}