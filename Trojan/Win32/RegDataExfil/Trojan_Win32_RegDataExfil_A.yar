
rule Trojan_Win32_RegDataExfil_A{
	meta:
		description = "Trojan:Win32/RegDataExfil.A,SIGNATURE_TYPE_CMDHSTR_EXT,15 00 15 00 09 00 00 "
		
	strings :
		$a_00_0 = {63 00 6d 00 64 00 20 00 2f 00 63 00 20 00 } //20 cmd /c 
		$a_00_1 = {6e 00 65 00 74 00 20 00 75 00 73 00 65 00 72 00 } //1 net user
		$a_00_2 = {6e 00 65 00 74 00 2e 00 65 00 78 00 65 00 20 00 75 00 73 00 65 00 72 00 } //1 net.exe user
		$a_00_3 = {6e 00 65 00 74 00 20 00 61 00 63 00 63 00 6f 00 75 00 6e 00 74 00 73 00 20 00 } //1 net accounts 
		$a_00_4 = {6e 00 65 00 74 00 2e 00 65 00 78 00 65 00 20 00 61 00 63 00 63 00 6f 00 75 00 6e 00 74 00 73 00 20 00 } //1 net.exe accounts 
		$a_00_5 = {6e 00 65 00 74 00 20 00 6c 00 6f 00 63 00 61 00 6c 00 67 00 72 00 6f 00 75 00 70 00 20 00 } //1 net localgroup 
		$a_00_6 = {6e 00 65 00 74 00 2e 00 65 00 78 00 65 00 20 00 6c 00 6f 00 63 00 61 00 6c 00 67 00 72 00 6f 00 75 00 70 00 20 00 } //1 net.exe localgroup 
		$a_00_7 = {6e 00 65 00 74 00 20 00 67 00 72 00 6f 00 75 00 70 00 20 00 } //1 net group 
		$a_00_8 = {6e 00 65 00 74 00 2e 00 65 00 78 00 65 00 20 00 67 00 72 00 6f 00 75 00 70 00 20 00 } //1 net.exe group 
	condition:
		((#a_00_0  & 1)*20+(#a_00_1  & 1)*1+(#a_00_2  & 1)*1+(#a_00_3  & 1)*1+(#a_00_4  & 1)*1+(#a_00_5  & 1)*1+(#a_00_6  & 1)*1+(#a_00_7  & 1)*1+(#a_00_8  & 1)*1) >=21
 
}