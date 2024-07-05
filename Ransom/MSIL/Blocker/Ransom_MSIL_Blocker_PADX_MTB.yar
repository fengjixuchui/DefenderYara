
rule Ransom_MSIL_Blocker_PADX_MTB{
	meta:
		description = "Ransom:MSIL/Blocker.PADX!MTB,SIGNATURE_TYPE_PEHSTR_EXT,04 00 04 00 04 00 00 01 00 "
		
	strings :
		$a_01_0 = {24 33 31 66 30 63 62 66 39 2d 34 31 66 37 2d 34 35 63 32 2d 39 34 37 35 2d 65 31 34 39 39 30 33 62 61 38 30 62 } //01 00  $31f0cbf9-41f7-45c2-9475-e149903ba80b
		$a_01_1 = {61 00 6d 00 6f 00 67 00 75 00 73 00 2e 00 65 00 78 00 65 00 2e 00 52 00 65 00 73 00 6f 00 75 00 72 00 63 00 65 00 } //01 00  amogus.exe.Resource
		$a_01_2 = {53 00 6f 00 66 00 74 00 77 00 61 00 72 00 65 00 5c 00 4d 00 69 00 63 00 72 00 6f 00 73 00 6f 00 66 00 74 00 5c 00 57 00 69 00 6e 00 64 00 6f 00 77 00 73 00 5c 00 43 00 75 00 72 00 72 00 65 00 6e 00 74 00 56 00 65 00 72 00 73 00 69 00 6f 00 6e 00 5c 00 52 00 75 00 6e 00 } //01 00  Software\Microsoft\Windows\CurrentVersion\Run
		$a_01_3 = {6d 00 73 00 70 00 61 00 69 00 6e 00 74 00 2e 00 65 00 78 00 65 00 } //00 00  mspaint.exe
	condition:
		any of ($a_*)
 
}