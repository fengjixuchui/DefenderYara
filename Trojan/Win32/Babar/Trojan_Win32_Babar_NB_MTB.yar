
rule Trojan_Win32_Babar_NB_MTB{
	meta:
		description = "Trojan:Win32/Babar.NB!MTB,SIGNATURE_TYPE_PEHSTR_EXT,08 00 08 00 06 00 00 "
		
	strings :
		$a_01_0 = {54 00 68 00 65 00 20 00 73 00 6f 00 66 00 74 00 77 00 61 00 72 00 65 00 20 00 79 00 6f 00 75 00 20 00 6a 00 75 00 73 00 74 00 20 00 65 00 78 00 65 00 63 00 75 00 74 00 65 00 64 00 20 00 69 00 73 00 20 00 63 00 6f 00 6e 00 73 00 69 00 64 00 65 00 72 00 65 00 64 00 20 00 28 00 6e 00 6f 00 20 00 73 00 6b 00 69 00 64 00 64 00 64 00 64 00 64 00 64 00 64 00 64 00 64 00 65 00 64 00 64 00 64 00 64 00 64 00 29 00 20 00 6d 00 61 00 6c 00 77 00 61 00 72 00 65 00 } //2 The software you just executed is considered (no skidddddddddeddddd) malware
		$a_01_1 = {54 00 48 00 45 00 20 00 43 00 52 00 45 00 41 00 54 00 4f 00 52 00 20 00 28 00 48 00 75 00 67 00 6f 00 70 00 61 00 6b 00 6f 00 29 00 20 00 49 00 53 00 20 00 4e 00 4f 00 54 00 20 00 52 00 45 00 53 00 50 00 4f 00 4e 00 53 00 49 00 42 00 4c 00 45 00 20 00 46 00 4f 00 52 00 20 00 41 00 4e 00 59 00 20 00 44 00 41 00 4d 00 41 00 47 00 45 00 20 00 4d 00 41 00 44 00 45 00 20 00 55 00 53 00 49 00 4e 00 47 00 20 00 54 00 48 00 49 00 53 00 20 00 28 00 4e 00 4f 00 53 00 4b 00 49 00 44 00 29 00 20 00 4d 00 41 00 4c 00 57 00 41 00 52 00 45 00 21 00 } //2 THE CREATOR (Hugopako) IS NOT RESPONSIBLE FOR ANY DAMAGE MADE USING THIS (NOSKID) MALWARE!
		$a_01_2 = {44 00 4f 00 20 00 59 00 4f 00 55 00 20 00 57 00 41 00 4e 00 54 00 20 00 54 00 4f 00 20 00 45 00 58 00 45 00 43 00 55 00 54 00 45 00 20 00 54 00 48 00 49 00 53 00 20 00 4d 00 41 00 4c 00 57 00 41 00 52 00 45 00 2c 00 20 00 52 00 45 00 53 00 55 00 4c 00 54 00 49 00 4e 00 47 00 20 00 49 00 4e 00 20 00 41 00 4e 00 20 00 55 00 4e 00 55 00 53 00 41 00 42 00 4c 00 45 00 20 00 4d 00 41 00 43 00 48 00 49 00 4e 00 45 00 } //1 DO YOU WANT TO EXECUTE THIS MALWARE, RESULTING IN AN UNUSABLE MACHINE
		$a_01_3 = {53 00 54 00 49 00 4c 00 4c 00 20 00 45 00 58 00 45 00 43 00 55 00 54 00 45 00 20 00 49 00 54 00 3f 00 } //1 STILL EXECUTE IT?
		$a_01_4 = {54 00 68 00 69 00 73 00 20 00 6d 00 61 00 6c 00 77 00 61 00 72 00 65 00 20 00 77 00 69 00 6c 00 6c 00 20 00 68 00 61 00 72 00 6d 00 20 00 79 00 6f 00 75 00 72 00 20 00 63 00 6f 00 6d 00 70 00 75 00 74 00 65 00 72 00 20 00 61 00 6e 00 64 00 20 00 6d 00 61 00 6b 00 65 00 73 00 20 00 69 00 74 00 20 00 75 00 6e 00 75 00 73 00 61 00 62 00 6c 00 65 00 } //1 This malware will harm your computer and makes it unusable
		$a_01_5 = {49 00 66 00 20 00 79 00 6f 00 75 00 20 00 61 00 72 00 65 00 20 00 73 00 65 00 65 00 69 00 6e 00 67 00 20 00 74 00 68 00 69 00 73 00 20 00 6d 00 65 00 73 00 73 00 61 00 67 00 65 00 20 00 77 00 69 00 74 00 68 00 6f 00 75 00 74 00 20 00 6b 00 6e 00 6f 00 77 00 69 00 6e 00 67 00 20 00 77 00 68 00 61 00 74 00 20 00 79 00 6f 00 75 00 20 00 6a 00 75 00 73 00 74 00 20 00 65 00 78 00 65 00 63 00 75 00 74 00 65 00 64 00 2c 00 20 00 73 00 69 00 6d 00 70 00 6c 00 79 00 20 00 70 00 72 00 65 00 73 00 73 00 20 00 4e 00 6f 00 20 00 61 00 6e 00 64 00 20 00 6e 00 6f 00 74 00 68 00 69 00 6e 00 67 00 20 00 77 00 69 00 6c 00 6c 00 20 00 68 00 61 00 70 00 70 00 65 00 6e 00 } //1 If you are seeing this message without knowing what you just executed, simply press No and nothing will happen
	condition:
		((#a_01_0  & 1)*2+(#a_01_1  & 1)*2+(#a_01_2  & 1)*1+(#a_01_3  & 1)*1+(#a_01_4  & 1)*1+(#a_01_5  & 1)*1) >=8
 
}