
rule Ransom_MSIL_Filecoder_PAB_MTB{
	meta:
		description = "Ransom:MSIL/Filecoder.PAB!MTB,SIGNATURE_TYPE_PEHSTR,05 00 05 00 03 00 00 "
		
	strings :
		$a_01_0 = {59 00 6f 00 75 00 20 00 62 00 65 00 63 00 61 00 6d 00 65 00 20 00 76 00 69 00 63 00 74 00 69 00 6d 00 20 00 6f 00 66 00 20 00 74 00 68 00 65 00 20 00 6b 00 65 00 79 00 67 00 72 00 6f 00 75 00 70 00 37 00 37 00 37 00 20 00 52 00 41 00 4e 00 53 00 4f 00 4d 00 57 00 41 00 52 00 45 00 21 00 } //2 You became victim of the keygroup777 RANSOMWARE!
		$a_01_1 = {41 00 6c 00 6c 00 20 00 79 00 6f 00 75 00 72 00 20 00 66 00 69 00 6c 00 65 00 73 00 20 00 61 00 72 00 65 00 20 00 73 00 74 00 6f 00 6c 00 65 00 6e 00 20 00 61 00 6e 00 64 00 20 00 65 00 6e 00 63 00 72 00 79 00 70 00 74 00 65 00 64 00 } //2 All your files are stolen and encrypted
		$a_01_2 = {53 00 4f 00 46 00 54 00 57 00 41 00 52 00 45 00 5c 00 4d 00 69 00 63 00 72 00 6f 00 73 00 6f 00 66 00 74 00 5c 00 57 00 69 00 6e 00 64 00 6f 00 77 00 73 00 5c 00 43 00 75 00 72 00 72 00 65 00 6e 00 74 00 56 00 65 00 72 00 73 00 69 00 6f 00 6e 00 5c 00 52 00 75 00 6e 00 } //1 SOFTWARE\Microsoft\Windows\CurrentVersion\Run
	condition:
		((#a_01_0  & 1)*2+(#a_01_1  & 1)*2+(#a_01_2  & 1)*1) >=5
 
}