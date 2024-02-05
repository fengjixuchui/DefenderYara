
rule Ransom_Win32_Goopic_A_{
	meta:
		description = "Ransom:Win32/Goopic.A!!Goopic.gen!A,SIGNATURE_TYPE_ARHSTR_EXT,06 00 06 00 14 00 00 01 00 "
		
	strings :
		$a_80_0 = {5c 43 75 72 72 65 6e 74 56 65 72 73 69 6f 6e 5c 47 6f 6f 67 6c 65 50 69 63 } //\CurrentVersion\GooglePic  01 00 
		$a_80_1 = {5c 41 70 70 6c 69 63 61 74 69 6f 6e 20 44 61 74 61 5c 73 65 72 76 69 63 65 2e 65 78 65 } //\Application Data\service.exe  01 00 
		$a_80_2 = {00 25 64 64 20 25 64 68 20 25 64 6d 00 } //  01 00 
		$a_80_3 = {00 21 7e 21 3f 21 7e 21 00 } //  02 00 
		$a_80_4 = {57 69 6e 48 54 54 50 20 42 6f 74 4e 61 6d 65 2f 31 2e 30 } //WinHTTP BotName/1.0  01 00 
		$a_80_5 = {4b 65 79 20 72 65 63 65 69 76 65 64 20 21 20 44 65 63 72 79 70 74 69 6f 6e 20 73 74 61 72 74 69 6e 67 20 6e 6f 77 20 2e 2e 2e } //Key received ! Decryption starting now ...  01 00 
		$a_80_6 = {59 6f 75 72 20 66 69 6c 65 73 20 77 61 73 20 73 75 63 63 65 73 73 66 75 6c 6c 79 20 64 65 63 72 79 70 74 65 64 20 21 } //Your files was successfully decrypted !  01 00 
		$a_80_7 = {50 72 6f 63 65 64 75 72 65 20 63 6f 6d 70 6c 65 74 65 21 } //Procedure complete!  01 00 
		$a_80_8 = {64 65 6c 65 74 65 20 73 68 61 64 6f 77 73 20 2f 61 6c 6c 20 2f 71 75 69 65 74 } //delete shadows /all /quiet  01 00 
		$a_80_9 = {00 6c 6f 63 6b 65 64 2f 00 } //  01 00 
		$a_80_10 = {65 78 6f 64 75 73 39 39 2e 72 75 } //exodus99.ru  01 00 
		$a_80_11 = {53 45 4c 45 43 54 20 2a 20 46 52 4f 4d 20 57 69 6e 33 32 5f } //SELECT * FROM Win32_  01 00 
		$a_80_12 = {00 6f 75 74 2e 62 69 6e 00 } //  02 00 
		$a_80_13 = {62 64 35 38 33 63 61 36 33 39 38 61 33 30 37 35 38 65 65 66 34 35 32 35 62 38 62 39 31 65 64 30 36 32 35 61 34 33 64 65 } //bd583ca6398a30758eef4525b8b91ed0625a43de  02 00 
		$a_01_14 = {b8 64 6a 00 00 } //02 00 
		$a_03_15 = {6a 5a 68 00 08 00 00 ff 90 01 01 ff 15 90 01 07 d3 4d 62 10 90 00 } //02 00 
		$a_03_16 = {75 17 68 c0 27 09 00 c7 05 90 01 04 01 00 00 00 ff 15 90 01 04 eb ce 90 00 } //03 00 
		$a_03_17 = {ff d6 6a 05 6a 10 ff d7 50 6a 10 ff d7 50 ff 74 24 28 ff 74 24 28 6a ff ff 35 90 01 04 ff 15 90 01 04 ff 35 90 01 04 ff 15 90 01 04 ff 35 90 01 04 ff d6 68 60 ea 00 00 ff 15 90 01 04 e9 90 01 01 ff ff ff 90 00 } //02 00 
		$a_80_18 = {59 6f 75 72 20 66 69 6c 65 73 20 68 61 76 65 20 62 65 65 6e 20 63 72 79 70 74 65 64 } //Your files have been crypted  01 00 
		$a_80_19 = {49 6e 74 65 72 6e 65 74 45 78 70 6c 6f 72 65 72 2e 41 70 70 6c 69 63 61 74 69 6f 6e } //InternetExplorer.Application  00 00 
	condition:
		any of ($a_*)
 
}