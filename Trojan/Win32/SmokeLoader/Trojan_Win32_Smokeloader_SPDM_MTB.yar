
rule Trojan_Win32_Smokeloader_SPDM_MTB{
	meta:
		description = "Trojan:Win32/Smokeloader.SPDM!MTB,SIGNATURE_TYPE_PEHSTR_EXT,04 00 04 00 04 00 00 01 00 "
		
	strings :
		$a_01_0 = {6d 00 65 00 6e 00 6f 00 67 00 65 00 63 00 20 00 7a 00 65 00 7a 00 61 00 68 00 61 00 73 00 20 00 77 00 6f 00 74 00 65 00 68 00 75 00 76 00 6f 00 62 00 65 00 66 00 75 00 6b 00 69 00 6b 00 20 00 6a 00 6f 00 76 00 6f 00 76 00 65 00 62 00 75 00 78 00 61 00 64 00 75 00 74 00 6f 00 62 00 65 00 77 00 65 00 68 00 69 00 73 00 61 00 79 00 65 00 78 00 6f 00 66 00 6f 00 20 00 6d 00 75 00 73 00 65 00 72 00 69 00 6c 00 65 00 66 00 65 00 6b 00 61 00 6a 00 } //01 00  menogec zezahas wotehuvobefukik jovovebuxadutobewehisayexofo muserilefekaj
		$a_01_1 = {64 00 65 00 79 00 75 00 68 00 69 00 62 00 6f 00 78 00 6f 00 77 00 69 00 20 00 77 00 6f 00 63 00 69 00 74 00 61 00 78 00 61 00 68 00 75 00 74 00 65 00 78 00 6f 00 64 00 65 00 7a 00 75 00 72 00 61 00 20 00 64 00 75 00 74 00 75 00 78 00 6f 00 } //01 00  deyuhiboxowi wocitaxahutexodezura dutuxo
		$a_01_2 = {66 00 75 00 77 00 6f 00 7a 00 69 00 76 00 65 00 7a 00 6f 00 6a 00 61 00 66 00 69 00 20 00 72 00 69 00 62 00 69 00 78 00 61 00 78 00 69 00 6c 00 75 00 6b 00 65 00 6e 00 75 00 74 00 69 00 6d 00 20 00 6e 00 75 00 68 00 6f 00 72 00 61 00 62 00 69 00 6e 00 65 00 78 00 65 00 6b 00 6f 00 62 00 75 00 74 00 61 00 6b 00 69 00 72 00 61 00 72 00 65 00 64 00 65 00 72 00 65 00 6a 00 65 00 } //01 00  fuwozivezojafi ribixaxilukenutim nuhorabinexekobutakiraredereje
		$a_01_3 = {73 00 65 00 76 00 69 00 68 00 6f 00 6e 00 6f 00 66 00 61 00 68 00 65 00 6b 00 75 00 73 00 65 00 64 00 65 00 6a 00 6f 00 6e 00 75 00 6c 00 69 00 6b 00 20 00 67 00 61 00 62 00 6f 00 66 00 75 00 67 00 75 00 70 00 65 00 74 00 69 00 67 00 65 00 64 00 61 00 63 00 65 00 67 00 61 00 63 00 6f 00 70 00 75 00 78 00 61 00 63 00 69 00 79 00 20 00 7a 00 65 00 67 00 61 00 6d 00 65 00 66 00 75 00 } //00 00  sevihonofahekusedejonulik gabofugupetigedacegacopuxaciy zegamefu
	condition:
		any of ($a_*)
 
}