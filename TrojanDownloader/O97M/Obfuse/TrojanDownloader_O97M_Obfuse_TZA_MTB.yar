
rule TrojanDownloader_O97M_Obfuse_TZA_MTB{
	meta:
		description = "TrojanDownloader:O97M/Obfuse.TZA!MTB,SIGNATURE_TYPE_MACROHSTR_EXT,05 00 05 00 05 00 00 "
		
	strings :
		$a_01_0 = {53 51 42 46 41 46 67 41 49 41 41 67 41 43 67 41 54 67 42 6c 41 48 63 41 4c 51 42 50 41 47 49 41 61 67 42 6c 41 47 4d 41 64 41 41 67 41 45 34 41 5a 51 42 30 41 43 34 41 56 77 42 6c 41 47 49 41 51 77 42 73 41 47 6b 41 5a 51 42 75 41 48 51 41 4b 51 41 75 41 45 51 41 62 77 42 33 41 47 34 41 62 41 42 76 41 47 45 41 5a 41 42 54 41 48 51 41 63 67 42 70 41 47 34 41 5a 77 41 75 41 45 6b 41 62 67 42 32 41 47 38 41 61 77 42 6c 41 43 67 41 4a 77 41 4e 41 41 6f 41 61 41 42 30 41 48 51 41 63 41 } //1 SQBFAFgAIAAgACgATgBlAHcALQBPAGIAagBlAGMAdAAgAE4AZQB0AC4AVwBlAGIAQwBsAGkAZQBuAHQAKQAuAEQAbwB3AG4AbABvAGEAZABTAHQAcgBpAG4AZwAuAEkAbgB2AG8AawBlACgAJwANAAoAaAB0AHQAcA
		$a_01_1 = {42 7a 41 44 6f 41 4c 77 41 76 41 47 59 41 61 51 42 79 41 47 55 41 59 67 42 68 41 48 4d 41 5a 51 42 7a 41 48 51 41 62 77 42 79 41 47 45 41 5a 77 42 6c 41 43 34 41 5a 77 42 76 41 47 38 41 5a 77 42 73 41 47 55 41 59 51 42 77 41 47 6b 41 63 77 41 75 41 47 4d 41 62 77 42 74 41 43 38 41 64 67 41 77 41 43 38 41 59 67 41 76 41 48 4d 41 63 41 42 68 41 47 30 41 4c 51 42 6a 41 44 49 41 4e 77 41 7a 41 47 45 41 4c 67 42 68 41 48 41 41 63 41 42 7a 41 48 41 41 62 77 42 30 41 43 34 41 59 77 42 76 41 47 30 41 4c 77 42 76 41 43 38 41 4d 51 41 31 41 43 30 41 4d 41 41 34 41 43 30 41 4d 67 41 77 41 44 49 41 4e 41 41 75 41 47 6f 41 63 41 42 6e 41 44 38 41 59 51 42 73 41 48 51 41 50 51 42 74 41 47 55 41 5a 41 42 70 41 47 45 41 } //1 BzADoALwAvAGYAaQByAGUAYgBhAHMAZQBzAHQAbwByAGEAZwBlAC4AZwBvAG8AZwBsAGUAYQBwAGkAcwAuAGMAbwBtAC8AdgAwAC8AYgAvAHMAcABhAG0ALQBjADIANwAzAGEALgBhAHAAcABzAHAAbwB0AC4AYwBvAG0ALwBvAC8AMQA1AC0AMAA4AC0AMgAwADIANAAuAGoAcABnAD8AYQBsAHQAPQBtAGUAZABpAGEA
		$a_01_2 = {4d 73 67 42 6f 78 28 69 44 78 6c 37 39 61 62 43 28 6e 53 30 34 64 47 4d 77 53 28 22 34 41 36 38 37 35 32 45 37 42 32 37 35 43 37 35 36 42 37 36 32 37 37 42 36 46 37 30 37 41 32 37 36 38 36 41 37 42 37 30 37 36 37 35 33 35 32 37 32 37 22 29 2c 20 6e 53 30 34 64 47 4d 77 53 28 22 33 37 22 29 29 20 26 20 69 44 78 6c 37 39 61 62 43 28 6e 53 30 34 64 47 4d 77 53 28 22 35 42 36 39 37 45 36 44 32 38 35 46 37 37 37 41 37 33 36 41 37 37 37 37 37 33 32 38 34 45 37 31 37 41 37 42 37 43 37 30 22 29 2c } //1 MsgBox(iDxl79abC(nS04dGMwS("4A68752E7B275C756B76277B6F707A27686A7B707675352727"), nS04dGMwS("37")) & iDxl79abC(nS04dGMwS("5B697E6D285F777A736A777773284E717A7B7C70"),
		$a_01_3 = {4d 69 64 28 4a 57 44 64 75 4b 34 75 5a 2c 20 49 31 50 72 56 38 73 50 62 2c 20 31 29 20 3d 20 43 68 72 28 41 73 63 28 4d 69 64 28 4a 57 44 64 75 4b 34 75 5a 2c 20 49 31 50 72 56 38 73 50 62 2c 20 31 29 29 20 2d 20 71 52 6d 59 57 35 61 6d 44 29 } //1 Mid(JWDduK4uZ, I1PrV8sPb, 1) = Chr(Asc(Mid(JWDduK4uZ, I1PrV8sPb, 1)) - qRmYW5amD)
		$a_01_4 = {50 75 62 6c 69 63 20 46 75 6e 63 74 69 6f 6e 20 69 44 78 6c 37 39 61 62 43 28 4a 57 44 64 75 4b 34 75 5a 20 41 73 20 53 74 72 69 6e 67 2c 20 71 52 6d 59 57 35 61 6d 44 20 41 73 20 49 6e 74 65 67 65 72 29 } //1 Public Function iDxl79abC(JWDduK4uZ As String, qRmYW5amD As Integer)
	condition:
		((#a_01_0  & 1)*1+(#a_01_1  & 1)*1+(#a_01_2  & 1)*1+(#a_01_3  & 1)*1+(#a_01_4  & 1)*1) >=5
 
}