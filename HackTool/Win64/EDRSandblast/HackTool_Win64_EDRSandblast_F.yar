
rule HackTool_Win64_EDRSandblast_F{
	meta:
		description = "HackTool:Win64/EDRSandblast.F,SIGNATURE_TYPE_PEHSTR_EXT,04 00 04 00 04 00 00 "
		
	strings :
		$a_01_0 = {5b 00 21 00 5d 00 20 00 45 00 52 00 52 00 4f 00 52 00 20 00 53 00 65 00 72 00 76 00 69 00 63 00 65 00 49 00 6e 00 73 00 74 00 61 00 6c 00 6c 00 20 00 3b 00 20 00 4f 00 70 00 65 00 6e 00 53 00 43 00 4d 00 61 00 6e 00 61 00 67 00 65 00 72 00 28 00 63 00 72 00 65 00 61 00 74 00 65 00 29 00 20 00 28 00 30 00 78 00 25 00 30 00 38 00 78 00 29 00 } //1 [!] ERROR ServiceInstall ; OpenSCManager(create) (0x%08x)
		$a_01_1 = {5b 00 2b 00 5d 00 20 00 27 00 25 00 73 00 27 00 20 00 73 00 65 00 72 00 76 00 69 00 63 00 65 00 20 00 41 00 43 00 4c 00 20 00 63 00 6f 00 6e 00 66 00 69 00 67 00 75 00 72 00 65 00 64 00 20 00 74 00 6f 00 20 00 66 00 6f 00 72 00 20 00 45 00 76 00 65 00 72 00 79 00 6f 00 6e 00 65 00 } //1 [+] '%s' service ACL configured to for Everyone
		$a_01_2 = {5b 00 21 00 5d 00 20 00 45 00 52 00 52 00 4f 00 52 00 20 00 53 00 65 00 72 00 76 00 69 00 63 00 65 00 55 00 6e 00 69 00 6e 00 73 00 74 00 61 00 6c 00 6c 00 20 00 3b 00 20 00 53 00 65 00 72 00 76 00 69 00 63 00 65 00 55 00 6e 00 69 00 6e 00 73 00 74 00 61 00 6c 00 6c 00 20 00 28 00 30 00 78 00 25 00 30 00 38 00 78 00 29 00 } //1 [!] ERROR ServiceUninstall ; ServiceUninstall (0x%08x)
		$a_01_3 = {5b 00 2a 00 5d 00 20 00 27 00 25 00 73 00 27 00 20 00 73 00 65 00 72 00 76 00 69 00 63 00 65 00 20 00 63 00 61 00 6e 00 6e 00 6f 00 74 00 20 00 61 00 63 00 63 00 65 00 70 00 74 00 20 00 63 00 6f 00 6e 00 74 00 72 00 6f 00 6c 00 20 00 6d 00 65 00 73 00 73 00 61 00 67 00 65 00 73 00 20 00 61 00 74 00 20 00 74 00 68 00 69 00 73 00 20 00 74 00 69 00 6d 00 65 00 2c 00 20 00 77 00 61 00 69 00 74 00 69 00 6e 00 67 00 2e 00 2e 00 2e 00 } //1 [*] '%s' service cannot accept control messages at this time, waiting...
	condition:
		((#a_01_0  & 1)*1+(#a_01_1  & 1)*1+(#a_01_2  & 1)*1+(#a_01_3  & 1)*1) >=4
 
}