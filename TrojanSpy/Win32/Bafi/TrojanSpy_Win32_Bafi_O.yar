
rule TrojanSpy_Win32_Bafi_O{
	meta:
		description = "TrojanSpy:Win32/Bafi.O,SIGNATURE_TYPE_PEHSTR_EXT,0c 00 0c 00 10 00 00 0a 00 "
		
	strings :
		$a_03_0 = {81 e1 0f 00 00 80 79 05 49 83 c9 f0 41 8b 90 02 02 88 4d 90 01 01 8a 4c 38 02 32 cb 90 00 } //0a 00 
		$a_01_1 = {25 0f 00 00 80 79 05 48 83 c8 f0 40 88 45 fe 8b 45 08 03 45 f8 0f b6 00 0f b6 4d ff 33 c1 } //02 00 
		$a_01_2 = {25 cd 77 13 9b d6 11 19 04 01 03 7b 65 b9 fb c2 } //02 00 
		$a_01_3 = {2f 19 8b db 37 0e 07 05 22 5b 49 01 6f 7d 19 13 } //02 00 
		$a_01_4 = {9d e1 13 15 05 04 03 01 22 5b 49 01 79 7d f5 5a } //02 00 
		$a_01_5 = {0b d3 8b 17 51 1b c1 b5 93 a1 87 f1 e8 d7 92 c6 } //02 00 
		$a_01_6 = {33 0b 13 e9 b5 e3 5d 83 93 a1 87 f1 e8 d8 92 c7 } //02 00 
		$a_01_7 = {34 0b 13 e9 b5 e4 5d 83 93 a1 87 f1 e9 d8 10 01 } //02 00 
		$a_01_8 = {14 50 6a 04 6a 00 ff 75 10 ff 75 fc e8 54 fd 00 } //02 00 
		$a_01_9 = {35 13 81 df 51 ee 09 65 11 0b eb f0 ee d9 0c 01 } //02 00 
		$a_01_10 = {36 12 13 17 01 ef 07 0b 6b 6e ec f9 26 07 0b 02 } //02 00 
		$a_01_11 = {38 13 11 17 01 ef 07 6e 6b 0c ec f7 26 07 0d 03 } //02 00 
		$a_01_12 = {93 8b be e9 b6 17 5b 83 b1 0b 87 f3 87 10 11 06 } //02 00 
		$a_01_13 = {0b b4 d0 6f a5 ae 05 09 74 4f f0 8c cd ac 2f ea } //02 00 
		$a_01_14 = {8e 83 bf e8 51 17 5b 83 b1 d3 87 f3 21 11 11 07 } //02 00 
		$a_00_15 = {43 00 3a 00 5c 00 57 00 49 00 4e 00 44 00 4f 00 57 00 53 00 5c 00 53 00 59 00 53 00 54 00 45 00 4d 00 33 00 32 00 5c 00 78 00 6d 00 6c 00 64 00 6d 00 5c 00 } //00 00 
		$a_00_16 = {5d 04 00 00 7f cd 02 80 5c 1e } //00 00 
	condition:
		any of ($a_*)
 
}